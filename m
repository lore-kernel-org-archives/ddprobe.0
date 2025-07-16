Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062242E36EF
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752632994; cv=none; b=GnTtJaFDsyhGG3i7Pg2PtGqz+Of/Pv0Uqc31icWwTsUf58ldq6JAg91yB/WoTdoxoZ7iw29NPTJFe9VVuUvnqAIF/F1sHCFm/fxURtpnFOMM7OI4h+/LR3Ts4AAoUaoB/BzoO/AOu4R9FtFzNtKt22qDPnUIIOnGwsm1C0Wt3bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752632994; c=relaxed/simple;
	bh=kka3vUo5rtnA64+YCJ8gi4/tkVXiPacmh9bWP3u6Iuk=;
	h=To:Subject:From:Message-Id:Date; b=aNMBqRnsHB0sFQOkt3zIXPCZtaDzBGV3tQ2t/uzyjUSGxRgc23sUf7I8Fk4S6KG2HlHdHclu7/wKRS43dSuLqVwHwTETEhcdVlBiyhv47dg8WXxhiWGX2ZifK4dXyFAxxLBBBpYAvhxpGU9+O2JV/mmGxth+BImWyEgRaLPvoPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgc49VVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgc49VVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DAEC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752632993;
	bh=kka3vUo5rtnA64+YCJ8gi4/tkVXiPacmh9bWP3u6Iuk=;
	h=To:Subject:From:Date:From;
	b=cgc49VVjEmVVjuRHXxoxARGpa9cCprKTeBCXj+3rV80afyEBz9BLz92XGxyHT75/3
	 LqBG2Q7UJowJLk/C7YZYIJxQ+oE7ftiWY1s9oquCQFCSBFxvHqjLGbBvGZY5OBsgTC
	 AN3iJ+YEHmUmTCKaKfHTUNFMt88WrX4xekNBNzLermz/VaCdAc2BZB1trb2ljZjvvY
	 EnQXo1TsRkin1QmSRrsXzwN3Bs0hoc71zXazhqdf6EiLlkNv9Z/O0odBkffcb/V0p5
	 zQAc9zvneu6fpOqmxM87kQSQNjYa0bcWSoN1Z20vpoXS4AyrUc5keoAK7EpI3YUqws
	 B85qE1nB4Fx/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93156C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263299358.32031.3125882580251300853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f3c03ee5f9216688e970b8288a90a8c9cf25c334102ef7392bbbf74100be843
Date: Wed, 16 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752632993
