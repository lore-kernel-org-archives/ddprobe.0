Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D0D35966
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735272354; cv=none; b=YtCN/XaI1dgHsn0MgDFMqxv0Sof1hFH1kkSq6UJxdyPVYemAl4qCNwrNdo+75s+/1/CNHqCse2cPrbNeezVoUKi/kTUaZAg7xVnWdH7lEHorLOWZaAq9nj1hmhMK977YUkweSH7hkgWwnpR/YD5M5/fuJLDYZnZ/JVNhMHfpoEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735272354; c=relaxed/simple;
	bh=ytfcEXqRfouCioNR/sxotQlWyD82c0yK37dkUFLPLyI=;
	h=To:Subject:From:Message-Id:Date; b=t6JQ2UtNkQzGVygkWrsu3Po5DrE5fP3sVOCIoiOWIyoz2D1WqiUWmXIqueEEW2Bm455GCDikYz8AIRWO0FxvNYx+a+U/WJel+vwXwsidATAktqE5UDa9/VUJJ/vzUNCjuXKM/OsrqfAvU40Q4M4wVZX/z2Kf/3iZgCmAeMpfYvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMMzhlh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMMzhlh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEF2C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735272353;
	bh=ytfcEXqRfouCioNR/sxotQlWyD82c0yK37dkUFLPLyI=;
	h=To:Subject:From:Date:From;
	b=dMMzhlh7XEmNrgERwE3Mfcym+mwQFItLjAPoCQBTkTQVsHk3zdbepcWQeLfFvpEFU
	 SBxXXE9NYaxx/qXOQcRm5neVF1q43mBzyGWPKMUKmxmstS0qxvKecdtD7vLUoEttqL
	 v8XOJuxVS2BjIqUOJ4Ml0ge3HIgewvqKFND+/wjxkyiFHsNrAZh4pwbHQW9wijF8Lc
	 agcqxCd5PBMNmLvoSE4ztGlQRhOmH2e4Juc7B97I1CQ2xr3ePjNeD1AqSl3fb+gT1G
	 TTqaxdgRJuICh0nlsReCe1/PUg5hPWip8iiDiKPtgIm0kRHysChniC3Ngez5hGZmba
	 5Aj4VHx3wfUFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9731FE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173527235361.11621.12250400960546686525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8714977872cdd802b0e5d336b60e3f2f963bd7b3a56b7c1c9ed82c42bf186bca
Date: Fri, 27 Dec 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735272353
