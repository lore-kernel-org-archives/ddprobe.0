Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02355284883
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771856094; cv=none; b=Gg0eh9OTONZAblYYk8fhijTmfn7sa+5B1mPGtEJfe/OXj51IaYbgaNXfWpIzlFIQnjiblMR3BQcKw5l5J8x8cA+MeKDES4RWKcRYQVmGhzyrIZr47QS1Qq3XVwRdDO44YGMmOdiZQboIjJt4GO/6l+Lx7V2CN8ANtCxIhazfd9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771856094; c=relaxed/simple;
	bh=K6XPeHqANW9TDLzlx4DV8v5HCZRUcUH+lftpp6dxV9k=;
	h=To:Subject:From:Message-Id:Date; b=CIufA7cBbkk1Dr3Lohx/GeDW9SetCAs30MW4MmBeMg/Oh3ZCHZo5VWP1ugbZsSJ6862khFt6up525oL3dHCyrKyOptQEdkguMJAFEzMADNwcTnDHn55OAnBuibAjEUP9qlt+8PsRunWtdwqeRTmC7KQokuIbP1v09faXsxlHFkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrM9H6PY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrM9H6PY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6793C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771856093;
	bh=K6XPeHqANW9TDLzlx4DV8v5HCZRUcUH+lftpp6dxV9k=;
	h=To:Subject:From:Date:From;
	b=FrM9H6PYLw3znfRpgUbEsyvInNQkfC2z0iOOmx6NLKnetmsAHlIWBuCJMNa+bEr//
	 TKNYk38ed5ejuAIkTKBdrsmKlOUGNYQh4b2Zu8iuf2w7cP56+FBmlvfjD0OOO8xvHD
	 pYgPez1IXQp+myTN5h9nnoFq12qxSiiiQzvos/KEdmWOGUHVNJb4YTnccV/pwTiepU
	 kHWGiSXU2dzIyo/QeCeFn79G4BdLpLeL//jsrI/W6q71Kf/C5SGEpXTk/tTfi7oRi+
	 VrxsKIw4I27x7aBhSt9cTvwBrRUwor/HeyfdimA4XGqY+ceWpXVh59Q08wjK6xUcDT
	 bIuYceq0r7fSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91719EA4FBA
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185609358.18106.7460988860379091789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6bb69c2b98ee9e8aab26373071400c50aca1075443c0949851338d37fb780fb
Date: Mon, 23 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771856093
