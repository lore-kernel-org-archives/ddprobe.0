Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AF320E002
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749847794; cv=none; b=WvqjVlgzJpgPk9MeC/XbVGJIZsYU4spNtnjpx1PkQX8Qzlj6jiuwjl4YVTzlPlthiZjvONsyZopkGnZ1bD0mpPTovSxc2l6HhThZJJWeeS3E9WuiRl2ECB4Jcdk2UFW58aBoKEVGs72kEkm93fbgqnklWzCjt48AjjBbA5L91c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749847794; c=relaxed/simple;
	bh=kNGX5fTYES4/GMIFpCkUFLhGOkOdO/aUSujA109UxDM=;
	h=To:Subject:From:Message-Id:Date; b=Iy51geeb7r+FTbk5Azfgl77PbLaa8xhiCKEyoT9YgTfgDs+872eTfRVk/lXP4/aEC7xYvPgG9IicvastThI8TS21Y//hwfBOPMLNWmur5eO1Rso5bRT81PRfrb96UkBzhY3DSN6T8NRYvVkrdN3MjOYLWM628FCVlYjnlkDVVQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHwO1alI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHwO1alI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE2DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749847793;
	bh=kNGX5fTYES4/GMIFpCkUFLhGOkOdO/aUSujA109UxDM=;
	h=To:Subject:From:Date:From;
	b=lHwO1alILrUaQwGFzrw6mctxiOvx6DG/MGpyq72NgZS2HP5+/Z2SPBaro3zqH+52z
	 rF3UrkrGT9Mo62rv+GfJYZsJGymtQh7B0eMiXq/wfojUq8W6LtLdyol0Si3/juNDSF
	 J8WoYLjbFG44ZcrIsLw//Biy1DpmTO9C7zVe7OJ5r4RJnB0/KQU8dL5ydGEPvKtQ/n
	 4IUEpcXdOpPmlkLnWhzQmaWVc6HN/bDyO9DW0sFT3/dtt79Kdgbd7YZRHzHi9YkuFV
	 i6yulhhV/2eME1h7xDeiV8zhtpW6wBBNQVKSgU1cDIaaZFDrWaQMNRt/xNeA2ncw+D
	 zig8KPe+PAwfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFBBC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984779357.25875.12678276950222668366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70793dd2bad03673b02d3233808cd114d92f75146cab6fe10c192c296f83dca
Date: Fri, 13 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749847793
