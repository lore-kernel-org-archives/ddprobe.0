Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377C772605
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749788394; cv=none; b=iXKsVs1Pi36Naxyc4uWLKnwuVsPDyITi4cra13PE5U0rDDXC9NXn4EoToQYV+iIq5d94/aVf9m9d5DpW3oYVG4hg1JwCiA8fgxe0VhIyMPT8bUBeCaVD4pESgPiF0/h0XZFPPPjoLPYdVzKyyILPZz1gPvdiCU32mHxsLGZt9Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749788394; c=relaxed/simple;
	bh=+0/t/uJWj6sC6oqkD9knH3k+K/UdtKZrF0ELaQ0Djuw=;
	h=To:Subject:From:Message-Id:Date; b=f2fOnVbwbnyxe2EOSv4Ycyb4H+XBtUCWBHSX/eCNCIlnvMN4mAOadNpUpANTVn6D8Cy74YvNMzIyBze8Q+KkEJs3SrIse/FJMpDuiG+NZUpP9ZbA4mh6qlQaDEJTm+xM76XKt1eGmQssuiTUyy4QDaMrE1aFb3wSk+liOcXsU4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZSnIRxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZSnIRxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF865C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749788393;
	bh=+0/t/uJWj6sC6oqkD9knH3k+K/UdtKZrF0ELaQ0Djuw=;
	h=To:Subject:From:Date:From;
	b=NZSnIRxZepGD5TC6k5wY67CfC990Ig95/sDdRE5c/RKDPeUYnNgutjmnBXRMkDzTN
	 5stkYI2VPt0LHp7wgbhzmLl4cnYwCjRG+07CGBV2XlSlCfPZxpeViMjbc3/Tfnolrj
	 Ge3OW4Gt6pGGoWTv+sWI1V1E3VNUENv8tsB6JU7SvCnkm5uYB7na1drC/Chva/IItU
	 qJznyC7z7uqXIuuGaKWQVcBeuxVBBozAULg1+3VUC3Ef/GuXjoV+vMsRC0nmeUlaM1
	 JSkJdIGI+X+VoEo3gsDK74EetbjqRyq6t7O+vJaPw8yXom2p+xO+fOK/8iv3tuEtuM
	 qAprV7SKhnrlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9884CC71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978839361.19787.12212123921414141422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0135ee1047846b562d2a549cb45e5932d7e3ca75b5677d9a6f7bfa39e2288ac3
Date: Fri, 13 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749788393
