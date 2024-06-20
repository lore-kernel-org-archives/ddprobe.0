Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769CA27451
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718895623; cv=none; b=oMhTTb9qA9vWDru7ImUt7HMgm47ys5ppA1mcs9J5idHhsIHBdAuiesHvCgbu/tUDxwCqaFUy4hpJefjXcms3I+jZyRyoCpPthldIyF03neRurvnJGMdMVd2Fx4uGrPnFY1yBMafTUJMzIPa1HtPB3VkosCu/TYLhNL72Qd3dub8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718895623; c=relaxed/simple;
	bh=j6+iiZcH0Dwt671xJNgCKoC0GZHvStgnEHy068JwvrM=;
	h=To:Subject:From:Message-Id:Date; b=Ne/K2FMK39iLxSXlLkYEtlQU0XhAVG7yerGRakZ84bN5600fUJCsvtdFcqvE+0DUEkgNMsSZj6n/ykDBJNl8WnOnCoopxiwH+WQ+ilP58DN6RSO46TelhF3bVnU9laTJWA15+KNfBsqgSUGoHSLH7qP0V7DRVF/fxXcrlFUhPxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kesxMrgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kesxMrgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F34C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718895622;
	bh=j6+iiZcH0Dwt671xJNgCKoC0GZHvStgnEHy068JwvrM=;
	h=To:Subject:From:Date:From;
	b=kesxMrgRUP+IvCCDnxi+SSytHX0nYW4XkNDhgNAYy6owylj+6bw9byiasaqJcZL1O
	 jJPwA0sdn1Laxf/v69JnMmUmNzkQuZA6PJ0P0lj6DDGnlVirWuqLevNXDwTAlp7Fwj
	 e9FTr8xCaCRdslUm3M+qQkh2+FxZ1C4RtCr71DbYtYzv7Ml5JeVgi+jC3BwjdpR2at
	 IL0zXF6qn3mCSMxnXJovG5IIfMVQPQirL3obAWHRZCox/yY19PLRjG30epURD/Nm9H
	 AUIslXx5p+2AoKuHi7ewQvA0dAd5rf9YahmoEr+u9prkFhMgHpk/rhPJCW2jxZmbkW
	 ntrf+OhIrAaqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE671C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889562283.15245.2955520860925565398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bebe97f588aad637bbf6c4660422625c95013a161df707b6cd4ffa311f837cbf
Date: Thu, 20 Jun 2024 15:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718895622
