Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369B91F419B
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757831394; cv=none; b=cPkzKZVtX2l0/3DtZaA5miGU0QRBkXP76p/hygpvkecwYNr9f4eaChiYKGS3W3YK49Dl8F6Ea38BCJBKoIwstkFxnFSv+UyOgTwTjL8yaWrJwXiiL1BBEI5Hh6kAdDYtK2fa+Z1SN0cpeGBzOqMz928zaUOOvdiZlqvlFmVXglg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757831394; c=relaxed/simple;
	bh=8sNSWcmoYqaQsyva1Cej3TI8Zpil8RyXtybtNCys26w=;
	h=To:Subject:From:Message-Id:Date; b=fIhUkeTqsMkI6C11NFj+C4KQzffdSLmvVr7YafFplcOw9cXr8MAhVq7+ayrjSAYkcGiNRqbnYZQWmzD1ujxB8guWvhOws+g8bmaJ5sTs917vhg8LAgAeW2V15vcYBOSZkmUhFwXANyPBTGbDEu8Il1q+Ez5771KSW86xvp21l9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppilJOyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppilJOyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6636C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757831393;
	bh=8sNSWcmoYqaQsyva1Cej3TI8Zpil8RyXtybtNCys26w=;
	h=To:Subject:From:Date:From;
	b=ppilJOyntBiqUzBQSxerMcBZv8bkURPWQyP8rTinliS19oD2J0PfwlRXt4PxktSy/
	 rtVr/ga5jMwtVlUHKth16tSFo1hetYaC5ZtovOaGBVmJceBbnErCskTlQBJA2RoEq9
	 cxMDLPAwkhK7VjW+0Z+fVfJmEH9Q1fhv95MTTbuDXmuC9X2xYLpuFKnjohVX3adMVm
	 7CyFmAl3pGJs392tn9eOh5uFU5msesKcXFuQTr6FJ/stK4+3zjCwaO/0IyJueWLV7K
	 lEbpVsdrlvdhz801LdMDFdnqF9gVeR4vtmoVbxKPagQmLSIi3/WyMPJsBcj/tTutSb
	 v8+ohAn0SuuJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C5ECAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783139357.8686.12751739259515219201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52434b5875d97c01d0ed8923297cce93f57d1a2e03e5bdd4b2888b21a37731c
Date: Sun, 14 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757831393
