Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401502572
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 03:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721015543; cv=none; b=Jjq4CupDh/VjVkM+X7pE+caxtKAi9NDeC63qSV8FEIqiqyAUEgVbNmMlun2U3t4ItD9CEzopa33KlGDx3ulvdU45XcoJ5gfiUIOG2WeiMpxHPYF6u9GfYpbs4KPaG6EE9MGdOYU/yDVRg4zUPQuzMPrF5592s0QmJhqx2i0OPIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721015543; c=relaxed/simple;
	bh=uD4UMpe/vfdY1M/y3U19RchfZgskzlYLSZT+Nanvl40=;
	h=To:Subject:From:Message-Id:Date; b=dP4zFm73mNVjc068xAjaYywYuYESL/dOhcRPA8+SHaJO4Oq1YbxKOmkjtQG8OyH5y8l90YoLUaE6cIuVOLhGi+ETZQ9XW06HvP8av5HNfPNC+3JtZDFjQvPiLZS4q3GJrqoj4MB8epLRyOPA5cdMKyUv6t0x0DYfUb5bUTOOuGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiNd2JTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiNd2JTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF72FC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721015542;
	bh=uD4UMpe/vfdY1M/y3U19RchfZgskzlYLSZT+Nanvl40=;
	h=To:Subject:From:Date:From;
	b=KiNd2JTOxdfPfSLsy4Dyxel/wezmBmZVtXgPOB9ZkkbRJmp2OOsPK7ocEOTohe/lz
	 qSRsIn8YLIKIJOCsUikgwBaYrpOOjBu81AYDBKjol8oel4wSReeModYLyz2elkPfVP
	 4l4Jk5e4neuK02+EzQg4YCSbfscl8A+nZsyCyY53yq1S3TMIox3GouZV2NGksx4XsU
	 O9P20+MAbx9W268ZjhsdIuOzhA+UpNaHZshPKmhjFSRdMKtnag3draSVAhCjKXHBWG
	 SmoA5ikcaV0Fu4+OGcfXwEGKqRdGbK6TN4dCcwk9WaD88unEHQ1srAFXTi149JSl8B
	 GQ3NToSSzOL7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE247C3DA45
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172101554276.4083.3315379224492286831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c76ad1a6cfc3cd9084794068071747367c9fb39cbbf799edb1d8608ed590f42
Date: Mon, 15 Jul 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721015542
