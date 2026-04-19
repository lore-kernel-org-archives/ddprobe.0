Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C455212D7C
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776560254; cv=none; b=f9RLBQ+7J+PC48lOM0oOrk+MpDL3l8LyhPtiu4xn1iDWVNVhZRSpm0E7izF7sgB6g+kF7VT5ebuY7XSXGC1kmryuIvOHZ+EaN71JxxuHtT3zWnFL+N/ebDdkpAiMExrdjB0uSQt6FJTYNG9vF7s/4ilKFX7JEU7vWGIPdVFQtEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776560254; c=relaxed/simple;
	bh=CZjNNhoXv2HqHNigx1SFAzdKVanFyx655XeWZ1DtgVU=;
	h=To:Subject:From:Message-Id:Date; b=JUe8KdqtMZNVFzKTaPsPS5gyX9LEU4zEKmXhZwAWSZpKcLj/x07fDkyvB9bkF6zkhNiTUR9oJeotjJZXZXO0Y6h1ox1pg2VXE4jByOFaeHPU95W4nuPdF60GzVEOrFTBV/I+WBTaOUCPUkOXD5Wd726ISvcBVYOWPLeThDo3iMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBQToqOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBQToqOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4402C19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776560253;
	bh=CZjNNhoXv2HqHNigx1SFAzdKVanFyx655XeWZ1DtgVU=;
	h=To:Subject:From:Date:From;
	b=VBQToqOwuofZdLjB3e6fV5wYZ57TFFwfwLZrYwajuU/lMQA4QphvOm3pzryA+o7tE
	 TZ0NjvOrlruaRI3G2lVR4a5OAhE5vf7vauBluCdRSHDtvRix6tRJDapBaIHCgloj2L
	 pkKV3KIjj5LLhGEkDTgAhetok8lWoeSSQuqRle64yk2HnimL9Drpy0/QGNxmxfhN1Z
	 8yvDTg98j6oo/NDlP4F7Zh23rFUCoiv0FFNN5arjFLrgj7vdZZh0Sy4M89GEYmNFQz
	 0DfehMe9nGQrcxqqPEb3SMDeXINMu1cYy8gcGaFfbn4a/baSfLax8bhxI3GEPV2+J1
	 pIsvKotFqIBLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20F5F99C95
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656025369.30654.15047472278490927216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8535970be3d6bc2238949cabe4d954341a822bafa65329a591d449c85cf3e81f
Date: Sun, 19 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776560253
