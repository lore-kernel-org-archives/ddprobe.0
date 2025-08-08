Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E83185E7F
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754644196; cv=none; b=u6LMZn6AHfpn0zm1J0sW78bDRhTQmCRO6wt+XzDBCAN9NPnAxxgs33ZtbGnimfPUvRadUvgkoiCdoiOaHpZkpIFDjnKRWlW3RNjVV9TaWHnpwWbl0uT3WppBQVkMctm4lJHU88ffqGE6z0pYffIzmDQCeZ85yYA0S1mA0fmhO6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754644196; c=relaxed/simple;
	bh=OElbofaax90KP1PSvM2s7ZeXR/n5DuEpRPF0o0Nh86M=;
	h=To:Subject:From:Message-Id:Date; b=HvPkfYmS2CAHCxSDB+HieVnDDcygbniJg/umjYPFSw0J7ucMhu4fR2D5+T+EDbpglKB0QTSiDjc3KEgHlMV3WbLyhSIVl6KN10Ef2gNxbtzojA8+GK4K45SXG49LIvfLemC18jhcLQMxvE/IOV5w5PdCxNKK6v1ys51iFsNx47o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utGpp3+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utGpp3+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E97DC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754644193;
	bh=OElbofaax90KP1PSvM2s7ZeXR/n5DuEpRPF0o0Nh86M=;
	h=To:Subject:From:Date:From;
	b=utGpp3+9yxup1avviB5YGgrJZ73iD+zn+I+PHUEKSArqLB8FUsy3zdeDxyBVxMgeQ
	 AfALVmxdxgXWksDIqxhJXGd2gjXr+PP4qKJ5xXejWWCv8Utz1s6+oqXRQQ+0PfyrNu
	 xJqZBMspvlHgJDXh86FJrmbmD0vBMOWnr7SQ00ssKnJ0ZicjOVpSGDY1mD8/s1yzZ2
	 wZvspSLx5aLp4z+ONUHF33qgjX3ww8CYy8KHxF6gDWON213yIQlQ2LdoIS+vcxbPK+
	 r8stAVLqCCsZAjZSaovaX0rdBm8XAy1+auWy2scgy/m7oKA3pjXtU6XKAC7L0M5N0a
	 wGE0STebyGFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8DEC87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464419358.15098.16648801966407789083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3da823e6b3ed011a16efe08c0a83d97c1ec0ba3b8d5dcf9ff633b807d2d43d
Date: Fri, 08 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754644193
