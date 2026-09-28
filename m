Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E265822A7F6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790574635; cv=none; b=G1pREnVBZ0kpBJlh3kKYx8F0n9AT9fGg92ktXnOElAxhMWyU5MGaOimVJwN63eG/IWmHiBD6mX+Ni59CLc5sVtaAMLBuuBeh1QcxioYS+xw9maiAyeAPEBYxKuUe+b1DoKIoMGsKESzLYg9RWUBEHZGjVpm0iuuwBz6pyD8Gc2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790574635; c=relaxed/simple;
	bh=IlVZBWNUteO2/O8++RYjYcoqluw81h6vVZ7BUeZaVZM=;
	h=To:Subject:From:Message-Id:Date; b=DspjrECmc1nI6BPhU4zTbLAaNPn5MVVyF0hsTmhuMC0qs0ZblnqnHQtjqUPP1n2suWSVi8gnzhZxzpfbwpsKruOdFE5QRzZoU1OqH/7QikG9AilOAbY+4Krs5/lxcsiiFadCwSJkRdggRVx0XE/WikqaR+iXkBG9sC2FYAfaGgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfvabWM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfvabWM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03C4C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790574633;
	bh=IlVZBWNUteO2/O8++RYjYcoqluw81h6vVZ7BUeZaVZM=;
	h=To:Subject:From:Date:From;
	b=CfvabWM8ZOcqVM+EUbdXsmw9J4cRZ8bXPQ6btokwI9gpDfWwrjL5W+HeptxXsllFF
	 C8Eu2xtqXZrL3o8jcE3pYaj3r+gGOMje/0i2q73zVMCJd4D2Pt7lmIkOzxHLPkut5J
	 V/9hGpcodsraetZOo3a92MYAd82M8t3Adtn+KmTHfZet5yTAw85g6qu4ZYEcMHTcPB
	 No3WOolTx7F61OBYg7kmgibOqjNV6yFnuJRiPzy7qPgL2gSblIZTiaT5ks1fF7wk5A
	 cz4ew/xroPQBKAmmljPbPXHRU8vlKHClBdkZh8WbtYKWjj5f16RAG/rNdSGCE53Kgn
	 Pl40ZpYNbTwkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD56BC98328
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179057463370.9527.9475311197142175057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0fc133624acdc6f00a7114cdefb1e51531868403265ef46138e85a72d09a02a
Date: Mon, 28 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790574633
