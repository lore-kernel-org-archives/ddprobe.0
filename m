Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A76F54673
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751725794; cv=none; b=cjshgEKpmIdPi+dP/ldtx4KYuavhq6cUeQjq4f4tpa+vDkyZur3EVFAh7ezqLkovY5IfUCnThWCDZG0bt7OsUDe2G+gfEK85HJ2EyLPg7QpRmMBLNfQW3fsflbyF1VWlBmSrXUL8RooPdRH7GZwqYptBOmkooNNacAvE52t5Msg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751725794; c=relaxed/simple;
	bh=atdbfbFx14xIfwcHQ4r0QPGfhKM5NwQTIUQDuRITUG4=;
	h=To:Subject:From:Message-Id:Date; b=PDPhQnkpBffBHTPb322yj4cr7qvV4GKzBYHmQPiC69hqmj8xcczgTJrhQExpz2Ee8OX0gdo92FKwl1G9WpEZMRH3vy/RJ0z1zdF46LL1UDzA3kT6wK/eQBYHZycRshMM95q0do1qqNmXy98jnbT/0F5GKKOP4bVbYK4EJKFD5fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0Nrzzoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0Nrzzoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5043C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751725793;
	bh=atdbfbFx14xIfwcHQ4r0QPGfhKM5NwQTIUQDuRITUG4=;
	h=To:Subject:From:Date:From;
	b=d0NrzzoyhCKONta8HX/iNCudrYqWc2UWKQRVuyaK29qw6r3KcFaXMhW50x4VCpoWM
	 3xFvXdGza9ol/T3UxKpJf3OFhRxWis/o1TAFhvTk3UBHsZ3qhskGoj1SKM/8tjIa8/
	 NjCtx6GD3YkKWRO77acdcKpZl/MHDAlhzDqF+f3SWuDxw22QR2moq3GAD2/ZzxEnNx
	 8TZgFX8JJuafAeSBBbLeqUt9xK9DXu1r2aIK7CkzTkeSZvCRgdR9cr+4kkMpDWgrZZ
	 +m3/iQC4VnNsoAB/2fNp17ADriw+kZgAOQ3eTD72ninOp9VRhYb+Vtizx3fGyPBzqm
	 FAj3+vqnLmA4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B3CC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172579358.31641.1657347920319906615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87dde61249b70f30ee0903f1773188c4d96dba57539e007b5d6d98adc518752e
Date: Sat, 05 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751725793
