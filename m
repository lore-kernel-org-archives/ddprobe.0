Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E701B0F35
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738317954; cv=none; b=kgVHRsPNZpRDjVbhCupfjweiaKazUe5ofEm7bQywf9eIUeG3/j3SXgEzi1Sr79utmmtUuQ2MMl+s6OulE5WQ4YzzlfzVVfWlwAgtHl8E7byq4k5l6ZwWAuSed2OF12ZfcgpoVk2vfgi/4WJYdQoyBa8xXLMLUEG5efe5BW8KlU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738317954; c=relaxed/simple;
	bh=nS41FUm1nclk8c7mHEgEkgbi2Z8zzpVXNTldBY3G1b0=;
	h=To:Subject:From:Message-Id:Date; b=OIomUmRqv2ACckfp4y/YJy7zMYcpEM6tSXHceyGE23ybFrQay4dhD6c0GorvXj2iGLvgTA6HarSHErqnZOOTPO7hGZy14MgYooXl7uTXhaxO85PikLmJj3GcO7WLe91J/ynC6R5593lwIt/4L+5P0aV7XuCOWGZUcU+bWCbzQws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxPyw1+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxPyw1+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79C3C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738317953;
	bh=nS41FUm1nclk8c7mHEgEkgbi2Z8zzpVXNTldBY3G1b0=;
	h=To:Subject:From:Date:From;
	b=oxPyw1+mZqYkuM0wKVs8wocYJCW5W7XFuyE3hwVtjJN7/uiXX+kVJzHndJb/1j9eT
	 FrtLar8kd/WECpJUqrwbiivBti8RTJGhSRDOMzVQRWEjlii8bxemKtUppBLuu2b1HI
	 jz4/fkhoP6cSNLdl/hVJC+RG+hMZYe2BYd23IRxsvT33+aOlflWzI0wcMCsx6hoiaR
	 TZAULqK9H0zbtNwKl95qQcGdLC1OyNU2fmpx5IYryaO/u1ZY1jpDy3tTYOaWkGTsQa
	 o+6gwoZ/zDGr+vPBmCuTW7+PTx9JVCSkygtPHjeRDYjORS4NYbguZQLAoFwmqTi+v0
	 /M0lnVgljqpoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A202FC0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173831795363.17539.11042303064034044438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d57df3e0cdcd2f609f01455bd3da45776334c63d556069724c04c73c746f29f
Date: Fri, 31 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738317953
