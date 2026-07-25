Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3931E3081BE
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784946034; cv=none; b=K7ldisp9flFPt3OshgQd7Nem9ZQgFdx3wwTHsdHXOD3hOaC8qbyXS1qj2fzBG8uy9wRyy+1PCpRpTTkvBHVLTfRnafRMqSbYtp9DSrKHx0AZG2W+eYMnoW2eZ6hqyQXfHGOdQKCvcQF+sK1WQPHLEfgtATinPvNx6/Ucg0ci5js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784946034; c=relaxed/simple;
	bh=Ot/RIYHm43EHk0V7X6kFI3D/30oCnfprliN4EQwgg34=;
	h=To:Subject:From:Message-Id:Date; b=fOhbZWFMZUtnpA8EY7I8mAyCr8ZXJKMhKPnIQSoT6cmCAR9UPW46FyO2RuE/egniQC++wL4AxFaQp9WhFHqltnez3uj8IPGT5xjDGJCfUFgXnMDGdv5mEkV6/ew2R7QvmJF5+xt+CZyN3HsLFfrd6zZQPRvx8IHBlCaEIUVfYbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r14rjGM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r14rjGM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34F4C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784946033;
	bh=Ot/RIYHm43EHk0V7X6kFI3D/30oCnfprliN4EQwgg34=;
	h=To:Subject:From:Date:From;
	b=r14rjGM/dC005wQb3om/gOsnH6USY30Qp1o9FjZEWsQCJsqE9bcZi5+fdaPnbPNsw
	 qNdYMrF77lQG4doaiZzFqe2QT2vkLyDc7JzPteD5OhIQ8Bl1uVx3ybBGykcrZxHJHh
	 wgQ4mwHXzgsQHTzNjGpfkh5eroVVHiu0FaN8wkPiT4Cf/mmuX+Aj19fJNwXA7jHCys
	 M0MDfA7qPJZocrEtwUbVZ/keFVGM7QJtbjZjqG7gdwLo7iMJ/ulS9oTxtyDPIIMH0m
	 9PXSlzj540CDstvEqkjKESoA24r5ROLzm3KoNBnzLqzSvuB504hTwgoJZn75Wl4ZGY
	 kq2Ktq73OM6yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1EAC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494603368.16502.3586497439337611248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6adb7950f2704d348573e1f0a6498c2e99d975f902dbd0e86aa137c104e4db76
Date: Sat, 25 Jul 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784946033
