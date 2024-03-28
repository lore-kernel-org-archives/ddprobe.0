Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E136D7E10C
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711630697; cv=none; b=opoTVFAYZxL/kx+id+/6qzPmzOZczQftLvm4JhYqUB9RgYvEALQ+Fml7Fzu5QkwoFydwuMkersbhff87T7wBWgX+78N/97JvQ0jCgz0zTxMs/DTDsm31iXrMLIlKo3PRvf+HvjieBHayA1iZiV2BVx5imi35WUM+i4HJ7TysrXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711630697; c=relaxed/simple;
	bh=R/VcIV+S81gXe/j130ibgH2OuQXXfkjAK2Yyd8k7cKU=;
	h=To:Subject:From:Message-Id:Date; b=Nt/miblXbRDgMFO7Xi7B7FbESupTy2CYDQ/DtMxBldyH4bGRU0966U81Op8c4zi4qmcOtd663o3MHxv29pu0orkzwo6xOKD5N1pFrZzLUpNzM8NrCn3GPgR+EVIkw70xNJSE8hbFAM5YfcE8XPIIAR2FlZzTAZ/e72sSXGB3Rok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1JAgIEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1JAgIEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B68C43390
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711630696;
	bh=R/VcIV+S81gXe/j130ibgH2OuQXXfkjAK2Yyd8k7cKU=;
	h=To:Subject:From:Date:From;
	b=t1JAgIELbEp2AZxhz48GErlVUa18jgYHo7hOmDRYGTerdl/qJSpW1vyfcYaaJ6OWR
	 F4YmZjAXS1fy5hbGdIyELfduA8JLvtcFds4OEKdGtGzgv9iumMct+O63ScuSXqT5oK
	 8BzvTj1mrRlsqROAKQzpYP5dS109SRBowhgPV5Rkp1OCqsMQyVIUV8xpv3VhAPhMmW
	 yQ/l1FB+rVL2XhtdDa5lmy4sd/e29Dx1bXrV+buhJcufHk5mb5Fr5ps8yMRgylF/GD
	 9/wlqjByMqmwsjN7yiPEflexP2tysOyGmcNphKvsZENjp8b8XG003l5lO+8bA1nVtb
	 uBHAwQ3N57ZpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6651CC54E64
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171163069640.7440.7917979949502945336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06de5fc64bda8a1e2b378553e8834337a21796023b1515b29d1d907e8a8a8da6
Date: Thu, 28 Mar 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711630696
