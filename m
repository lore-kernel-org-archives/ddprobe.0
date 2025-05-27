Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE5727FD6F
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748374194; cv=none; b=Hqtv+O32TBC1shbzp4FkFNatdYw2LbFOFmmVxB2SaGy6IWEc85UIk1uj54siZpYnkWSWVzQC/z0DjqnErnvv+UJqcFkSc0XTLeZ0xa4Ws/OCSf3sKKfNklvQMRVFzqYSxHuVIXnLAvU+XkARu+mhHWZ8fEXoe//HUSFBPm7YM+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748374194; c=relaxed/simple;
	bh=F3Vj0REq8N8Ch6tn2jvTliomhi/BjRfIHwoaNVfrT3U=;
	h=To:Subject:From:Message-Id:Date; b=BzF9hsUk9rcup64EvzbWfXwhrtgEG9CDgZKnd4UdEP0r163+yH1Vk5bGD/yD0rXnt2qMe1im+awHigPqArzRT+GgOEZzsjGJy6oqBBc8b+nWZ40FEfOQ0gMeYyCamAfRsy/ZLg7LfQ8DAL8bhB8IjbWaQpkSScbAT2wRmbkkaOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPoJKXnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPoJKXnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F39EC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748374193;
	bh=F3Vj0REq8N8Ch6tn2jvTliomhi/BjRfIHwoaNVfrT3U=;
	h=To:Subject:From:Date:From;
	b=lPoJKXnVtkp70M6QGAyrPmgOvhLBTc5MCTRXUOfDqu5V/oPxRGfkfXj8l3VazPGcR
	 +ShFXsa/SotGcSGyxLYqmpEFOKmOsnp5OsHUX9kOCtcGQeLg8Tm2gA1wZG+rWfu6fx
	 zawmNYB8MAvQqbKIv58mZdX8sYly3R9iQxevVXh59XVT0WoHFs2Eypc2YSdIVzHXr7
	 wBJBdBUf3WmvPdF2SqBzBJrBLqHzBv7Kr/+sjXnEGki7k/kVRC64UtzESfrk6bLz8y
	 o4h4ar9q/3sK/IEG01gvA6t/cPVVNjpnfBPOxowg/iQIjd5TBD8hhXxbanmeYu38Aa
	 IxPwbxCuvL37w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED9CC54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837419357.27127.10569367690642578563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46078b303ffd1091f2d51648ae18569e20834db7659efd3ec87c2c2e290af2a8
Date: Tue, 27 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748374193
