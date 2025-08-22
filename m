Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3326C393DF6
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755901794; cv=none; b=nAlriRooPhrzmwlStKXIVRDqlELPJIYPlwnJfwZmvmtio43HS45jYNWK1H8H71ZsK+YvNXx3kyTg1quGD3OCmU3iZLpZ2q5q4zNwCpNeh0/mVrvb89bE5omsQlzE2IEOYT1pUb9T1YYAAACqswFCuzP/2syf45wYaK79LAer334=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755901794; c=relaxed/simple;
	bh=7BWa5k0BYjJUY7eu5WiwxHSf4Lfk3r7SuHxyiM4r01E=;
	h=To:Subject:From:Message-Id:Date; b=emRSuP1fsic1z/A6pGHDyfttIh6ncSSq7MfGhccyjJQW320qeIzeUEZ7jbhwixLWIhMPfr0J/NFT8UUB1wlD3Fg5G3X64AFOMYvvPAMBrnYNJYrywuuKArzFMcLEfIhliXvLD9XGdeJh389mM4U0dDi0Uwevvt/TW6wcqn1LgcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfslROpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfslROpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4801C113D0
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755901793;
	bh=7BWa5k0BYjJUY7eu5WiwxHSf4Lfk3r7SuHxyiM4r01E=;
	h=To:Subject:From:Date:From;
	b=hfslROpbvlJdciJazYn3eV9j9OJY3AHa7b50i+qyrGhCKSyhpuyHlNqS0czLty8v5
	 nTnIxM0pDm4O3vz9HIcnCZgJUWtQ2eY9L/ju8SmmgzXIypcI6nM47WsLP6rLf68PCz
	 ruQKHdAqq+K3qd6wgJV0Z03gxLipYUvlRNJI43R5QfTZXWeSkfj4xTozpQKmZmoYMK
	 hCLUdbQu/FIZzzUryCo4mIC90p+VNDta5nFnlKB+DeuOoiN77h7QNHSfquYVbW1on9
	 BZkuuOckrCmi4e03YOQF1jlErRpgx8fo9B/E6WLHmevFRn8++shZ7n83sgiachtIEH
	 SHl5LbQXvvnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D1CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590179357.7070.4736716498627973130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bcba065e0b9acae0ba53d45c8dc4cd3c58cbee2502ca1a03c0829d407482030
Date: Fri, 22 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755901793
