Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C7613A244
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745645994; cv=none; b=DD9iiuxpS7uAcCGE1sVrpQKUISM82YSY49umvbvG3Geey06Er8SBCbwW78RJE2tC5eclPRGHOXv9Xmg33Y4m2CnwpPEwQUETGcyNbNBadECeyWwpGumasRkoMiFX2NAmdZerYlEeCqKdhJ8X5JAGvQIaDaPPGPF7AS+nleK1RKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745645994; c=relaxed/simple;
	bh=ezHNMFrXue6BLvgHnWb4O5PueDsMLjGnwAnhJ8DF5nY=;
	h=To:Subject:From:Message-Id:Date; b=Blqm78pTt5txkPZfA8e0YJm38Ykl3gcwMdysxIGyp8RVuG4j28qo7en+tjl6xK75qZRBSduGEqYvO2jIfD2nrJC53zmIKy8OizJdWcQocz37IIDYZzmdDPKZdwlSQMcWMNhHrmEclbpz/NhQJ9Sq9/XdX8UztRXrFlTI2dv9n7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyMFDMic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyMFDMic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01EBC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745645993;
	bh=ezHNMFrXue6BLvgHnWb4O5PueDsMLjGnwAnhJ8DF5nY=;
	h=To:Subject:From:Date:From;
	b=fyMFDMic17H2NQa5fwWXAe8Cc8CbMlAO0J6srC3H14lJ6jVu0kHgJbl3UFJXKpTS3
	 tYv8LS/zA6bAnac8hX48bOYwgehx9tRKJKVRFB595a7iA8gZc0rPoFcrxoPHV7N7cg
	 gUrjRf50MS9Cz5VzWmQ1FA5Ybd/DdmUmndH1Pds/Ufj3Z2CaCH1vwGcxW2z6/QPwzr
	 HVtAN/JosraixFMfo49gp5fnQMZ0Ohcvv5r/V88BXuxYwIS453SU3sBHtI4ZI1ku+e
	 QoQoJDgkgCLU0R6OhA6Gp6d0uK966iAajBS+/K9xtfWBOim0K8YRUEmb//Hf3JrJLx
	 ZBXZTwBgmrIYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC0FC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564599357.30872.3059177446716241089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c19af0f01c779b055e176afed25660d3d037781406300876f0529a29d8640b
Date: Sat, 26 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745645993
