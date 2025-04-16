Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6B0204C36
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744765794; cv=none; b=PUSCCLJwRGz7Txh8fUOMMfwPBsb3qhdyKIPRTqMqZMBPWzM8aQrDW5g5GBc6xbI/kdV6rbS7OHegAyUV40vZHS3weSzpEc37ctkgJMQtNzb4VF2/jmtrKEcaUbsDwc7ClelQMi/aSYDZBsTrGNQgV4w/IMZ8sVCuawhlOPUriR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744765794; c=relaxed/simple;
	bh=XxKC+QePeW2/kja7r0YoH/lyEdknqyHYZISu8nbmUuo=;
	h=To:Subject:From:Message-Id:Date; b=dIygOlqbb+NQb7ZJbbp73iGaU2kMyoCtlUPPmfI4pXEOFO9niWYKyhI/Vwk+rDQvDo2dB29FasKeGCJNbjSJgx7edZDIyNHCcM76iqKW3ZeEng8keJNOX7+btgT8KsDQ3DQh2tnDBOmOlqhDzC39D+nDqdC8Kw9alPy+LVAsK9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSG5lLfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSG5lLfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0109C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744765793;
	bh=XxKC+QePeW2/kja7r0YoH/lyEdknqyHYZISu8nbmUuo=;
	h=To:Subject:From:Date:From;
	b=FSG5lLfPR0+ZnA0ZyrY2acCgI2aLE1+Dh9x/aT9l1FnwhXKEwX5oXFwT2/c1ikRzP
	 ajr5RwfmeeC1rcaciTlZarobz4Gc+Q4fUHkm2KlbsP8vn4aqwsTL1Io6DU29Qaz3Ii
	 /EOgWr8lOquHCYwNtOrt8zVRbFFMQX9AfZQOJcYRf1HNPzOhp51iyczsHm4uzDNouP
	 6Ls6b/L9SBdd4UG6kv7hsxCQy4etsId96KBK0O/zwgZ8h/kGC4unQbh5byi5e/I3TY
	 SE97xnGe2QJMh6sutDGjsJ/WsfnL1Yl1E8lIGt4N+FD3kBb3SrFOPOXAS5dzhq4816
	 4a9GuTZx5MSqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A199CC369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476579365.20043.8678122318566172414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642acfab3a3778a753b4f71d4a279dfc52286093658bb67908a10951c7d5969f
Date: Wed, 16 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744765793
