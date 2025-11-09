Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF001482E8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762718394; cv=none; b=mV7XcoX1xbrRd0wcvl+y09VGcPJ4aon/dRzx3y2U5e8wBfyoeVyGWHLyjFy2zEGDeGbVo4XN5vq5CovBB6YnDYUzJgbw6aJ82MuIu+JRCERmTi49h2Nv31cBTV9wtDTRII4hg+Kt+wuPORClcaPHoZm6ilqFPIn4iSbWnN/MbTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762718394; c=relaxed/simple;
	bh=/FAPFdmDVwrjoxsH+Mg14G7nkND5KcKg4eha7T3V4bw=;
	h=To:Subject:From:Message-Id:Date; b=WNas8ENtlcxiwZQ70jqAnsxsA886s2Dm/tOpkXssjvOpYO40T/VK4ZBgO8FIuFO8v1yg7pSXTpzrBu+MO11nrBjbSRp776s5re17rIpSdJLObc8JHazH+S+XvpoO8LFDJDzm+9+2Qok2HO0eci7y5HWN/6+kgv8zcStSWvmNSj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=La2zkIAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="La2zkIAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0AFC4AF0B
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762718393;
	bh=/FAPFdmDVwrjoxsH+Mg14G7nkND5KcKg4eha7T3V4bw=;
	h=To:Subject:From:Date:From;
	b=La2zkIAoSZ9BkWi/rfGv43ZL7MBaGoj+S0/Vp0tex/VPbO4AeBIA/rC+c8a8q7ovC
	 rNQPoZS+HF1dZfpT2e/cOb+SkaGPBU0jxP9H+zTE/mNmnTXFKqQecDrQy55ulr3BmM
	 X0xZxU+3sNSaErllARmB/nQbxSOdZ+farP5oSmmr+heMyT16hO/VqfoDnFgVcKP4st
	 bfoPKc1wlkUclVRWu/kZ5hwCDt9TrPwlc7nmE4KKBWNWg+OOUzQ4mBt6DJupL/YH0q
	 CvCjEewQROnMyQLtO244rUBqQGtdjvmUhFnv23gyCPBbEGJMkg8Ex94bohyT87zlJ3
	 9x1mkORN2UP6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFD8CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271839359.15704.2628762473958296164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c31b63eaa591f8f5fd320fefe04aa1e5e3e9ff0beda7488c2b9363a5463f27
Date: Sun, 09 Nov 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762718393
