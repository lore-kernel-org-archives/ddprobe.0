Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A82525F797
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760180394; cv=none; b=r+P3ewJ+4QWIUd2YeEHISvyKnaV7bclpTnu5PL62tu2xWNMANDsypgAHSPTMKVw6y02HhuT8mWzWT8XijZwS2+LH25tSLt5bMcO/TKOwKgE1jyxc2T1+LtGaP4mlGSdyw19O20Xh3R/wdZ2gCrwjnbPfO4bhge3AnS4D51xC0DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760180394; c=relaxed/simple;
	bh=zBUNuur9gdciV0gLVkpPj+F+fJcVniolxJvYBhXs7cU=;
	h=To:Subject:From:Message-Id:Date; b=mlW3e8h7ZZXUiAMvNZvuP2RpB8YM19IEJTJRnMcffwmlhpwaRtKY9YlE8N6mTozrMzqJxxrZLhxWzmzourW6DjOYP2SXBPlreavWxWgJUKSMnKcfIldOLf6SyaEdfMBrN5WCVmMJEssPN8/vosTQgpn4b/0e1d9KBC1/nxHekgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqR3v7S8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqR3v7S8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A633AC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760180393;
	bh=zBUNuur9gdciV0gLVkpPj+F+fJcVniolxJvYBhXs7cU=;
	h=To:Subject:From:Date:From;
	b=CqR3v7S8kC9E8AlD+h82P3CJ0eKaTFVnmdB9dEeN5CR48iugvPqzVnItpuJg8Qp+r
	 iSv0d2GKWOTEWgzX2tqRv6EzHhj571ZV9MKNsRp7+gavIOIEexWROmLlIPegAbbSoO
	 KrDM6rkVBMXYdINSxk9D8W1CLZrJunjualczw5yhMsisHcPouwuKNA3L0W69yMPXxI
	 ITr+RBMXzW4cfrGy/uJqYLuLP4FYWYHX8RRZQDqBpYmRrqsBGaEDNG31T7IYVeeSIQ
	 kh0Mw7x5Ysi+azo2uexa3BKdSh4e0cm/VqSiJMSffRzJx4qjN4UTuGWXSRYMglHoio
	 y+8ydl8JGLHTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937C7CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018039358.25550.12633540683967847899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ee59402d506c06793952bb67e6a4ffa2b185e2a5924ff580a04a38f1707007
Date: Sat, 11 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760180393
