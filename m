Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3418025A2AB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747043994; cv=none; b=XGZ1GTgvmzMYr3VNcWliPBtiWMF9nU8iNGmxImrf0e5sAiJ8tJ2GyQIXPWGDTxcAhedVaIkXuwLEEMTh49J6KJPFIVKufNE1BaX6hobANZopJcDLXJ3fX4lXIw/xUhixTeIyHW4RJL96ZPsE86tthjXD5g9WcWHHGlCA11hROwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747043994; c=relaxed/simple;
	bh=v81HS7AanCWg98k1xtNe2qCK8ScrR438KnTL75Te9Fw=;
	h=To:Subject:From:Message-Id:Date; b=WBp/d8QhC3JgOLFdH4ehERrQ2g9qa6yj77QJWAMk/psRvsTwwRA4RqqWBadfCM6S43g+DQZPA51N0V33MdPiCYJP/IwDpuI6aphG2g/daL6FYGuw2/aIPIBqoONrSfeVi5y0lCLPlASD8+QxJ91WQFouwkGRfI9L0m4rDLClITA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+R0A4AI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+R0A4AI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAF9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747043993;
	bh=v81HS7AanCWg98k1xtNe2qCK8ScrR438KnTL75Te9Fw=;
	h=To:Subject:From:Date:From;
	b=k+R0A4AIBSxiwuiRR2yN0QGGoFNDM3qIyDdzkVfMGfxKJd9MgYZ1IbjLwk1C2RVp6
	 3QTCqFfUVRvsZRklsetZHVwz2KfPs/eW/xX2LUUapdZ8bWa0oxfAFqEvHZUzSJ2oRe
	 LHODP4nMeIAjgmVnR4A0VUvaZY8Me+OMtR84Um7faIBLj1+yD7gNwIgv91oi58Evqc
	 m81mXMxXP3pG+xRZfQ31nSK0Yh4gkLUOm91aUpsRS1Af3lrkMih4Vqy/qBcyiaSGo6
	 8YA0JU8aS5VwUrrGCml2cJhr8uJsbk2QkV66i5OedvgcBhLXQ2gP5FxIK0sDvRPTkm
	 j9fmaYRGqXNvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB5C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704399358.1363.15427624679828957620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de36c26cad6dc544d3c5989699f370560335b01b3528a721e45bf462a4f00c4
Date: Mon, 12 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747043993
