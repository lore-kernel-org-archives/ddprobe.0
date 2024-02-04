Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13944B661
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707086897; cv=none; b=Qv55tkaXYHpDsgVy0kI8QXoZ9TCXObtc11ojTSrpu7JdMfeXG9e3/R3B1XWv/+TTCuLO9v9c/vULrpL4gdEh+T0CPauSa2GEyD7V9vwEASZ35OydW/LLDWseC/JdzEQnHVy1qY5aJ7UddMk2Rzms03VG+ycBdzXKNd0/xL7SlMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707086897; c=relaxed/simple;
	bh=JbXR50a4snHYaal083Xe7mq63Cs6S5BE3CLkebCcOIk=;
	h=To:Subject:From:Message-Id:Date; b=C/r24sY3jam1uYLj4ZLkwYHm4pNIJSlnO5VUQRzurYGI9UP9OgcY+F3AimykYcLXw330exs2yW4ooU4jRCyqtynNVXc1UpUP8YKf0eFOFDPR9Yeyd/CHpXKdZwrCnTvyXM40b2NQezaLpzq9tK5zLPiQmpEPJPns1r+C+xS9YUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbg9kPQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbg9kPQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B227C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707086896;
	bh=JbXR50a4snHYaal083Xe7mq63Cs6S5BE3CLkebCcOIk=;
	h=To:Subject:From:Date:From;
	b=bbg9kPQVZaE/ysd9BbaO08luf+ftp4g+PiZ83smT1NFgVoOYnLO/NqMe4FhiPoM/n
	 tXkDwQAjHzfBaHpA+m+OzkD8kRk3rlOUBJguSJ4zuuzTywfwnTI+1zO5IPxu/DRiZq
	 5dlyFWqgd2q7hUhEkshSTDzYM2JzrOvbPuElZz53dpPmVN/G40FBr6CzBesF9eNpDL
	 W8zJw8rfIiXnXn7qVCfedm3w9yjDyDpb3qDK+o0aTwtjz7chWy02S/ZwkmM8tyGHtm
	 mbHjv0lstTmz3th5Rih1IxVnNOX2NM4hZjk9cJnPUXDKyFXQQ0G4Tbr+v2W1IwEuo3
	 Oix6FlYKFAfhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F9A1C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170708689641.21403.16117240106519067207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5571012cec76e6776f606bd918255929c0924923801c114fc662f03f69f125
Date: Sun, 04 Feb 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707086896
