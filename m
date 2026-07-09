Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D34D2AEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783637314; cv=none; b=f4Ayjs19kgVI5rw9oKin9tS/slxqGYLsK+COlV5vvV4PK1IvPFxvdoYQNSsm0jCLxp3/QfkJPtMTVybXGF5tdnPjFKLStCA6lAJX20dqP4zozekIAl7+PLYQFiOcynM22lxQoiucut2ROiLZjnsoLs8sZAYe9thYqaLXxx9ZDn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783637314; c=relaxed/simple;
	bh=fXMQgDi3ta+DEQjnuyWkrrUXMabrOjK2C8mqZXpRl7Q=;
	h=To:Subject:From:Message-Id:Date; b=C7ZJwd1xUxniA0IiRDHylLSF6VqK7suH2SPbM3wApM0p+Ffqp13xLfiAEW+EYnF3WIzyNGBVuNgFjYjUjYiGXXexc83jjyWEgs/kqArUVFFonm1Pgee+wrxgfvvvCc9Px6vtM5EIBDN6VtBeaItF2TTx4neXTKoRrkF+Ek3q0/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V08+buXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V08+buXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA2DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783637313;
	bh=fXMQgDi3ta+DEQjnuyWkrrUXMabrOjK2C8mqZXpRl7Q=;
	h=To:Subject:From:Date:From;
	b=V08+buXLF0zjn1SXSf5BKAEELlotXKSrW1Wgun0zzns5CPu3c2LF1okU5y6i1f4gW
	 d7qtMh3h1Ic8Uh1p3rSMc8vuEYxW5igwnQpEzufrOi1toyEaNqJJyfV+VCzqdaAc6c
	 djaNidead0pjZMEw7MlqGBpl/MKzk4dLaat3zr5n7f6Tnx7hkuZ3AQ46f/ulP1j4jw
	 +pPSZNcdWdj447Evvn5PMTO3+5kvXeF9OBwporeBet6aIjplPI/J/Y5sxVmE3kuENh
	 ypK5g1JL7ZpiC6UGzB4P7XI04DzU13Q8lmTsF3hJnTEIfymN08ESzldGEfHvtEFAKz
	 Q37VCYymm+IRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB4AC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363731368.12094.7233124461562833784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a587baabea39623abdf80b52719146ee9bce2d7867e4dbb1ef5cb8ed5f014ca
Date: Thu, 09 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783637313
