Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60AB9463
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789287034; cv=none; b=iW3Lnn4CvvglFrzCIFrMR6+BI1iVSTWzNF+7TkBtf80F7oULzYpt8zOFFPbeyAq7RLmLtJdcb7HCZTm+9ZN1paWsVBefzis2bNvgdJZ+jE4yFOag8gfkgs5DxrN38kawYD+eCvsa377fifRdouulILcofB/BOFGieQBJsqga9yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789287034; c=relaxed/simple;
	bh=8S0b/vDcPvOL40uZl+qD740ee8okYRsnEmUwl640Nyc=;
	h=To:Subject:From:Message-Id:Date; b=PjM0lqDLrKvPiGzyKDUm/LtNiXHoahX16luJHnAHKlMS+P96PkVvq2QGrLz9yq5QOOucw5orj6eNEBEF+rWb7UmK7gGN7udyLmF/cjcCe9ScqHEuegZXS2tdVANDn1VYuIf1rkOye78Y27ZLak/4kRNd+/6naKzRQilL31w3rF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEIbaoq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEIbaoq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB37DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789287033;
	bh=8S0b/vDcPvOL40uZl+qD740ee8okYRsnEmUwl640Nyc=;
	h=To:Subject:From:Date:From;
	b=gEIbaoq+K1yJD7wGmWb5L+0IacE6bHbMDPyhkI8jrH7F69CcTolV2reJHO+nlKBtA
	 ktaQu7Q7/Z/z55S7SmeANE/RgPC5CRIAR5nMxAXYPKB9WDPrq8WyLcDOfcnbwR51Ik
	 Q5FGPurNfAywE6NJiY2MVrbr3ssMo5ZSIuvSPjvBnKd1xSSsgmL6SrI2+oHZ/fVWQX
	 PfYK08BIRbrEQtYJz6A5e/14WSbeUUl/U2pQpvDddf4zoCyG1lYjfy99SsQy9365aC
	 do9zT4dd9applTAsfC8gauGnLHog75W/STomwExuKuOk1wtzdBmnb4g8HmDyQUP8Gc
	 H/9XuBgP8F49Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B555DC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928703370.10653.17921500995087405003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd208fd71fd54d819edabfcc31bbc5d6ce9703e6b7135fc1b2cad8e3a5406b75
Date: Sun, 13 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789287033
