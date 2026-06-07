Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269D8296BA9
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780826674; cv=none; b=RjctcIYDCvKasV1vRcVJXrWWY+T6ZK0YGrT2qmydAAYknzYDhn+bmf3JlnHhu5TqfWMQNdG0JtHth3cDaFouhuanmnI/QCvKpaeEkbtprZWZZtfxoRnkv2rEDJkZzxGTJkVos2HFks/mePgE5AWO28UMzC9QJjJZXmKLu3/2IdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780826674; c=relaxed/simple;
	bh=eAj4Uwxh/0HbhUlHvj1MzORA5yC0/efKU2LEk35PlPc=;
	h=To:Subject:From:Message-Id:Date; b=Md874/DCN8PQDnsUnsXJy2BIn98v76BnszgIDkZYZfyr91D9+vN5MRqAG2stTdLEhadiY+OmLwJPVfuFQLH7Y4iDaJQLFZQSauVckBNOkR+6XvZT5X0iK3qmzpHTjKFP/HkoRUB1HkxgT/dmbgFx9DHGrHdZcGbbnwhjEYA+eSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WopmQWNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WopmQWNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A41C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780826673;
	bh=eAj4Uwxh/0HbhUlHvj1MzORA5yC0/efKU2LEk35PlPc=;
	h=To:Subject:From:Date:From;
	b=WopmQWNpEo8LoYAc+u+anynRAWZS0POBOrYCCjMMUWv19goINaHkht039HrYMfjfR
	 /F6qf/cKKUI5u38v47ueb3tVLpM23EQGyj+QtcRJBT0XGKEptiV9oz0563Yvgb+K9G
	 QkLbqX7C378NomkI83bGE/kCF4dEZuDbSZ79iPpMin+iadZy9qJgJpPvVlgtSb5NfD
	 KYWMAm8rmLXKSnRVXMlGyMSnOiaiCeLFhro4i4AGvq1jJKHoMXmxmPA75n9Xt/lGfK
	 wMTXDoJs4iftO11cmD9fi+O7uXgOKgNd8J02dv4GOcwqrooNhTRk/KG1CopRnBqoHR
	 7zjmpWPzbCYXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0A9CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082667368.11561.853528139909212931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0abd296433d93b1f82448dfd49e00503d1de91e21c3cc82805a4129a27e43a
Date: Sun, 07 Jun 2026 10:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780826673
