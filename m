Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312A113C818
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721730954; cv=none; b=KnB102NCp00m7Dd2ITlRGCSLsYClWkPOFVmY0sneavuNb7bTIs73uKtxKYZKkCvh3g8j912Bt4dQPLvf7i6b3QEQjgdOpQ5E04im6XEJwcBG0sDSGweJluGCyxgGzi4inwsLQWZyrcXrTNBMbM94lvCMUWGHEnfYdLmj6jeMMpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721730954; c=relaxed/simple;
	bh=R5Uj0lBuStRj6Jn2GzEujZ3BR0Ei1zejmy5W5hatRwQ=;
	h=To:Subject:From:Message-Id:Date; b=amPOh891WfbIDBd2cYTSrYPUOXS+ph8rjYyCg0D+sJ6btrkXl7U0jZCQJwJbEerTR16Dg/2AGHjSvP1w17QUFQmA5dGfCNe+28FIABQB9Syvrp4vBreXhHOvwGYIUU3iiy/4cWRpn/m3LHQwkwGfg5BWIw4PLjjqZ+1QUao66o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSEFrMxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSEFrMxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE105C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721730953;
	bh=R5Uj0lBuStRj6Jn2GzEujZ3BR0Ei1zejmy5W5hatRwQ=;
	h=To:Subject:From:Date:From;
	b=JSEFrMxHK43KQJTCLcy5Ee20tB9tEyJRzimmRnYg1TxXws8brZOcUTufv4aXKi3Br
	 uybVO055noaTilJnbzrCYstU6AoDoIUlnIcxor1OV8LsXQkWdo7ZlwuSOBoIMDIvCM
	 T9HQgPpvaimMoGkwrYk7I7BlLQduc+TyoWs5OYRuwrOptsPYF3O4pZk+nLSkswUm3O
	 s9Pp4F2WL6lT+BV/naG3hOTJhQ3spASPZTLI5Zhho/DFg12fRhyPUZq+xOYa5Yd/rH
	 6ELeszgyZr5StgBQYX3aIJJK04wY1jmByGiKZ3/75QgUkIbBmIt39mbfuzEryCsa7r
	 sQbLpzonz54Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9980AC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172173095362.20483.1924660424369716014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb975f3ea831835dc43077d30f920db4c72948bb0c988cc9ea7310a4daa308ed
Date: Tue, 23 Jul 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721730953
