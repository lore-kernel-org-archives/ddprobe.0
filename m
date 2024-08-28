Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54996146A63
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724823954; cv=none; b=VAVJUHd/I1wF+8rb55eWT2QRWaN9CkFO0gOgC9t1X7GNU5nfpiqAmLbanzZVr9Gtcwg7G23CoEu2qSMHYHnBHJNkKOWT7n6x5ybwTSnM3ayqrQ2gKlrI3zddk7E1/C+rVrAkA/HMHUibHv+iq5+DOHSpcfeetzTXkdrfaj75Bro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724823954; c=relaxed/simple;
	bh=lukrhXZXCQdMV8qQo7hgL0BoHnNgn+c1ILGe3YBn9nE=;
	h=To:Subject:From:Message-Id:Date; b=GjllhE/IjpzN+rzrPPwGFWtaF+glJr6pishRzocZAa12AMxs2EfYDVoczreNMcDOxh34mtGm1bT6o64utYiucswJI+9iGxkn4T7RwBMGXFbWp4nxsuM/dj9ZgJPpJ1g8dTHRgyuslIrA6sk16Di7zJ/+c1U8YMIfM2euEo6a5Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=km1PrjXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="km1PrjXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B555EC4AF0E
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724823953;
	bh=lukrhXZXCQdMV8qQo7hgL0BoHnNgn+c1ILGe3YBn9nE=;
	h=To:Subject:From:Date:From;
	b=km1PrjXzZCgv7mgofzgwZzMpIOf3UZx2z1kC9VG0oYh5y97TNatd6EjwV++fMzUNa
	 /qC3/E93QyrnkzFrKXoyfACHDJrep1UouGVl+Oh7+mG/q8qCdhcLooY5icyVefPfMU
	 DJVq525hLB9by6YfrAIihH06HAAe8MyM1kyKcocsV+kO3Pwl1ksZ6mJRJZe8pyQRkT
	 O+5p4wfgvyY56GnjvGEZC8MsOu1KoQ/OH0Ydk7DJADYXspc+lha5fQVqOeDJJf3a+r
	 2kV0FAXIGamPnvvyW3FPjiRnaAaoM5jmCvrMzV0L69w2p2NyNpVFg9gAkFXoDQ7/+m
	 C3VNCG8lcyGhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A482FC5472D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172482395364.7878.12470197141450905447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea66c26000c883a8529a79f100cf1d8da8f51c13166c6a90e09811b26927ee5
Date: Wed, 28 Aug 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724823953
