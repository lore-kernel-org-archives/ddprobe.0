Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B76EEC6
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719715463; cv=none; b=EBiLCJLVhIOgoXDeBy1XXj1wnk+sPU7GDGV8FkWbokiCq6GVsY5IK70keOo1g5kQVYhqLrpv60mQF+v4hO9fm8e1gnuN6qzo85XU0mahsgIH5QhDiEnoeC74HbTlUcIQwGtqaNcvIuxJCj5iI4Rku4sNAGWv95PfVG4xmnyFaUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719715463; c=relaxed/simple;
	bh=TuqLk0TM+Pdux2H8pN4MuU4Rb5vOpJBam4vP66S+vcU=;
	h=To:Subject:From:Message-Id:Date; b=jq/hENO6X6yd6fhG17zV1DK3ds0/SxAzPT/l0mc4hGErtKVSSDDO/jP8dHVRJJigapNFKn3BNcdpnyKGZv3ddaiFoq7cPJGYhn4HeytndZ4nRXOl4H7OV5RBgHmXUcmCZuGPkepqG5j1YnGBZlYTOf4rHeWKj8rWQlwkvSxOQPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHH8CRHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHH8CRHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96AFC4AF07
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719715462;
	bh=TuqLk0TM+Pdux2H8pN4MuU4Rb5vOpJBam4vP66S+vcU=;
	h=To:Subject:From:Date:From;
	b=UHH8CRHsDtFHfyt4Dfz/bNFPzLeNkEJgPzQO7tTBYNKZtpk04SNXJFYYtY/P33vcA
	 rgileqND/3QfVvbU4hXg5Ktld2b1QJLC4NKWs9z1WG8e2m+vnzM10uSQ4JL6BZZ7dN
	 mV320JIMGDrlNiQehI1qHlJnjEp7py22npMpyCLJg6x9G9ogL8k8I09jJGBGsn0UoT
	 VIHEHjO+Bv0MgNbNWMnV+N4XD6cKP2BtCyLTiWWCnHWGmvhWQb1tgeREs96iJTMgqD
	 mxDgOEq4+/hlv9ZoRvxViJKez5a3UCi+QPabhodzjpYK9aKiQeDk9eSVafnH757VOd
	 JTdZ3drMu8QJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BA4C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971546278.1403.495714685449924272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb960a4bf8ebddb3bd6c43e4fb4fb7c395d702de77cf466203aee2822e15225b
Date: Sun, 30 Jun 2024 02:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719715462
