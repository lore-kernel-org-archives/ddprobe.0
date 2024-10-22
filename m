Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC4C14A08E
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729636554; cv=none; b=l1mo5P/ueE3wgMcZg8Q3uyJuyWJYYGqgChl4SOavFu1zgyFtVW602suvSq8z434oyVG936fLlXqRrGqW4HyVGIEI9bEkgY4n7OMk2ALA+8hzEk86/5iYyPlZACpI9XHY1Y/nkOq61F828cY8frYw3D0Xm6geHMd26Z7IxfQof1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729636554; c=relaxed/simple;
	bh=q8zBWFo9ovsmereDIQzkHPYzOHXI91j8OTuh40ZqJBU=;
	h=To:Subject:From:Message-Id:Date; b=rft/Hm8iBZgwp1CAGO0L5aL8z72oNrZO4hbnt1oYseXYGbqRI2Qlc+6e2pPxVg8yXFcowcDnJE44WkPpNhVJz1M1XE8R1WsDzr75S0l/x7CZbYw6p8Z87LVr52+IurtH78BvpF2G9zYzulIrGCUoN1oBGhYIOjkqpGUNVjCck24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAvCozH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAvCozH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA28DC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729636553;
	bh=q8zBWFo9ovsmereDIQzkHPYzOHXI91j8OTuh40ZqJBU=;
	h=To:Subject:From:Date:From;
	b=kAvCozH2bsGDgesPMrIKohBst7cC85hXfBvDyMI2pCF+X57Sqd9FuIBVKpLimZUxG
	 SomJ5rGvthBZCFIBmM80iFMKoqSctqtVnBYEXze4pzs6p5bKEYmdsiR0T6yvhD5rQQ
	 zBKwEmDTg5Uv0SvTRnLuC6QA1PiRF1COab3gh6jli7116BL3xlh51BeQe2WZV1G5Oy
	 3Dm3fJX6oSeFhAX8jdBGhhjICtRCUv7MgoV2p39Mg456+/JDGVdRmRN4kY0waBYP7q
	 zcng7tWl9nTt9gqBZYqfQdJVpczr7rgFjAe7g31QGUm0In76bHE7JnKXAAln5PaYMQ
	 CQH/l0inoaarQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C87CDD0FF
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172963655364.16663.17423548101860105595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b176ce615cb02e134ff672ced6202f7aceb4b906f9a5592b6d3abeaa71040b02
Date: Tue, 22 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729636553
