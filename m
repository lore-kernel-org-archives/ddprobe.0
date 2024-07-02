Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631FA178381
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719943523; cv=none; b=TAVNyiC/WZaxNCXhqgXfabdDWQpCJfotqhP4nNVNstcGCdZBu5EZrs6HMAkgR/fkZOtTyzxJuSZ6mkRH7uNGZtTQGl3aAXklfIN3g+TUnHmFXkz6cb6KqygSJZ+zEua0EjoEpdqDvqmCqRo02kL4luZGAhqfZtfxNYpFwESvNbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719943523; c=relaxed/simple;
	bh=VKqtOuKKcXRRqwuiBsX8RhF0DYc7MY+P2EdX30HUgBI=;
	h=To:Subject:From:Message-Id:Date; b=Kv46sywsdDFS6FaDf14qsZTfX6RjgBmVvJrQxPRKY2tORjPvcHC0EADdlPPROyg+2GFJbigoYjz5T8q2CpKpmQ2kdv014ABhor0wh1L7iz8eU4cE3Cef6QqUHEcemxUBo4fgfoNzUlY0wvRd2Au/fJOZbsRvJrG8IT5Kp2qcOfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+3ullen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+3ullen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D512AC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719943522;
	bh=VKqtOuKKcXRRqwuiBsX8RhF0DYc7MY+P2EdX30HUgBI=;
	h=To:Subject:From:Date:From;
	b=g+3ullenOfwOsG+whU1aCUy0rxysRUCcfu/MfNb+YiAwT2vEY9CkQyX/8zaF5ROjq
	 i80cDSWBdUqyo3osqEsTXpeZZXT5q+o7Oec/vaPP5x07emZNNN+tPePFVMEsxrVxAi
	 uPpG1rKKDr13rYNJkBLxw5UfiIEoxFfXhFm8PpepeEqY/oMolPIiRInLR+jDYgmo3O
	 rqPFjlF/w+jh74mwRypCI3Gi2Ld4v5KETdTjfnYNBtbrmuIl7jO1zTOxX44eZGxMxp
	 uIpjOgFVCRq4sM5RxM1v/x9NjakOpSVKsAJEcdAFqgDbd6HoqbMu5KW9gEwTR6ZZjZ
	 DSLr7TIc0DWcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9FCC3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994352277.1058.7395006505291550194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34e3413e1a76d430fa565fb68d6a0db0ee92f18a2226c288e8086b27a9c0f2b
Date: Tue, 02 Jul 2024 18:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719943522
