Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E00DBA45
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778850034; cv=none; b=rUwGeYhqLYswIU1iLgTAkHEVwPHOoVY09uaUg6MvZ8MTgXlZxM5y6q8WLD0lCmQyiJYgMNGpNnXbjCrdgLbkp/bwWa2icb57W6WhrLgxm02ODLIL8/KqvRLfn/AyGlCNQSp+NgLg6MpX2gD762ew+MlHQ0sXpWjee0k02Ylo1GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778850034; c=relaxed/simple;
	bh=qqjLsvfveqbA7TRzMOC1OupFPHUP5a8f6YHEOdubS0I=;
	h=To:Subject:From:Message-Id:Date; b=omOCPVgnm1P1W7C4SVCwvxzVP6vCYqI9NjFECPYIFXXAlvmUmHhSYK1q6uZydRGT+tYu//NjymjUw9uD+haG45RzlCKqOwTIjHwZApvrknm8q3eBlgV3B/j1EWKE1mK7hSdxEIywpg6aSiYvvjNbSprgOWqjxCSIew/aAJZ0zz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZbOgdjv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZbOgdjv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0190C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778850033;
	bh=qqjLsvfveqbA7TRzMOC1OupFPHUP5a8f6YHEOdubS0I=;
	h=To:Subject:From:Date:From;
	b=nZbOgdjvkysccnejkKZ3Gonu7TMEmkI/0NnhyF7KPQ89hLpj/rM6ijScKi3VSGxde
	 IHjCt2Q9mnhKQCVtNM5SkDdIs1f5TT3IjmnhkjicVXCygn6IjGDbcMiU941D+HgyjE
	 SX1Sk+rr8gXoChQUSW7/aWAeZayIvP3MOr3X1YgMJrs3Zr/Ifqu2c9pYA9mJ/tUZFY
	 OyJ+QwOhDaL4n5Jq4o2g/qfTrginW+Eg5mIVbVhmS7Aei8Ntpk/rNqBqnNNHrbtXB+
	 HLNR3d3lJwx4flqDvfjQvNazZVasQY+ESIXylQ96jqzhPXoz7iqPdfM3gq9sLrLWfP
	 nT6l3a8vGzRiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1853CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885003371.23442.8823506369891977788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0bced9d7b3c61a3ce6d40ef63091743dab21f4b732aaf0478ccd74b4306c7d
Date: Fri, 15 May 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778850033
