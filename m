Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9481EFF8D
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764231174; cv=none; b=dMIuTI1gMcX+BqNBuC3usixuyUZSA8MKxzcw5/K0JKpul/tntOE1pSVRjXuFAhunHjsSFXoGwF+4oimhhB8ly0B8PgdkJZqv7SgUnd19qHthThTAjU7UUEXVHIvndy+GTKdmCKSesUhPPQViaDx4vnJSY1SKVqiLP+y7Sx5m1yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764231174; c=relaxed/simple;
	bh=Tshya/oNaq+EZzIn7cJ0AkAPUzAseKPqtIeEEircOM8=;
	h=To:Subject:From:Message-Id:Date; b=pA6F+7WQsF5raKuaFz2kwhdR0uytQ+wT3LIUy3qiH2/ViLS+E4Nz7uHIKeFPUKcZzp7p7pRmdgLbcDmGmDT5iqyWd9IjCrKuh6OaZWfxG9PvhXazF0hU2cirn6qfMLAvUm2edesRQZA9rJGepEwhtrfBnFfCWFiJ+yoD648jtes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+SLxsgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+SLxsgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3434C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764231173;
	bh=Tshya/oNaq+EZzIn7cJ0AkAPUzAseKPqtIeEEircOM8=;
	h=To:Subject:From:Date:From;
	b=g+SLxsgRY6Idf7Tk++Thbe3Snq5YlwgxT64NIbbeb2WOHkgYRFENeFN+j49KvFpJt
	 DzMBZ4h6330DdVmtwR6Mfgs+3DTGZg4z6R92AkTdIKxLz8NZC8A3fSn9Hc0Z/uNSeP
	 uFiYFowrcYcqx/IGtA3KY1IAFDodA8ExyNcmXnfarpXprP9MLYTBmbfcsnHA1Wzzk0
	 cct2ftqBSYedG1m13dacB0bsLnnnWiy4rW2DfZSje93NAtKCu3ttTH7fkORNQnuSge
	 DsvZ8lv2Eh+52XBtGs5P6urI+jJ4JweYTMXzQ7Dha8cL7hqkTz4F7zi0nEMoabTKmI
	 lls/VlkUBbmlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9295ED11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423117359.18554.9169085004014123878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e476d323d2ec8952bbcb71ef6d4ad1ee73cb9035b73b4b2c773d5669408dbf04
Date: Thu, 27 Nov 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764231173
