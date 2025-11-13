Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBA83254AC
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763021394; cv=none; b=m9tUjJontVNJxtfEdzACDS2ZVyWcr7oiytutRrv7nTvJeFCPnqXNYA24/j0ntM8jIRm5LvvBk78uN/rE3yA+BqF/YD6tiUGN89yKdHOxGLblMndD9+TQkzVLwhhnNhgRP+mYM1NSsHZ886lgtSLgI/av2hfS/iuGp+dkI2gtQXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763021394; c=relaxed/simple;
	bh=aRTn6JJVhQyrHHkbd6CB5xbAUZH1yA19MsdM1qk4lpc=;
	h=To:Subject:From:Message-Id:Date; b=Jy1V36UWhdmkK9tdg+DJbHTva1FvEB+XZ6wPKlBgFQej8XCoNa/Pmb5xuFW4A3zwff7rhNYvxX9IiQBZddIaCouWdbQIS7U5yZZ8lilMgld9j16ekrtyFm3qiaRcOKzI2a8s206UIAqAOinNKEX/cRgBfUgo84w7EeFaJzq1yMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ie+HkO5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ie+HkO5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF35C116D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763021393;
	bh=aRTn6JJVhQyrHHkbd6CB5xbAUZH1yA19MsdM1qk4lpc=;
	h=To:Subject:From:Date:From;
	b=Ie+HkO5EcglDLgfhEeCCqVHBh33qlrfpB4AJuNCjZo5SKaFoV0fX6zFwWrlpdpXc0
	 MSC0EU5e2y97kMrlLn6SItjDnvys87Pan+mq2wLrBrvR4WW82vIDzcN2SPhhmxTOIW
	 cOQTYVIncl0yuX/nFI7Vqh4QqKsMDfFkmpDx+BZ8Nv6qR8SpovrwhpoldoeDoGKDUx
	 U0xcS3NbEnHoqLvNG8TfR0E4r+QCir2+uMoRRn1QjrTBjOVLMLB2QMwxLQS9N/RKtc
	 rq/BCOUKdAam1YAlMth+YUULfRDYMqqZ6JvYxwgeF5m742RNfhs7FkmxodlONN0hKz
	 QHY6+n9AZfV4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2A0CD4F55
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302139363.3776.6269319216657291544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df14f65cb170d290b32e388cbc9089177cf956471b77a2c9c334600b7fe42cd8
Date: Thu, 13 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763021393
