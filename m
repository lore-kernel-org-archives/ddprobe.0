Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CDE10F1
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770038034; cv=none; b=h3vTXhbj2BK9pRPK3BPOTyxAs0T1U1QsNKHVIWcFFfSYKCFCqV0nv+3ZwxKLfwvZNjCrhKwmH3ipPDaZczv0QJWMNGs1bFK7hBdL9itkzGLOroIlh8uSLrfX7UlW8Fjf/Iy7QxJ41z7N8l43zQ2/vdmTB2vp206IHAyQ7Jb7czM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770038034; c=relaxed/simple;
	bh=oNIG42X5yxqLkuW98bCwpOgjMXWMRtbKYTjv0S/Afyw=;
	h=To:Subject:From:Message-Id:Date; b=KLZmDl2a94B04hMC1TxpkASi8zAxH1eDKyLH4//p3wBmbZOU0hhfXk5mtzgy3NwkCtsweCX6FdGBw3Uc0LVDFkg9nzzTdx0jQb1/jAlD3CW4lUaJ2eqU6liXQ7RMyDjScEbVZMBEFbc6HCcmCqcBP2Qs8aG0H9L9tKBdEfgGLfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvMqa3dm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvMqa3dm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44DAC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770038033;
	bh=oNIG42X5yxqLkuW98bCwpOgjMXWMRtbKYTjv0S/Afyw=;
	h=To:Subject:From:Date:From;
	b=MvMqa3dmuxJ2VGqQNaiUBCcPSBkhoveuA1KP+Px8nWvGSihdwlMRpYb7AKOGDtfcu
	 p/v3ozz19d5Qkq/HLKsIiGEIhPWojWcPxlZ+J9oEdx55UgrO6GofWKStseahRsHVeo
	 KXE5KnMc23DAHfxxyO9Io+1lmPgsItSS+WDVTfvtn7Rc/JYDVH3PqH4QiO7Q2unuw4
	 R2nBT/MvQEvOKIPmy5t6HPcOzuagJ5Sd83zzmfAl/uKtU0uoa6PTOsBqKzlsrCOYKn
	 +jPb+jMthld+iEoaP3MCvIKe/DUw0mlmyOcp5NqjfnnmYPwMSUiMN+cwCjiRqlsQL7
	 qAsPJgS4kiuEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB36E73164
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003803363.28694.10843081462238764666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 820332a50592d08f7fee3e6288fc29e771ba7ca194aff23cfe3e1ce6e162f5f8
Date: Mon, 02 Feb 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770038033
