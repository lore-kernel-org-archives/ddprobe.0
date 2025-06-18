Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A6C2FE373
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750265395; cv=none; b=JIsvBaR1rf3+cjG/GcTFlPANle3rl829+kdgMb1OGqjOlDL7jh9own/9zAABxz5J9QP2+FdRU9LJa8nsJPNbVwPHFsZz6BZcVkRCY+vyJi4n5iOVvPdO3YjET2v3x5j3dKyhEfudoKYn62XXopMBGmHMdztyV5SC29Z0PMfdcCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750265395; c=relaxed/simple;
	bh=NLUt+SOictmQazfbIknDTrEn4eTZFq5KzKeD/+KKEqw=;
	h=To:Subject:From:Message-Id:Date; b=jCqF4y5UnUkNOv6EUzoUf7M67vQSv+f0wfdiW1ksTz17DfUoel2ApyYo2voJ/CYtbhuXBm8PhUtgM+GFHdac2WuJdBvaA5vXrIrxx7y8pMyDq0u/XBV3qSD5Bv6Rs0y31zQv71pPBZ1LCNMz8BMIIwp890uSxEI6ozX1Jja94OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SldfAXry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SldfAXry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6DEC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750265393;
	bh=NLUt+SOictmQazfbIknDTrEn4eTZFq5KzKeD/+KKEqw=;
	h=To:Subject:From:Date:From;
	b=SldfAXrysF9tTxaXGpKMVhC1uoJxqOnHB+JZ3eJS6oJbM2ZABCx7aH8eCmWzlNnR2
	 mxNEbRugLQIcWYCkDCB6ASSPKYi2rcsLpdehdhcyiUBK2+nCaaBsKBUrbo4y37rKFY
	 ciQTvJd0tzVNzGrGrR1UonmQdLXX8KdfXE3enwfsT0AB5IhBoNCHkd6fILOz4soNir
	 3bHBZLa5X6+RfMtArPppx/6avIBQQc2wAv6HnSq4uKjtSAIOlApoZX9wbiJFdA/jVm
	 rX0cV/OEX4wxD80DV+12XyLe89xpcbOgJyrAaR0GxoinLOkerAyUBek0f0UwaWfa+7
	 ldYmCWS/7p75w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9025AC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026539358.7778.11222766807437268117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3965d22cee0d0ce0fbc9cbc1146702e8cb93f8349a9637f43ea51fa69078da8
Date: Wed, 18 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750265393
