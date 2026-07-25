Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1F017A303
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785021034; cv=none; b=M+UIRO96FK2RxgzEx/3tbqhU5LN5IP5hLqIg1a4aKCVYHbXIoPdU/Rg8l1MvcDk134qxN2lx+njV2kMivAkNe5tx/TGUymEyOrdojoY+SsLyiPRxkGwIra8wO683r1U3htr4wknmG3Gmn5MlfTiS73RM1E2sX+Hi7e/G03B44w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785021034; c=relaxed/simple;
	bh=2rslDKH1k7emx5SaczurqtIbRGF7djDuZWWUjuEKwJU=;
	h=To:Subject:From:Message-Id:Date; b=sQ053hFmayFTFkcal7o+eJ8eatbHTPGvZYr3DgWRYJR9RKNw07btrN70BSgWbpVWdG4PhUFsXnpMfCQoPX0LTaMZTetsXjQPY3O/+mPWde1cYSCIusOAxXEewzBWfZogQxGneLnw9YmbJiwhuALd2/MS1d+oFjFZu17pZHD86/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTceWYgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTceWYgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AA4C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785021033;
	bh=2rslDKH1k7emx5SaczurqtIbRGF7djDuZWWUjuEKwJU=;
	h=To:Subject:From:Date:From;
	b=TTceWYgpDfB679FTwqYVSwYTHwijpwgpphKZrgAUiQmpUJe9FwFZz6VJZ37Qtj/IS
	 iwNG7uVUSZPAs7Dwn91hVWi22rcPGCadzirMFeV3tbuDlOMgdigVzuc4GWsusSzLVp
	 i7DFL1xn/RSLMJcquWVoK2N3vWWU1Y8I0THZ0RrDkKNsiMOxFZFszZZAy1hIUehASC
	 7lhzOPknvmL2zFcToDhI7Ch362+qBiIjHqo92uM9N3gOxPCv08CpXgT3JLTq6p+SqK
	 j1nMOMRDHuP4hW2Rc1JsGlr/xkoNFwkAdi06XXxF5TFOlbWAGYlgcbv4/WdIf4jAPx
	 +KbkgqZmJ1SdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD6BC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502103368.15823.3291042254538025598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ca531ca8f9e9a2b2c82cd9d032146aca3a7867887c733c0376e4a52855961a
Date: Sat, 25 Jul 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785021033
