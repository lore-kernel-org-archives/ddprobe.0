Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CB035C190
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789443034; cv=none; b=IRB5Dovtw8sf/itNLeSRUa37syvq1kU6DyA2Uvax0tYLLVmEb5Cj/Ql5T+c24NgLYuhctHYYna7v7oUFebhvbAutp3cwuRgSHyLyU32Al2NaVNPqNy+uUIJlv2uZj9lGTIehCfpRrv4M/0qTd4fW1rgKWe5Z/jdnN6Dd9/W0hjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789443034; c=relaxed/simple;
	bh=qCjj8q4hhrEhWHJzaWM22r9GO8MLkEmelejh82U6kFs=;
	h=To:Subject:From:Message-Id:Date; b=Q3NlFsG0cRM3XM08KfquUpkScxzRoj2Bryh3PC6st7mgm4H36TYtu3RgooRKb6/qzTq2yELM/2lOJHdiichCiCcs+f9Qp3hO3/1qDNhdS/eKypy+SQZZNfCW3b10N1FcNSqbi1TYJM9bwl3WnLAHW//HrthEqrPoVmbDtUm+wFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQizd8TN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQizd8TN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB297C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789443033;
	bh=qCjj8q4hhrEhWHJzaWM22r9GO8MLkEmelejh82U6kFs=;
	h=To:Subject:From:Date:From;
	b=VQizd8TN+NQmmgbv0FfKHeAVMwthKy+/rFcoZWJxia0BbsYVHvn8Yd05HgdsLjHDF
	 DFQ/MDLZo8d+TBtKHo6tvwIjTJr0pqoYwoAsli4D9ZIPmAXCjnvVFU8gAPsaZiMhDT
	 M79eKPQTBOjcVrIMahz8qSlJp296A/PetXXsDbXWB3/ZWN1JQtIFn/ZzKNDTg9OSBM
	 wJZeuXzOegemPLZXrcG+kUVNWKm4mJX14tzdydDf2XR8zpngjCcr2hngN6QSA4cuf8
	 AK75KoHFcT+W7BWGJ9nnWXOgYoEII2fhoIE5A9OWcgDtD5cO6P9sYpyXCAYJvjaA6u
	 krA/jafJPxIiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C5C88E77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944303368.5991.11714567511002797488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e855da0d6f8c6cb69062e1d638ad7040bd1e54a37a49a29f3849c173fa61bd
Date: Tue, 15 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789443033
