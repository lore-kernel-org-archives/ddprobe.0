Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E750524CEEA
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765755774; cv=none; b=kAHsvZEQYRsNndVsd9Bi050pk8TJUuiX7hqqDg1BKsUtgOhuF/JePyy0pCRtQ8/oR/8ka28VZoh5+cV/m8NoKH6wIwqbu10i6ZqtOKINqETmAs9vs0nWNdeW7N9+snKCKDS2B9HRuc++Ahqz/UgdPbaOzqfn/p0q3CqQhRfG1eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765755774; c=relaxed/simple;
	bh=eQ8meRjochUkDWhXug4hRtUamuRzyhhYfWk92vwPyN8=;
	h=To:Subject:From:Message-Id:Date; b=AsFCJ9jEGmI1GpM9tYxED0ATiKqN6f/NbozZ11CnAWKRM6WJXjnj9SzA+ZDEDjyVT+RtoslDlM/BfHeKQZXR95UdjxK2NNmgrOCk04CGoQUFJgzAKYjoaURg4YFse02Z4tftjCDvdhyHhkTy6ZgfV8CA8FC8oNSw2thuBsdSe/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqNjVuGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqNjVuGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DB7C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765755773;
	bh=eQ8meRjochUkDWhXug4hRtUamuRzyhhYfWk92vwPyN8=;
	h=To:Subject:From:Date:From;
	b=eqNjVuGIe+ybopwr3YsmERTwOOzWkMUz8EF6QrWCv9UgLYihOS8bgts3SX1QGlqwU
	 8jZTeY8QYMZA/AXLIfbgQ2s91XNl0fNE8tfMUjY/JcJIoU+QvkK6pb2pac/xaTx3Sp
	 57MF7AtoFf+7CINMkA95NNGAOH7xr+KhQCuOQGv1faHlCMWHNfejhLNHNQX2ZnRSCZ
	 iwTMSPAfLGI+QODKw4dNJbUwhFvI6vssTmlNpdaBqduO98734TUkUyTX9QQCQxiZbr
	 hmrm0cdCZ6SKy0Mt81CMoOX+Yu/QkocHa6ExWS453X8gsv2vmH9YoEVQ3JscOIGMDL
	 LD+oEPs9cWEHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CA3D5B16E
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575577358.22863.1946839820651388160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9134a465f1aae151f2a5d4672c79f4e3ca4b4e44340216a2f543239d99fc7b16
Date: Sun, 14 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765755773
