Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DCC6343889
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779480154; cv=none; b=KK5K3dHP5a3LIAosCr+hKSw9FsXSAFc6UsRtyOFnYqGc9dguquN8xX2RCi6UNU1BTNYuaCWwJRFxQQXYlPmRAVk3WSdWoYvo56ZPciOtItAjz4nWic3ChPUBBxD2SbbyjiAuIyJH0cEjAD7x7Z+/S2dMv70erkVdw+pKKHFVfQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779480154; c=relaxed/simple;
	bh=4uBK8gS732qqV56kIbKqshLGsM+anFm/UgFc9Mh75iQ=;
	h=To:Subject:From:Message-Id:Date; b=lp6ooYLtuvDBZZsTg+cgYnsPHprW9vj0jknRzUlOkyC835tChrxtoDr0mJsSZ7YfFjbGWbl9oowMZTM82czwTBpXGDRu+037fRu/3psm02YMkz3FWXR40QJuQI4GHwlKNWMIm55W/It9YfEMuYJKfGUyk+Z5NXxtF2Q9H75LYA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q43Gr8V9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q43Gr8V9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B35C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779480153;
	bh=4uBK8gS732qqV56kIbKqshLGsM+anFm/UgFc9Mh75iQ=;
	h=To:Subject:From:Date:From;
	b=Q43Gr8V9+st6YxMml8/OOYQFBI/DX0HUGx93HUsd1IpELPo3rh/G0kotUE7+vc7D4
	 JCh782WcK3vRoaVFnPd5Y10kugBpDFQVe656VqoybXfg4E5LYGPak0kUFnvfgwn1OA
	 k2sZ4MazBnC2Wzq8bP4glP3xabLCzq/cHYFPf1+8O6xQe6a38eYKnpEGD52vZM94jj
	 MWpEg5kQY/ZH1FigDp5ubVTDXca65E+lsA5Ag8aM5N04QTu3/Z9VGJxwTPb5Jm0d4d
	 SMQCe1WXCztMRI7ZHZ2yyxriZAXC3wXSaAeexdp3s29qW+8FWf1kCsYMya3IWzfFyq
	 mRl32TtE6cdWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7F0CD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948015369.22571.17377870300120342172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f98ca409c7ed7cb459510c3619c6d9b00e11f116a344f3bf14c1d232f55e7e5
Date: Fri, 22 May 2026 20:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779480153
