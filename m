Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61DC015FA7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737192954; cv=none; b=udpnDRgBO9Tq9c2aeCN3iXNK1LWlZhMTpiEJyS9sNrCSeQaMerk6OVM/h8VZZIg30gbamUG5rVXqVgXQszm99HOlRz8aZcxiFxST7hVkaJ5wL6YDRT+u23sEWGPFRbpG7cnXcem5qVscnksbU02DI2a6xax9Vpt7Hi7RdXo+VdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737192954; c=relaxed/simple;
	bh=fgYGTWpdcpMX+C9q6yGsBeGCB61KF50i3QPA7RPRXSw=;
	h=To:Subject:From:Message-Id:Date; b=pWPk7RZSWwwBI1yp4kfmvP7lWAPOAbMkrKZZP3GILC66ML96S1KWemkCqNkC/yum7IdMYJI0A02kUjlRxexaPjiwb8VXe8sc3ZUCtLb0ZQikEE+Es4+vdnvbP+xBxcDEEghp0vSUWKT+NzSoSHaeMqQYA77TCWLLgr336BR6lgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbY5Dpfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbY5Dpfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CACC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737192953;
	bh=fgYGTWpdcpMX+C9q6yGsBeGCB61KF50i3QPA7RPRXSw=;
	h=To:Subject:From:Date:From;
	b=FbY5Dpflnqyj7OB/mqbL5x9Tqwf5i49TiTPQ2te84Wr/eJmu9tVckgd3gkoe2jh4q
	 dsZ3vRJqIrVlWdI9tM36Kh6poHYzWjZJPvwq95I4fgXkZy064eJe2/MTgFebYZL9Qf
	 Tx0+V3i2uemQtoln7CAP4A8b0g3QhyqHoaOSTynLkKtlGVpWlzbujwTASx8aGuX+RT
	 BrvckoJ4tcOqvjQKVQGs1MQewgjITolSsgBx191QFJmUONx38hV3hV7el8aloPPNBI
	 5k/wFe22l4S5nW6zIcNWeyVsKnA6YnEf5TPIU6cKYAnDVWELi0fRryUN7n/TLPV8cc
	 0P7/Hn+c/1uUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A294C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173719295359.29436.11786559046289450237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8fe23e546f170a2024bb40e6e7ed1a36d890ee7ec75f8ef7ea524fe646982f8
Date: Sat, 18 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737192953
