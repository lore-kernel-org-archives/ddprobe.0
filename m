Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A887E0F0
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 21:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717449323; cv=none; b=n/bB2hox+InvBeHlDdPf/SmDc8YySXVwvDioSDfs5EXmdXSh7oOeeUs43iYRpU0oCKKNuMR0iEEeiv/7UUIDeHKQR9wnpe/J2v4WeRa9C+eTGqyzaDa7pKXLoeXb7YoLT4Mb4Tv1UozA1CT/CAVYNPKtlWDG0QRbRTZqpXh2Ssg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717449323; c=relaxed/simple;
	bh=v/Ypd1Gi0B028Jvyyeus15qtHARdnDG1Fr0TR3dPWQ8=;
	h=To:Subject:From:Message-Id:Date; b=lz/iNNkpyxux1CfSLVVIuDkmurdVtrs4eub4vpWePGTXrIcAieZxa5UnBW2L8XII7RBPNVeHxEY/5NY99k4wh0b+qkPtE97+fsEVPcTSQwgBvBf9lhABNfoUjWIsfZRte/5IZdjylSE5UQA6ykFPaeNPuAFL4zbjdy89pwkfdUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gt9qqCMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gt9qqCMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEEFC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 21:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717449322;
	bh=v/Ypd1Gi0B028Jvyyeus15qtHARdnDG1Fr0TR3dPWQ8=;
	h=To:Subject:From:Date:From;
	b=gt9qqCMR3f1js+AtPQKKuMJuFxwdBhnoAapli/mzyDp+yRRK/Q0UwFUk96V1iTi3U
	 TBTL/paN98qBUX+auedE22Lvc8efu+QrI5oqcpKmiIQLdqUSvum1PNghvAjjhFHN7h
	 2DmSpsPKw/rhUxkDIGILAHgEIFD816f+w6BTl8HrFksI9GlrqgdPUCdUDM1YSwim3k
	 cthjzvXS1r5QchT194BnPik7WQ3BlF/90HvCzRA4k1J3D5zh8XkbxLwKBz059aT32W
	 Gsso83FCaBtjREL/3Ni7LJvesHzuczP2j6vq8ZoF7xlbxbRrHiKcRSccqSzVh6hGGw
	 PSDX/DA7MoIdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAD5C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 21:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171744932277.29211.14987814938256670122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e592d65c32cc0090bb10bfd1993e5325728a197418a114747a5198d9869240bc
Date: Mon, 03 Jun 2024 21:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717449322
