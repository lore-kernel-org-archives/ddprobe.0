Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275AF18E1F
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745477994; cv=none; b=G3uiaxf/1f00xohl5W3iRGchnq/4vR09wIR0jUYOWHJ6SJv5/aYFiD86HKIDd7P6E6SCyro7pf75P3R0uyScn8IcUP0fWlgYZG6ElmyicgydCRl1/Avkxf2j+4KiE4EthiE2s5iGWROWvXX3kCTYgrp5+ApFlRNeuQL7MMurkOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745477994; c=relaxed/simple;
	bh=pkYn6e0zGgIiNdeiEb3XvwNMuQOdartehXvDJWUBMM0=;
	h=To:Subject:From:Message-Id:Date; b=Tp1Fa1yt2z4Bzg9EwFT/gHR+ZqoFluXtGvdNEICr3QhQyxSB/dD6vPyoxfQBgJNZ0aHliUc2r/mUD4vVk4NKWxb4DsCirtOPC0tDeNM7eP2cMGaRKK6X/SOPFuJVPAtNgwYniWFT02RcPFkWkg1kwFC2lEPaRygblfycnBLSdi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdTNqMSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdTNqMSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16EEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745477993;
	bh=pkYn6e0zGgIiNdeiEb3XvwNMuQOdartehXvDJWUBMM0=;
	h=To:Subject:From:Date:From;
	b=jdTNqMSJ5ifLEEdTfUfKoC5P8n89h3nSExC1bg8N85xHHezvVSah50QeIH5B5E+3l
	 7tYBiSby9TXoTBXCl496L+5Q1HJXlYqBR3QOw53Tc1kugnQ8nD2qNvLV4uPD8BcgLZ
	 l97abpaI8CgIco2DDEZ+iVT+rTBC3CjcRAMpVzwhhtKqVMV9CaEqsBVrihe3swNqGd
	 FJesIhG5foG3tY5zROsaor8NvR4vOz3bhfkK4wkI6u2fY87WhwGvcFMqDFXHyo4ate
	 LgqNv3/QpOxNSP80sb6I8sYVLf40tQ5OoKnlLw5RF/czXA26aGu2Q1EL+cPDujG4wt
	 sbRCZk2F+0nqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB9AC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547799357.2664.17945172327716153577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d98fe5055e81093587ddacc96fbb4d8d95215569aba7477fd8b8c7da490e03
Date: Thu, 24 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745477993
