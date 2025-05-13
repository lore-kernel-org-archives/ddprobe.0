Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B21433C8
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747160994; cv=none; b=mW8WJXvQ+yuSGedaZZnPaZzoDtHRJCx9wF/MWptTawrClhani+K0V699fuobUK02//YFPzzTgF9gRoODCtkbblJJ8gnBdGa9k/GJ+nnKV5a2UkMCKRW83j+B/szM+PmZw7PHjN1ViYRogcynWA94ioXUwLq7qqizYP3uECNeIDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747160994; c=relaxed/simple;
	bh=0uCtka0MLPVDPNPuclYYewUgYA1QgQNzFi0erY1PkYE=;
	h=To:Subject:From:Message-Id:Date; b=Zq+IvFn8zFsD72ry8vazzsoQNs0mmUird8l7oHlWs+FIwa6aOW9aWhiLrgsg7b4iEkjb39xzwL3KwSsh+Y+ti7Ple0gDLPP23tqbSm61qVFzhNlG+ntbzzzSd2v3OZEeeCRUb8k8XdAF69rV/nALlrgnRvITQGpNW4O0Wb+ROfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afa+S+U9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afa+S+U9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EC5C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747160993;
	bh=0uCtka0MLPVDPNPuclYYewUgYA1QgQNzFi0erY1PkYE=;
	h=To:Subject:From:Date:From;
	b=afa+S+U9MFFsqr7Dm0zYDM6nhbJKWKBme9bpvlS8xd0yKpeFyudTMHuRHWuxhsTIs
	 laQZeXFc5d8MgR+GQ+8c4tNdvjAOwvIUS0Zsjdsytmj5BjBCS7leXE31b4qYEZ+co+
	 qLAiL6bgZkegZ6uSjJRhmi4ugB948LPJDu83QnzCAcC+dpEBejJVT9etWycehV8uTH
	 ej/6foozfKYzLy1Y/MxGbZA37fzk1Hpq+aHobTOwy3MiADb2ioCpUhACRzUi1S2Plv
	 ukJhMYkIzVWKFNhrhqMin6iy9wx7N3a2N2yvg+KymbZFBfeqP3ZvlvvMrlm8Xn/F3E
	 UMEe6wU/EyvdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C6FC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716099359.27587.18123635924280282708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de664d78b5190cab1bd575c2f41adc304dad2c710d6cff40fb4fd0332b1c8df
Date: Tue, 13 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747160993
