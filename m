Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD3F202990
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747226994; cv=none; b=MFmKhHKUqnDr9/T+Ek1SI8YHu5JhaeD3o66TW/6mLXfVTt/Qr8vMo+/Xb6U86cvg32M+hyHA2bFw6cHfbdrjZFIAMNQD//4mCio/u9bEXaV9Qy1fkequft+dJPyVngw9U7+4ljhuOoW1oSlzReB3ne0m3cBESZqTIuy6tO8fv8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747226994; c=relaxed/simple;
	bh=C2Ir+oeCu/pwLNMbQgvqWFrcq0jCKaOpUn32DlfZLZY=;
	h=To:Subject:From:Message-Id:Date; b=gT8uge4+rkdx6+Bwc1xNIZ00qAmiTOlDBn75McBaDpZFCT2pOz55gndruOLpt0y/8a1my/MRqB+IbNruvFjYsRDGTWncovDyQEDj0AYYvSwZT9CGhmNM7ZYndlxvnEB5eLx4LoVTjPDs8dlmwkIHFTo6KX2/3dV8IZVKLPfhnBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wa7A9x32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wa7A9x32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F10CC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747226993;
	bh=C2Ir+oeCu/pwLNMbQgvqWFrcq0jCKaOpUn32DlfZLZY=;
	h=To:Subject:From:Date:From;
	b=Wa7A9x32Go3cqS/sfMEXG+hBEZYdMX50HveuefO1yNbcyUPKuxwZy4aod5/7FhnfQ
	 ywtlYAt/7wS7lUaoIDLKnPlbqKgB6wpGJhlyvt7QopSgOdlIjXxewq0jlFE7SxBjTP
	 Whc+KLIS/urBc61i7qMtCM9cOW6Nu4H90oTbGBi3R4RXco1kbvX3r5OVVvqdNwYsp7
	 CzfUHSnj96gBSqqc+7TF4eDbsqfiwSJrhRoYy+OQUztig8DxE2Peeu+bQjBtjSZC5R
	 sGisXojClTWBT/4EUBVrC4+zdEv7LcaaUXYrveoIBRvs01zPPID/QU3svWVL64z05q
	 aBb4t1GnZLQaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE11C3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722699357.27748.9088642777360843514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa156bfd29bca71682533a2b253880c888ad2c013729b8da7221bcc29eb624f
Date: Wed, 14 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747226993
