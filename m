Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487F71DFE8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719674663; cv=none; b=fa2kH8HZYXwuOJqaiaIPNGpOKuza3dxSHiyuJBO7GvSIQ7QZI2unyzrRfg7wnYuR/u6jR8akSmLUDGomw+PkdjVHGgz3eKMxncSyJNDyE1ypz82aA3oNzNYBwy+TFuZQf6n6bTydGhPIKM1ZhuiVxx2t6eFzhmvbesiJrYcja8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719674663; c=relaxed/simple;
	bh=r3RHg7MCvSyv+UW1dWPilF9LyVXIJXxrBjqmxKqUcHI=;
	h=To:Subject:From:Message-Id:Date; b=IYD3WnbGu8YdqAEKYg4wBctAepascr3S3E0H/nHZPJCPDmao3GSWAZFoteLWWaGEfNqh4o9rp6NzttUxjoKxNpPVsPQ/HeDS4RNBlpa4/H25TUA80m2AxkcsRZ6MKzkPYTNkwgxhOkTREBEPn4tOq7gNvdQay1nrfyG18joooRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaoA352r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaoA352r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8098C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719674662;
	bh=r3RHg7MCvSyv+UW1dWPilF9LyVXIJXxrBjqmxKqUcHI=;
	h=To:Subject:From:Date:From;
	b=MaoA352rqhKM/Q66QBhSVkm4rFY9A/lpjisybj1m2/Xd0wd+9spXCwPHWtGbuDapD
	 7WK6woK7NksM1rAeNq168f/0Ytnxyb5YdZOZ0gMNQb5ciryxnMNoDTpAgWzNU+GLia
	 yGkzBFvPj1XKQUEsEgZHWCRYsIitYsFOdNwyMeGAN5cddIhIq3X0aJepspY8Baptpq
	 g9sFVop4JTvKVt3EADNR4sNH7wEbZu5XLUvL1QXfEufTdK5cdo3gbdtBRp6jEWTfeM
	 4t93eUgPRFSe+xit57dJWAqvyj9RJuH86wavesFh5BSIJ+HkiOthNo5wcOdfIz/D/h
	 r7s9z3/Q1i4lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CDAC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967466278.6654.10853699367773904686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f92730319b8ebb00f4c333288a5552b0774d160454cb10a42ee55e394ae9b98
Date: Sat, 29 Jun 2024 15:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719674662
