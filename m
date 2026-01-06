Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD8B7E0FF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767738234; cv=none; b=DpswPMLVvXOPGl1HDZ3IHb9haXLWgyluhTZ1cnJYOxByuBH39rVzoyxPchXr1JhXs5EA6pb4LBuIzuFeNh+ZL6yAGYo2C17Hi5EWjltGY+NoNv1Pze9tjEhADRlbBbiDoFfFV6HO+/JicdHOL3J9f8BbJBQoROTCdybF1m4JY00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767738234; c=relaxed/simple;
	bh=V9JciCS8/MAb5ez0TSUa+Tipfny2glOlhZiGRu8zlKI=;
	h=To:Subject:From:Message-Id:Date; b=EYcwSy639OGVztRsBT/1/RkkdB4CRALBhsVStJYxlLR5Kukiha7zaKh3yJ4mZLs4BbO1B3TjdZ4Rf4euu5HKFIgv7LndhZVw72jfdB+AxZJXWsj7+UNET+iSpytqUnG9fOUg7NSsHgdWu2kFZPctA2X+2mWm1o4R2kyC6tflXk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWkqhyHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWkqhyHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A034EC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767738233;
	bh=V9JciCS8/MAb5ez0TSUa+Tipfny2glOlhZiGRu8zlKI=;
	h=To:Subject:From:Date:From;
	b=WWkqhyHh3ki0eXdhnlqZwLjUTBOx3ZdXsbX8SB16FeKwcIaT78/aqhhgG+ZhRhzhv
	 WOAI4OaGuLYDazGWSQVoJndWyWwX20Ew8/ISm6EBkm3VUJGkdh5EmNpNKmZb7KQAx2
	 lqLyFc8GuuEW5ziEB31u1wFmffFyGAqI/d7eF0O4gL2WdADaAAcmCvNa2VZerQIcuE
	 zW05196UPisSd9rN7RWjBmOPWOwX6Dty6HdF9QK/5frF92TyPnZgt4vqcrJ+8lfXfG
	 4mtcjyJ/SWGzLnfSj1oBng2aR51jwg3bbGjR80TgYOLs8wap387wnayScbLtLSN7sZ
	 7qKev/aYMMP/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9010CCEFD18
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773823358.8090.9378715938658659278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad053993447cad44757a20aeb9ac8334cbbd744829b5e38c16e8869753620ba8
Date: Tue, 06 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767738233
