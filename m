Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B0A274FE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789706434; cv=none; b=AvD6ZPH3AKdC7kRwnlSj0tj3Sne1qasUnS4p67or7JwP7WT+DL8laJZuoyBPjhKMuUZEOxPs4C4AmCzLskLbu5vBPZNcJ3XBuwNVjKXCdU9YBl665maS3JphG+l/IPf2G4vi2h2haI8NW3tLXsr56ISyX8nE6MV4LwawAIOQ3lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789706434; c=relaxed/simple;
	bh=kxv1xbIO/YBriV0URBm9a+Aos0vhp4eFvixakCbioaM=;
	h=To:Subject:From:Message-Id:Date; b=eeIkqM2KOFoY2egET5uvso8FIt3/kvP/9EMdbRdZB91OvPNmFsBYc3VZU4+4iS3zI3/wVt/2th3ibtMsW5JvTMtJJWB93fuqAkII2DXkv3bVzs1Ao/UK467ytBCMwoiy3+rYL+Bd8wQ4Lz87P6ADRfDIu+WI8b6zBPXg2F7JZEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEz8i3fE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEz8i3fE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8AC7C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789706433;
	bh=kxv1xbIO/YBriV0URBm9a+Aos0vhp4eFvixakCbioaM=;
	h=To:Subject:From:Date:From;
	b=cEz8i3fE14H2IQqwi+uWTZu/8RxUpxml/czc0OrZebWVcJcvz0Sr3RR/HI5pBYuDg
	 n9IUZU7sHjEga1+sb5TvxKiI1glxdZzI9e+eYP14u4XVsKmzl/MkmoW06vPO5bHuKC
	 aMuVzkDhoTGOYdBFgQAPPTk+XJTXf8lefE5mXo1ayQeWh7lQ4qEJbEn5hCpfx0HAd1
	 0s+s/Z1NF9HdduxzFTLfmH6ZLjqcXWucCgpDYZw3Skd9923AvuX3bnwzhRbiATacvi
	 w/o5kxQgjPFyoBhyfVbOdrAJTwaLEnufzVOp7bxVwmTRTBQ2R3z00oUDw8ff0YnxD8
	 8wAqpWwecg4Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF83C88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970643373.23620.9372092471982265554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f7c20bdb28d55638ec8b9471d1b571046f7090785564cecc890ed96b0d708d
Date: Fri, 18 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789706433
