Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AE72248A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758350994; cv=none; b=hcPVAeSY22luRnVrx1pGMOnIx8SumhLCqdB69mln7LITVmKj7rQ3eCCX+V3LglPXMYLy7K00euAsX2hTks1q2hosOheY5Gknz0VoNuRHWYMmANnPqFARXPAZXot92BEvRju91axI+YFBJI43qk5GuWIkj59/uGadpoY2KBUcoDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758350994; c=relaxed/simple;
	bh=hrmt5Lm6OcgQm5oQiFz1/Z4Jg/qC4jiQwDKHuiyV0AM=;
	h=To:Subject:From:Message-Id:Date; b=YeQcVkJ5ELPoeQw7XUXr3E1M7VG0jTxJersPbu1KAqN2SHz/+WVMawqZmfm6sxjFR02Jk3vfhe3WuUDlAjbukAKUqvSJsK9Ubi81f/xGvm9hxlKcH9eF4UYJY7zRS6DLbUqrQmhZobUvH2t2CAkKS0TGhomgw/D1CkPOM78Cjl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrSe4Hj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrSe4Hj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2259C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758350993;
	bh=hrmt5Lm6OcgQm5oQiFz1/Z4Jg/qC4jiQwDKHuiyV0AM=;
	h=To:Subject:From:Date:From;
	b=rrSe4Hj0QmxqhIYqmVCb6FPXIy3EdEqiDOJFI5VVAC9RTTNr3oPY7UwdUQ3eD3+0J
	 79UhefVewedsgty9pfAFFjwmxFbIQ4FzniQ/0cXgkDtHUsgZFttngi6ARlnWhSDot/
	 ydfdvzttTOybPJ05qbhNfqPbg+Aakry3njI1wZYAkAh6YxjVwe12cj4w5HdpALe+6C
	 IOQ86bCt5AcNxt+NeM+NGg1x+apj2JxPXn/XHf9j5jujx5B3o8Eoh/SkrwKpa1J5Wg
	 LJN25QbKJEEz/QdxiMh+FO6YfbK5sRM8OipcBs3DQ5H7NtSP8xt7jFUxcS6LXJGmmB
	 d2mGPwIKBu3Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91233CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835099358.8461.16807047030833154804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35a20ea6736010423e9b8835d1d68d504e58082f3293303f5bd42be56833f3f
Date: Sat, 20 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758350993
