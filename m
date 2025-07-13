Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16ED5143748
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752376194; cv=none; b=f1xpsrX6LgS+plLtQgsqCjZfl6djxQeQrbbyFqjwpdAi8un8Wr31Vf8xykSfYVUP72MTGiCJqFFvWi+C77RfiGI+OpVBpVAjOt556vUk1PMdwc5zjBhKbyefy5DiYRxkqZujeUtdR1CY528NYI9vu6ZmZGRxtJPuE5yAfVoPm8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752376194; c=relaxed/simple;
	bh=aF1p/klVURkUqYGqqOVTH5qZGVyw5fJhh63QMWcvPQM=;
	h=To:Subject:From:Message-Id:Date; b=Iq/4rXv+MYE93cFKICHrHh2pgZe7yISaoNhzHI53n5CacWdAchxEyXzeu+wF2zTyze1gB/AXKotArlcp31hDYZFFsSH46PXgJ8rgx0PViLtitZfVNrr247jQU4lnVC7ge46LBTVntvDo34r0YK2eGC67Cd0E12j3TTopeBsNQrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXPdRRh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXPdRRh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB8FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752376193;
	bh=aF1p/klVURkUqYGqqOVTH5qZGVyw5fJhh63QMWcvPQM=;
	h=To:Subject:From:Date:From;
	b=KXPdRRh41LfOLCPwhBieWhIQO/vtn21zIosRZDk6Pn10NRj8GnIz8ydBUbK7q/dpr
	 vPEEd+8p7Rd+mGnc+NZHsa2PkZL85Ejnc/XjRkGGKILR+SDvSygW61HyEEY0PYcNQN
	 0yWW4GYDzrtZAgVgaOE/wK7/dKIwSGzWME0tJx1gMmObhGRfzvEeyDCMGGtjU1YR80
	 le9ihG4OREb2h6J1vaitoRD7oYJxHCcrENYVQw0HK98cbYfEe8vWHLfArc+/u4QnB4
	 l+lgaLoGBqV16iqIcCHSyJFuw/lcyAHyoz8mCM4v6+nKDiYIST05OVUNvKV2R/VEqM
	 PzJx3WG+v2w6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E88FC83F10
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237619357.2451.2341488058939808516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5671867e5850dbbbaf5c376956bc2c9375fc671c17c8856a00728dde3cc068b9
Date: Sun, 13 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752376193
