Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD002BE032
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762520394; cv=none; b=uBfan5sDoX3sruz/4DJLqYAp1rmPZx0OuMuOk5+Wthh+TLGn5ppgVXvrf6KlHweuphnyLYW8RtVP95sXHJS1K0r8EjJBCKtvLjMlubBD5Vhm3e8bI97i+ldMBIuKYzHRggS6Lli+lerEncKyHyOtmJy1qTRiuVqbrInkeJOD6To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762520394; c=relaxed/simple;
	bh=goVn88SGh6oo/cnC1ZViYiO8hR6hNdOft8y+rSCtHC4=;
	h=To:Subject:From:Message-Id:Date; b=RDXxom/1rbGqTUcAv0ax0zVNmVuUILVpfcjRzuLlbw0IVRoP+xLroS9hzmpWyPqT2Bo8U9ucr2imcpReM0m3DTloUJaoU3BjJzwgrTSLLLVeZ9EbKNAbgPu59HKmX9OJ+8nNNYP/CqjXxU6+AgIyezAKPAxZzO14UctPFfyv6io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9e+Zv60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9e+Zv60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAA9C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762520393;
	bh=goVn88SGh6oo/cnC1ZViYiO8hR6hNdOft8y+rSCtHC4=;
	h=To:Subject:From:Date:From;
	b=J9e+Zv60U7ErqTtksHQErWPqzFo6SjaTWHpCgTBlTb9pvusND/fZW4IahiFFlCTLP
	 zzO30OJYtMpyezmCZpBl66VxsS+SNE6MAgGPodF2/VcgfC7gYCdnUJzgLpaQa4+a1U
	 af8a88b8PRGeTO2Y1mB986caHn/DpeZa0jXo9SY/aWOhEzlegTbvOKS1DdBC+lK97X
	 g0C2lhI6I2fmHlZYtx/dKWZ8QRqQPE9Ljy9fkeUU9q95s0hHod3VyyC9DUl88vUIBl
	 Z12kkW/F3L22Bh5PGW633OIdY5QTmTHlON3lGw7yhZGfMjPiOOkspFslWRwMijmZl8
	 CKEWCSMefqG/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC1CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252039357.6883.7170877329498571637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2109c94657b351e29e64eed210770a54aac72cbbb70038b4e3af1e46aeacdd
Date: Fri, 07 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762520393
