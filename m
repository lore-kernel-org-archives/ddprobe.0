Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE5332C324
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757435994; cv=none; b=DN9W+0yN1IN0FwtymkSAcIMcMo5vjMCguOYDwl6DDN9/Doy6mmYB7gM2bNAktL+6M71lDQD7rvmS3oU+LSykEN1UklFO/6IuG+f8sxxMPR9422V4fhXNxfGDxF18S2/hQagR4dmQW6NobNW0vpvy7JLsBE+3q2vROEweL60e1uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757435994; c=relaxed/simple;
	bh=QOCFeTbaAmCdMHcFGpMi0Z8maKe06u4t1f/eoaIlBEg=;
	h=To:Subject:From:Message-Id:Date; b=BeNX0vKdFa6fKGEuzG+9O1XIbCzNcvuy47o0MgyUX//ti5bWKxK019MPzc+7deCtFN/VD2f8nwpM8zJV7uzZoHxTHsz/iKI7f46RYiQWnje5RKtvvHEejT2aO+k9B7B8j05YcfxX/37VblMOs99+iLNESvxVNTnEDoR4pvMDWRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcul7DLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcul7DLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C97C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757435993;
	bh=QOCFeTbaAmCdMHcFGpMi0Z8maKe06u4t1f/eoaIlBEg=;
	h=To:Subject:From:Date:From;
	b=kcul7DLnZsPrWdoNays0IzopbDdRakSQS5NSDvL3ALrLD9GbbQwtbG1t27AjryxbN
	 oCTYxMzE62MhleIXFyNLJyX2pUS19Oy+oJJsNb0X7eQLdbkWpub6rScchMxLObNV7Z
	 2HNe7STsG1MqYclveL7h15173Gxr6Bjg13AP2MUBByElsuCrb3hHHvI8MvWlUzle7V
	 /hadrF7eOkhTBdNGbo+osNfrjspg6WwDc+Bd75iZVTqAC7AwNlKZSXH7egGY3WAF0v
	 pj7q6+oLpeWUnwodcMLCxc/6BMhP97U0iO+Gp4B1izF/VcRf25GfHeVyduwh6EjLW/
	 Q3l+6tMLm71tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905D0CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743599358.11021.1898499211425957058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58ab6d4e1b2b5845e85651927607c4196b2605434f07499d9cc9a706b425c76c
Date: Tue, 09 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757435993
