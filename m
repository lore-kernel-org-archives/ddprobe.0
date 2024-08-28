Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA68139578
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724867153; cv=none; b=BsYcn7Zq2qC5VRZvYJZ6c+hMngO+v/Euvj71m+oybFN+Da9Lfl5rXdWswDJsWQNxHvCeS5pAI0zBGmRmPzCJW78RRkYN+hzQ1v7YpR7jq5T5QPKV5Ud6tThTR8qow57SSwhJXRCtEZelWU2j/p3CJ5ty/ExoNqVLKtSFXUSOjjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724867153; c=relaxed/simple;
	bh=Ysq7KMg6FfUe6LNx5b3J8/MnFeHN1MJ2a8AZidwiVM8=;
	h=To:Subject:From:Message-Id:Date; b=jK2Ri2ZwWTCsg8d8/g1K6KDwvQiQJ8hRuyNJ2zW9Tb4pYTyOWbmG+UFxH2VFP+3C5JMc1WSP2hiPQ9qzMFHQq4v7e9BydAlGQWTyYB7u8AQH58TqS5YYV5JnaAxws0HkHa4TN05xDdqs+8YfKTG6Dmib6QMIDEgeRRjZuWD63Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ngdf7ygs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ngdf7ygs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F4CC4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724867153;
	bh=Ysq7KMg6FfUe6LNx5b3J8/MnFeHN1MJ2a8AZidwiVM8=;
	h=To:Subject:From:Date:From;
	b=Ngdf7ygsCTlti9/2WNyOiZJPxw//fQyK+mGOMxOvhAK+Cd7zxfbsnXMTB4PSEaP2w
	 tLiy+tQm3UcYKGlQjxPiE1z2rXjOZexOgUwKvAuxMuqwmbjsI87bAMJ1QK5WWyw/92
	 YsEXViVBrnh0n66Ijz3LG4V4MAg8Nep1S/VWTPJwUD/9In/Ej6U+Gp1bUASkWugzGy
	 PTQgrR9xg3rHzzKpbKiCrEhj6X7G+KCgTQbOmWyfWGzT0YQyxxVuh51Zn8tA58pGAg
	 7NmT5bbuu1i6aD1k+kThd2XPgrdqobBFRculWgcTk3IogXAeLomdzsvvbtUnEUQGd3
	 NyoKjZ/tEPDCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ACEC636ED
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172486715361.12072.4867039052367962644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e2021e65239e15a6c9c1f230f820cb4a84bc701f00b122df64f521c41c77c6
Date: Wed, 28 Aug 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724867153
