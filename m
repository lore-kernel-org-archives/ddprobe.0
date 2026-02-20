Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0667630F7EA
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771625694; cv=none; b=H7DnWokXuYvti2krT7f1ZFDFhqEn6RAL3qe5MLq5xcbxrh/FizY1A4eomwhBjUZTFKVtpZfdLnfjpAWVO0A8In4M8aVgnH24It2g1BDzv5YkyGDOUcPOdCf8sd67qUyN+ubJmtgHoe96dNTs/TAQBGeQu28fUiNq4K72rtT/rIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771625694; c=relaxed/simple;
	bh=syYYs1ryXaAupJPx+Mjh5g7zmbpcY3wpKQQpR9gtTn4=;
	h=To:Subject:From:Message-Id:Date; b=EEJl6/xpXMr5E77fxBnvUfLHvWt8un0414ninv9clJcyHX1PsB8N9N4V7PblC4XezcP+KyM4gKgCBSpw0pPaTPps98uvFONpxdtGMCjC0YCipRDYMIBjH4LhAG+PLk+j36UrvgfGeixgU2kCvTFA/Sc3Cb7PLx8GCa3DabaTcLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yw+viHtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yw+viHtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D0AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771625693;
	bh=syYYs1ryXaAupJPx+Mjh5g7zmbpcY3wpKQQpR9gtTn4=;
	h=To:Subject:From:Date:From;
	b=Yw+viHtdcPELCaU964ETYVsJdqwbq3qd8W/ne9W928/cdC0h6SsM05AAa7v0dZV8q
	 tBcGcnz1j8wAT6idcUcmcT30LKNHOcSEpYm8TPlofwwsB+WPB8H4CnXJYeM8k66WJA
	 mb9YbzTHKpM7srQTEVnV4unq6Y7u8FLB7/nBm9/hw/4d8OVeJFt9MO89/aS2gR8k9A
	 HWMQqQEOO5rvLUyqaXh8J7tFZ+zhF0VeyzqHyuKpu+7rejUxNoHCq7KoDBFeUvt1Z2
	 G9XbSKBimGzUF+EfZtyBIYlDM6zlR7N+qC6uSgtUAtJ0fRi8fuZWpaZTu916F2c36Y
	 AWHS2CftZ3ElQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F08C5CFEB
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162569358.12836.10899297116839969727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794f8dfc1d3bffe1ae5048e7d70ee52b0400046aeb43a9b2d30395bdfac421f1
Date: Fri, 20 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771625693
