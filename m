Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C541C6FE1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763605314; cv=none; b=lUwLIvYRpP3pFFGlRF5GchRmle+FZbeBJ2ExIPVEunbv6c1jaGfUDxyjqTZTbbPx+y+pU08rFInfk8wTGvgY3AeiWVLWowpzwMGzFJXOSoET/O/b6Fy7+CFkoOlcDh1Tm69/L0v92mVp+THcBnjeDYy8BBATlXqvFJXBikV4N9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763605314; c=relaxed/simple;
	bh=PWMtYAyOZoTLrBhGd2yPQCm2k0pwmOMqHJynctwHNc8=;
	h=To:Subject:From:Message-Id:Date; b=dLYN3X54HLlg2ejeltDrSriWlnY6FNZsZxJm4zBenDPhgIojG7GEyxCB7AmNaw+OZ2oFpfsgDX0GIp796Yb/8l+8gYuXs6DEoUMJSj/nRJkQbv8H1FTdAlRVHqLJPmdq2SGnXG2Qb3BtuvU4CHOEEPtarbg1fqthfeHLqeMmL/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pktkFZBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pktkFZBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96B9C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763605313;
	bh=PWMtYAyOZoTLrBhGd2yPQCm2k0pwmOMqHJynctwHNc8=;
	h=To:Subject:From:Date:From;
	b=pktkFZBHgzVkF4zZ5p/I/jJudzb1aklqrz9BOgOrqWvLy8FMVbctaXGvPfWPaFKKr
	 paz2cPDTK6DpeCK8kUKN05Xktr621ovadYuxAMlKUp2kgJsoY1j9HFds8uIcPNf4SK
	 I4n3GqYLvTPH5T8atMBJiS+I5PjT4KG3PBnk5SWmhKYXv4sbCHwjGcVXVsB9Ura461
	 O1kOOSpQQWL6VhoSaRssb+MndK1PkCm7NWGPlw9TeFZwxGw2+oLtnylXfbaDe/1RUb
	 S5pCXJi6WJE1cybgJ8IuwYQvrHXcmXMGL7a82JFFDBTBmNgeMlxDLEh4d7afcomMDc
	 8R/8CUcp0BW6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94492CF58D1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360531358.18613.5323083529032056230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c27d8ebe5fd06b196b25e47734adcb057c1281acdc1fb063b33a49125561a31
Date: Thu, 20 Nov 2025 02:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763605313
