Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA4681E
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711244297; cv=none; b=Hkcy2O2xVyP94F+JspoRcBR8GCTGCDb9DAixftiueKTXvp33eOYGkK12jUIaiLCMPWYfAMzbxUWiUzCBaCAGHeCuv3k6YFvc/JflKOfoXvsDwPSffnc6k2TF9TsZaxzi2njzTb9qRQ9T9+Dnt6H8V45pY2zDXcm3yIPZjCWr/gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711244297; c=relaxed/simple;
	bh=f5wqgNwrPFVbJDJBVshXFZRv6wco+yxCVhSGZedRk1I=;
	h=To:Subject:From:Message-Id:Date; b=QIjBgMO9MgURpslcljxr1OBSmiBHGmpj0RMTU/ZpT8fgXnSohHCpeMitFYzewvR+fCELcT4KBLC3W7qLBdGnnAsvsgHmmrmjWIyLyDFKAIt16GRADNPPWX4g+j71dqJ6dt6EAFkoPFrtbeUYpNBvqRjyaajaXHYY0nhNE4um1oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYDFfAkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYDFfAkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FBD0C433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711244296;
	bh=f5wqgNwrPFVbJDJBVshXFZRv6wco+yxCVhSGZedRk1I=;
	h=To:Subject:From:Date:From;
	b=oYDFfAkDekuLXiyp9yoJYiiI3Wnv4SKYOivbbwov0VdshyMcHCxU839KvJqQMbGUe
	 r5x4zTAUnGD9meNYgHoA90wQVc6V5m7FCyVIGQXFkwqVDNxzMuwhLQ4ckooJ3InZrJ
	 EgaOTKsy5TkJrYRQbYl7Rsa+7SJH0XGVz71/887+v81xUqhjJBtTQ73nLNdadYN2rF
	 FeYow1I8aV80BfH5u873A7lO4JlzPcj072mo7FERKddF8KdpwJHdYE4nCBi04Fb6yy
	 yFHJ4pEDGmN83WJi2mgzLVlgsgdY/DE3xzYQJ1aVjh+3xfE526TMBQfN404STxxfW+
	 s+Dzy/Q41F1Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C151C54E58
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171124429639.5930.6248098825881572131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69af77111385d85aa2f7c1f905db9baef5583ba21d606e27c310d88576715220
Date: Sun, 24 Mar 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711244296
