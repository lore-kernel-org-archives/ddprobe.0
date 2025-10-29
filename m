Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C43C13B58B
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761713394; cv=none; b=L8zbxhjWE3cjszWScnHPurW+a6HXu8Q5n6Z2l/6Ep1oftoTvIUfub4WzNieTIem26RRyFMiFdYpKuRIaYWdFTM/zFcy0Y9Ph+1dncD8iAmJOv2O/9j8rAEtMV8C9jo2pm4gWikKH/eyf70l7+sb/7dGR8m4TWbE6BsBhns8XvFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761713394; c=relaxed/simple;
	bh=jrbXU1VikTQ//O38RcYweLA3TTQh1BlOewNUIIrsqGg=;
	h=To:Subject:From:Message-Id:Date; b=W3o8oYzg5ho8ENjbcIz0u33St4arjrlAdJ3IlQd0CzPO3hD2qQiWcxr84aWE8jIkC879Iy5xfOGPkYZlN4y2VvJJ5tx+onk3r7T/yysD4srKdc9GD/Tr6ZRJoTstId6xgEHVEDzj2/8MG7Xhfm6zflFim2F9YdaJ2KJuLbXUqag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKmev+49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKmev+49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF88C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761713393;
	bh=jrbXU1VikTQ//O38RcYweLA3TTQh1BlOewNUIIrsqGg=;
	h=To:Subject:From:Date:From;
	b=fKmev+49IFqnHJNHcsqUrkpQyQnCzDnfv5s8R3ioaifTp3KN3aThqBANFI3HcNLht
	 aAyBDpAE5WZhY/AGVFxeqEywXAB+zvhkMHSm7hZSCCMZMcJtqK+oCK9giMQw3cjYlo
	 w5NKapdQ/HTNuGBlKrY/BXNMrFSQEn3RLKIcxuKcx1SPypk29hey/ElK+EFaCdtGiO
	 H9reJmzEwcxoKERS9ZGUVbw5O5bsOmHPoJo/1d5J2qUVYuhropBbebLC7ZBKwWj3Xh
	 zoJDP+F73bEgWnQiCMIcDFB4LkUrTn8EVZw2BZvPSem/pxgcgrNgjh82V8MNSBGh3R
	 BKXINDHDLsutg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3AACCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171339360.27208.1033265431624911420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f2a17d7396c8b106008aa162f4bfeb079cdf4015e2914e56976dd628b884f2
Date: Wed, 29 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761713393
