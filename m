Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A8644DB64
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775084734; cv=none; b=W7CECs1gPsDtvKim4DGVwReeNLh+OOJD3lWNacX5tT5xK8oGX3t425E59v59Bl13l7ZtKijWXu1WCVKrAkdI6rjnN2IAlxXZ/GdCo2AnhdLK8EhbzEalU2AEm78wIGN53LzAjCCmVfTb6r+00HfVvgTYsxWvYCghoN8sO1oEDtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775084734; c=relaxed/simple;
	bh=5NnOEKQnjmgZHEAHAawSz14GIhrUjjD3ZDZGYOl8cHg=;
	h=To:Subject:From:Message-Id:Date; b=CbzoEIgJ1RODkXgJX5fRDESqiFqURYPEJpdL5Oy0krXvVdwdzGels/2jTM/s0RutktfZdWRGPj2v9zAmn6uDxUauKE8b/AliwqIk1akg4z4EaMgmiH+CNFPBfPJNmveGxm9vcjAJdj+cO2qaQ1snx1By9O1XlEiGz0IRwcP2FfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLLyCwVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLLyCwVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF4BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775084733;
	bh=5NnOEKQnjmgZHEAHAawSz14GIhrUjjD3ZDZGYOl8cHg=;
	h=To:Subject:From:Date:From;
	b=LLLyCwVQgOU++GW74jec+YPsULVomCkHWtoAP1E7dZDCZVc2t+8R6Kl8WLzoo6rSr
	 xYxP9HfIVV68IODpXjfhPUkfGKFSMxs8JjVk2z8UqTyaKAaRCLa+yqmE5TSZxeyTcR
	 /fHkhV8am0ZD4xeZTYRrIx8PeitWrS79K4UtUQ3Twk98aNgvp2aI7Eb9cBFkhwCLtD
	 5pbE7UsSmTWMAn10qptR+yWlD0JeqkMaNynNnF6+T7aXVp1OdE4K1KEmQwT1CaYKV7
	 UYC3Iv6GrBWA6ZCP0MZLQn3+G42c1X/W8fequoKACDlPzBEg6MWtoDG1oFCy8/ZXTd
	 NnsntagorAxuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F311112242
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508473368.24710.5083930760875129434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07c36a9dcb36b9b064e6e411a39583141e23ec91fb99f884652dced76b318a9
Date: Wed, 01 Apr 2026 23:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775084733
