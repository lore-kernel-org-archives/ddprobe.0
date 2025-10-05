Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBBA1C01
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759673395; cv=none; b=l+WkZpNrrE3wiHRGBOMhX6SJA7u0LxxQ72z1yonAFJ8q6PIagsGMck1QWx3t3zjuCWzsLJtvIGJr0AtTbpn2/3f3vO4RKFHNGYE7wKTCza6NOynEWYaEkfg1w9FjON4ydFeHxPMcxqfeIPM88GpP5UngAAh6Bt03bmNqFKX5ZIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759673395; c=relaxed/simple;
	bh=VKlOzyaSF1UkcxeVH/GZaRk1fR6nhb4318Qo02qxM1o=;
	h=To:Subject:From:Message-Id:Date; b=BhkcJ8/4Zh5MkSfDjODCReF0Jdw2l4tgEot8GwqPiNpakLHdwsXOXpe/yH0xySpxtcI+8XS/GIaVX0tN2O9Zmf8W0GOYkB/g6mS3RYTt4f45g8JLzQsr4YOmZomHnomMY37aufUNTF3XT/Z3ISNqxpEL8epDgOI8Cwj2oaklE68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAIKlWlg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAIKlWlg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C2BC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759673393;
	bh=VKlOzyaSF1UkcxeVH/GZaRk1fR6nhb4318Qo02qxM1o=;
	h=To:Subject:From:Date:From;
	b=XAIKlWlgT3nSuIVLY3eXus1sNvJFMdJGyPVAmhlw/LyJrc+AtWEbjM3wsPxvOuowU
	 Cnzb/mMCoS3fL/QQP7bh+9LkW+TzwcZgGcXsRQ8lcpDk87tk6Ck92FlRB4kDJf3jjH
	 OigGYhUb+BSDV8Ed7ZcEw7MC6uAGanecKNDbZHfT1IF9tq8yUC9KPpCI9+Z4MA22sE
	 M2RVKNuaIwwzlGEvWmT8PDDrD/xRzwn3x1veLHwSJ064ybXXzuon9PFSLsP5ufJKra
	 9+VrTCAHChziOVQjRGx1gqf5vztWW6tYg3YHH4HL/3e9O4hekAhexLiEhXuTrEPwJc
	 Rxxs5ReVQQ5vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9455DCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967339358.4166.16741791526874754650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30fa3d96c55885a18c34937dc09040aaac1f43d57b9c64b6755a797fbf993d06
Date: Sun, 05 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759673393
