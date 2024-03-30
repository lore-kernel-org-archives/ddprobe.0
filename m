Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021E72CA5
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711791497; cv=none; b=BsEEpdc1SXdEasjZOVbkuPFXvVaVuPAi3ypD2XzleJm6czFv00KTM8rQfeGf1CrGhzxF0HSD+cMFDWglrJ/unizamcY+s/XgMYylER65Cn+zSgltzrhUlTBHmvElqx/mzfx744lpOw8JTsW0EpTSJdIwPqVEEZi22SHjhSGGvUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711791497; c=relaxed/simple;
	bh=bxZfp6EaPM2SFfp/CQV7M7frAkgQddMeobMPS/02W+E=;
	h=To:Subject:From:Message-Id:Date; b=NV39pRde5PP7lVg/6MMWLDT7lucWdTPrWc0J8hOespjCpjaF4lMjgWk45npzwGJIZTErZgJ6l8buUtJX8gkY5oi4I7Qo2C/1VeGorisM4AR6CVEtIQj4NVxvqyIo29Lj8U92pL+Dy+5vNtOtIryufgvtZbEKsMEsYWEKJAXsDgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XviO0LH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XviO0LH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1BBC43390
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711791496;
	bh=bxZfp6EaPM2SFfp/CQV7M7frAkgQddMeobMPS/02W+E=;
	h=To:Subject:From:Date:From;
	b=XviO0LH5P53iK77Bnk2TWrFineQ6bbjtZZB4GZyCWwW3mprmFoeUddl+Ue3250mgQ
	 tCEetBe5bb5FvGWEqwnVevLoncse2WKF71kmPuZw6ZjdqskQmHcjTHH6dQyBdfFfB2
	 Z3iKd5x0u7jpcCQH8LniSs7KFVDp0rwq7h9V9KLurPseiWAyuTxqdaANq8D9TfQfPn
	 bNjWuyGptQwmF1uX1EUB9sYOKXBG5Phz2267VRf7UJ9sR1Ug0lIMI0lBRbyJQ29wOo
	 Kjb5qESd7FaVCfw0OzxlzNudVde4FDUu5uu2MkVzmDKWpzVxMntUxxsC3nu3Ojv6rY
	 hISGl4EQQGoOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 695F3CD1288
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171179149640.1087.15305817071473928303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f547e2ae3285b61a6de2c5f391d50b545d7c55379503f21744de353eefc65f72
Date: Sat, 30 Mar 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711791496
