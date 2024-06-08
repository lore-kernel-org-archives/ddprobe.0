Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67ECE2E84A
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717830443; cv=none; b=UOrxfX7cEDq8yghnVTYyyjbEKJoPHvNKFoIDp0pAzpc4rJAHPedPB/dAc2+dkOIzLyhR/w2XjEk/kFDkPlxl/DiRIGsWZhEAM1cT8DrbIAlkwzuoE9Pl4wXEBo8amPaf6lDTHjdBETlfoNr/k9+YCVGgLoo/P/YBpl/7mszS/5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717830443; c=relaxed/simple;
	bh=24xsyURzgKupzCdPl2uiJGS19TSfAX6xb3QUTqBroiI=;
	h=To:Subject:From:Message-Id:Date; b=FVN7UWmpsBFilLQhFn5XwgC15ISy+kmHru2U6vH4RImNxFgRY8vDGI/E7rywxp7M3/Yb1aT6FppV8/33A3utW7n0PfRSnn3JE41ei8KTHG0YBtLbWQVrkRYzmPmHxm2M62JBI762tWTakqhKq0GAwXdd9hlXzYWJfLWQjvN9dyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nzf+lkh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nzf+lkh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB3DC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717830442;
	bh=24xsyURzgKupzCdPl2uiJGS19TSfAX6xb3QUTqBroiI=;
	h=To:Subject:From:Date:From;
	b=Nzf+lkh7nkBOg2mlZMXelufbqVtokl2wBcvJwlV0hVIAgA2nt68IL4oecNMcUuISV
	 Vb8tYm8y/Fv4Svy9ruBfxjRU94HxCPf6OcetixoXnzqfC7uTaS9ZxMl/Nicr2bTblU
	 gGk0LnsPbVORaY9ll2WUAvjqJlGByNZktBZedL5nstZ+DOCt87dkRAg9YigkmCxdUA
	 mjuxBh572/CsNdNGaUNCvtLuGeqGK66JS3mT0xvD0RLS/65T4dG8d2Gqgo4EH7k6ON
	 uNRScePbonDLOlLEOgOiQFQDIlOyDMYVQynlzJx7s6mglO8mNaL8SwFLPebHeToQbD
	 ey5Oyof0w86uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2319C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783044278.24695.14494654071786553230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c16695d04beebebf6a217083f116eee2fb9d1d713316d303d86350581947c5
Date: Sat, 08 Jun 2024 07:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717830442
