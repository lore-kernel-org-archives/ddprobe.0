Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E11484250
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789462234; cv=none; b=qpCL6efNMIj2rfOrJ0yvxTFbo0TFJJGGbnxqGiCdhfOFlmuxz9lnkCUUxpI0M6r1cbdtFdi2jM+h7ZUunV5f0p4YyziAPwI2FPuM7eNKlXGzzE9rZD1r4jZ0NBI1SaBUMZ34YJZ6E8iy1Kp7SdSVqGpcbK/R/shv5keBBow3xDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789462234; c=relaxed/simple;
	bh=ZSg2qfqLOXGpJZFAY6TZTMCAr1Z5Y8enAglngIvlWQ4=;
	h=To:Subject:From:Message-Id:Date; b=bt5SPtMqjRqh39EyDuPERP+lxB3A1VS9HS/2oqjG2hQw01lG8R68OQwwFRRFEv4YkWXe+F6PpWQuZGgS2G+3RCvVUCITHJlV69MXZcJuPj9xejcqzcsHM42rpjrNzN04jqWRlrtfz+oE+j1smSkRK5YzuxAMXTLaMahj5sXbh8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djnDka25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djnDka25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE97C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789462233;
	bh=ZSg2qfqLOXGpJZFAY6TZTMCAr1Z5Y8enAglngIvlWQ4=;
	h=To:Subject:From:Date:From;
	b=djnDka255yh8vQVV2femYekrdwy5q6lJvomwFg/ja2+2lH1J/syppgWJCsEZWNbsG
	 cqR9Pz6azd80f1GsYha0uKea9q0NDP/6fGDpoQXrcPAuKHgKRWl0qb/th5u1zUJchD
	 SwarCR9TBj6UXlWrTz1qE1rtIy+Y/sA9SeSH3E/B/VbFISPkYL4aUW82SF8jJP5UUA
	 jF4ufwtye7bnIKwwjTKCN7ae0zehetZmI2Gn8xXJj/yZ/pqSnP5iReWDAjbr/B8g0e
	 rNOslqxb2v+rwHH3BQ/Mro4/EAsaL5+KN7JxofHmK2tuSPuURxrm1cHmgvt3Fa4Zkf
	 JFp+Idsi5Exng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF38C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946223370.22002.16724536575975989313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6ba2c7294d84bf925974f80464300b3963af1336cf5a638941032fb1de05c3
Date: Tue, 15 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789462233
