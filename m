Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250171632DD
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760042394; cv=none; b=MYOZzYWJa399tuBiUI7x4GCt3Z7bCBs8NlVpS82lNFztA8Fv7psJ/RRk+Y/vRJ2CAhK/dhQaa9nktnpKmJX9zzknsI+T4BfhDtpvextpdiXpVdZU1Xm4SwEF3veszwmx+BP8zxcDkvcV6xz87m3RqTqL6xNrms3mXdm06++IeVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760042394; c=relaxed/simple;
	bh=d5w0if+ryLQMmavFXJGHfEW7Cvfu9UBxTR6xMHZy3B4=;
	h=To:Subject:From:Message-Id:Date; b=rjWKGnYFoOUY3J3raZnep77ObTAg7l68V2N4dTCJ9UhyAvzNMwjhz7u+76qC3bnomR9wKKJpT17exmQ9tq3EEu+GNBpsr+i0ZcHG7LActFigjS802u/UQhKKwYwYv5aXaB8mh3HOQVuRx2ZX6e0m0uRTIyDA7/6mfNs8ONe7KRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhDx20UR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhDx20UR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A956CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760042393;
	bh=d5w0if+ryLQMmavFXJGHfEW7Cvfu9UBxTR6xMHZy3B4=;
	h=To:Subject:From:Date:From;
	b=YhDx20UR5gPmJgUxSpPC8t4YhapoWxWLKPwJS0YR9Z4t1io/Y8fQtxV3WjvH9yhp7
	 x07GUcToiAUWyH2nVJvrl82jJagjXxoSmaOaGiRT+e24QGEMMjC0N8crlk67y6v6tK
	 WK3UUM4VUqvPkmLScNyHjwM94nFYQp23r6x5K8/q+wGMWo6zuacTIUgGOuoz1nY6xg
	 tSD3fVVdrxol2nwgQg5myKV9BFgDOxBQDy+lB8NroGkT12526go+jSXjZHnsfWy6JS
	 W5F7LrIG8ZmzUdiTODr7Y49AS36qE6/eSVnkCNFoNSkkRdChwm7d4aDruGWHGHFm+W
	 eVGdfeAje1xyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F92CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004239361.24101.17673119240010307578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a5e5c9159f0c08f36eb6ff005a5edf005050007866009cd009888477814417
Date: Thu, 09 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760042393
