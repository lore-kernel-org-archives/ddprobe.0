Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADEA156C5E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724739953; cv=none; b=CI016i0avSivQGtnRMvS4mgus4I4SwZDTgJRwd7YRdhwfN111rgaOIv66I3T8X7WWtPzh/IxwoywWimUE5c54pN2kpnhHhMZEUl5qTY7aQJRd7UZszrtjgqTh4y6LZ2ePZyJdmnLvaU255VtTPZmCyRU/ejqaPeOUblsIrTU2Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724739953; c=relaxed/simple;
	bh=DPq+gJJdpxWNRZtD2WN9BrKgKxKTFSySxpITKN11CZs=;
	h=To:Subject:From:Message-Id:Date; b=bslm4K6eyLdbjX7fTS8xmDnGlX8LAuisR+3tS0EJOXHy3d8Oy6z0QwBZak/J+zQ0ufiZCH0cDxFUfFtX1x+l5WFJhdhJY9xcNPHqU/zmA75xwuI4mYyj+eqrfUKHtuOsBn8+4WdEyKyvHTbQT2KjNh9VpbSi0hukOZ122ylqcFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnYSB9Qf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnYSB9Qf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E74C55DE1
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724739953;
	bh=DPq+gJJdpxWNRZtD2WN9BrKgKxKTFSySxpITKN11CZs=;
	h=To:Subject:From:Date:From;
	b=YnYSB9QfWJgh2v6dm0zpy/EIJgvmovf2pxePInI/3ZsPCApf0MTzgyqi8dORTzVSt
	 m273tqJjHlvHMhs7dt2ENTQNt4LQQKTf3LKtaG4inYnBEP+ZA7107z1UHDdzAMHWaZ
	 vMjygS33ElgHJRjlLw3lNOoE4bqsZBX6Wn3c3QUCGQGRZ3mcdWwbeg3NIcLB+sGaBv
	 PZjejUo5ZmLm7fK986r+E5wAYIirAD9X4Jp7vGtrYrEJzeOts+FrimTkOVLay9RsUi
	 qW9NPSvY69FBaHgcNxI/I36sF+h1H7peuR0Bgcpe/vQLqzPw3EisUnJkkfrxof5ezB
	 OpmuG+Emg/HEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AB7C5320E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172473995359.8204.10257517114441097457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d90252cb4da043826a00fca04d5a5282cb1abb774075cc68d373f785fcff9e
Date: Tue, 27 Aug 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724739953
