Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC133D3312
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773068093; cv=none; b=uSGcJcjAh/S9ROSE5srYlFDMzA6W3oA/McXMg6TWwipkAKe0YpW78v7TIeA0dW9QY6/7PgevoKRNC/ocUEOaPkcWDcRQbaxztRAVwEo500GG5j+YPlvE0P+huuJfQO5WC1kcgIBIhzQXbVxaAGOnJ4KNH5npA4vbNRPQdo+FAuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773068093; c=relaxed/simple;
	bh=+O7plgxWMiEWc1pCQYhEOMGMLOJmOREEPLlPNnLxrJo=;
	h=To:Subject:From:Message-Id:Date; b=bgyhXM9Q5dyyPnA0DRt57g4BKDExlLFqttppINwpR8EjDR6/XpEWNFTxgSHoiIUVwz4bmdUwO4dfIMivAPs4/Wh0uRPCDutDxPECYOK0JcvkW8mWMT+863zN3V92rERJyQjUNbfQxJPkRlA1mKNIoHKvLnH/+cp8rP5Lfp7oeWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuLDE6uO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuLDE6uO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5F6C2BC86
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773068093;
	bh=+O7plgxWMiEWc1pCQYhEOMGMLOJmOREEPLlPNnLxrJo=;
	h=To:Subject:From:Date:From;
	b=KuLDE6uOgbFMoi9NjIw6qwYwluL8U29zdUXGCh75MFIobxy92Jck0dBAydeOJs9jw
	 sLdsGj4IsS/HVhWg/cZTJ/1CinjGLW2/uUMpzFn88iHyvGBBZkTlN/zxrz7SvIWQb5
	 NZmozEgUusoJ7hScj+SFGlxIGSgpqdcpuAA/RvE/CZh+xrNoQeM7OH4M3NuDYPWuOz
	 ycf8WoEo8Oo78/Go+65y/LZluT10tNtTroF1I4Dn4+MiUiFEnjjyKWT88rYwgwD3qi
	 Vcp1JHNBSdKaVCVMvI2hecdtSrfGxbAGYgMRYD9ZNOZnTH1M/ZrOyzn4BFUAUgouTb
	 VZvHAI0DO3K2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F099F417F1
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306809357.29533.1751299627486311581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4f9f836be49aa9e74a869606545d4a62fb42097475c440b20a6e02a1cd7472
Date: Mon, 09 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773068093
