Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278DF30FC33
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776269854; cv=none; b=Nrqsc+d7LEY1PEpEY+fRK4dAcnI8ekTjaAqOQkqu7/OgYLSkQyTqIB4BZLTuDWQ4WpQ+DGoDDmYi669yZ4imprja2FsqBrPpTIC4cY9gZ7isS+ci17GqSN6oU4VLZ7xavPxybycFKvo8af49BiUTFqvXfglgmDT2/ej3dBQyVos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776269854; c=relaxed/simple;
	bh=iCjdkLRTj22LNZyAVJW1swnXXmj3goahCHtaIyeCchQ=;
	h=To:Subject:From:Message-Id:Date; b=rOlyp3f9ngiFWQiiNjqFpqfrph0xG0RRagEgYb7NVFdIgo+BOtswXUukl7hp3y8bdsgjQ07OX6tqioiHDMTLgvd97Aghap3+6RzoTHc2hZKS9yYohtyCblO0k8TA7F0I0ZAOXGLQ53ROUMROW31VX51KGRE3WGCeZDTRs+AkHJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmIKiXLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmIKiXLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D74C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776269853;
	bh=iCjdkLRTj22LNZyAVJW1swnXXmj3goahCHtaIyeCchQ=;
	h=To:Subject:From:Date:From;
	b=AmIKiXLwPKbMPkZUmH5iDgg++JQtIvQKkkW+KAa5JMD3v0nT7zayJjOoHl/HdqjtR
	 Ah/qLu28gxExsCNG8+eNH4vdm7UDHK4WV5j58XipJ1eeysmXl0Gv1LigBIUuxp/HLC
	 8YaJ90NPPK9q4nKHrvXV7PHwu8Uki74x+ita5Qb3eNefLKiOx9x0P6Um6z/bPGspK7
	 n/fxhhioJw1ujKcNdx3iMKrr3wR7NV8xJH3m+E0yTd8ouJgMiO73xWNKSFdHCuDeYR
	 AoPw0TKz4uZWGyZZcmnXGRBWNd1KLM8VOS8aVokMcO2aL/JIbxATR2lAsOaHuJ93BW
	 lON3ErtDNvLoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E08F43859
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626985371.7866.18382753062137564370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053f6341324455e670cba732c08b321d9065b018392779bf42b38fb076a49f4c
Date: Wed, 15 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776269853
