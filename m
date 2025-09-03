Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C9331B102
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756923595; cv=none; b=S6UFc5BHm2kzDlPuCP5yO+dJjWKdFSWiQHUhDhLACYsMWcgYwdQxyCkNrNmHPxK/8UcmM4eAzq/FyUr0D02Tdvx9fUXZ0hMy0EtnqxNpnj1FrkYwM0ntrG91OmhD58pi8+ilJ433GaAf5v6INrEkp6atyiGox3MzsaWN35NlYsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756923595; c=relaxed/simple;
	bh=F9VGlrXlxCwbk2UsnDJuVyormTDTGEJhpm0Wuinw3go=;
	h=To:Subject:From:Message-Id:Date; b=ocVzRkBMpJcIwC/d6q8tOfkJeNOt9S9/3WmOoJWuaIDxKO0NtiCCk1IDMkXg8clCEY9g0mhPcOAhzb6+DUThaQhIJ0/WeLS+KUNFRsfTG2XUWXEEWNqpNcvVwZVZzdoFFpKDwVh6vr6cl25EVT5mPTaUst/qFHj7OiPoNYMzpNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CK6ZrTvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CK6ZrTvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C01C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756923593;
	bh=F9VGlrXlxCwbk2UsnDJuVyormTDTGEJhpm0Wuinw3go=;
	h=To:Subject:From:Date:From;
	b=CK6ZrTvQ7WEqOl2fVg1COw1R0aqN7l53vs93KuO7Z3Y0ICXJiS0NcPxO9hZijmjqs
	 SPKm90qwYI7BFB1N8L57zBuZLvOSAzcO1ohRKEu968LYGhbFs5KevokxRitsCrGYjA
	 YgxLJ6B15Vn3kJ/Swmh4mSAt959LSoFPFcCXY+Z9Po443ze16SQABTUVDQ3TePR3Fs
	 rqqUqzVTDZFTL9rVrBDx8D3LTSUNQY6PwM1gDIxr06u5PzjfPCr8j4EAkHGrvzKMtD
	 k8PJco4ww8BdpHFAXK61BD+c114e1DEpbGha7RX0UXGRDF4QfrXKrNJskcTKb41Ni3
	 K2OrA2Ae06vqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D9CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692359358.5280.8396625781147814463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20f4e498001fed1141e7cb023477a3f1285ee46e716207306234d7077693d18
Date: Wed, 03 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756923593
