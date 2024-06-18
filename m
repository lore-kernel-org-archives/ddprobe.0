Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B46B16D9A7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718739563; cv=none; b=bgb0F+WUGY9hqkuB2M3R/4qIrT4MXK1/4zidV0v1mvvHKhdIezKeTbqAH8IX0uSrgLczzyh5jOvE21paIaX/kEiFTmsKJcVtLCiQuKsmUeL07+cesxQ9kc4XJLuPJ+MmNGxyrXdo/OS6L7kif5T6YCuzDhtlF+x0XVcT9nfahHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718739563; c=relaxed/simple;
	bh=Nna+iRh9bo3+rt2DWDWNwz+IQZclNYEkkT4zL8Fo85k=;
	h=To:Subject:From:Message-Id:Date; b=gkV0X6rEzBfRDfSYtmh46Im2TdqV/LYU+ooH65bMqTxjLOHcaCw2Kz0PJ4PFaU7hN1VjBt1uWhtWXT4eQKzJra5hZX+2LuuMVfcP30vckXIBNZdOmb18i3eA9eiE/JuFUC67pUxN16533UFMoMIBr2zyniKnREHaZ0I6NJgnOz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4ruLUCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4ruLUCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9396C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718739562;
	bh=Nna+iRh9bo3+rt2DWDWNwz+IQZclNYEkkT4zL8Fo85k=;
	h=To:Subject:From:Date:From;
	b=k4ruLUCvCLnohpLhifSohl+eEh4qXJrhjmnDlTvyRtdEtiajiChbc01K9UgGGEHxc
	 2/xlb+ujFN8EQxRrrWmuMmoiLHkzpgHaK+M9jM+VMsnSUgzUfOXTIICqCmpKORIAV6
	 Wy+7U7416LcNYAw+bmDHeOVhpe/rwxMr2Pza7nq4vM4yiTwMCg1KOQwgmS1xLKItKW
	 +kzhy2F7wp6YdpMOOt7q3pyJNUvR54jcCw7NbJwUoxm2hXzbkehJLYyyXornaDS8+6
	 8ZQhZ/NutQcjezQDz/sYU6aLLS2hIHuVy6cz6Qsihs/5uWZ5Q6O9TsNCRPcZb9SLOf
	 Fk//DG8ONfADg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C76C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873956278.17882.16239296713951132487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c4ebc5c16a32a0183830cc6776ae054ce4613a8275272543167b2c503dbe60e
Date: Tue, 18 Jun 2024 19:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718739562
