Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB381F4CAF
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756127994; cv=none; b=CecYvUeSbbhglwoa7vtv51/p4Iy35XqPmf2GfKK68BHgSq1GaUASC1ufjhw1R+rPaPYngawvoBcm7Elp+c6nlMEp7qNC7tzMTRY6iB0U9tcjuWni96s2S9tSer1B0FiZOb99RFNSeMyVHJA6ne+o6NCssZHappRSB9482Xh2cek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756127994; c=relaxed/simple;
	bh=4K28lzDdPqbntB5+8M2Mc1jQAfS+3CJwjNxLwgsMPp8=;
	h=To:Subject:From:Message-Id:Date; b=P3qYNdoxqnAoWxHvwmIdMvKbk8NIQ9Gxo8lsylSc57Ycw5t/EM/Tmrfd8VJ3w049v0S/W6K6O3tjLgDH/4s9CS4V3q8dKg9lyD6QdElVNNxB33nBFT3QNcznfQKQxYlvmvsil48KOTgx5iMsyt45e2OzTPugyByKm3pu8S2CVUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uojr4zRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uojr4zRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E669C113D0
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756127993;
	bh=4K28lzDdPqbntB5+8M2Mc1jQAfS+3CJwjNxLwgsMPp8=;
	h=To:Subject:From:Date:From;
	b=uojr4zRjEeAeybVV7prhgJ7bk7LeCflc8BMhUb98Z+bKX6daePP00zIIrxVLF9qEM
	 PP8jhv6o4eyWEwtheLDl4ia4g0Jbt06C/xCUvec9VkM2K5QpCpr3aRmrDthoyMlmMl
	 vzsFI2z3/TZh0Mjy4nNMAx9fcmwq1FiL/Oxa0pcYNB+pcQajvAnGEAUXI2kGIPcgh6
	 nrR05HjoQkZ5o5qBYKuoynPuYJD43clC4QT3m9pCZPFgeMaNOMQjXGbZpcYInM1rDJ
	 2YcMl5AOXoXfk1vlZlUb/pUr+jkqMsrP7baDIDSg2WX3s/hGYD4fFRU2JQtWI33pDP
	 M9I1d+2eqOvvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC6CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612799358.16849.11510012150917222813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e0f5bc5ebec44bd84ac32065f862af365884b983df445f8f1287621cdfe6ae5
Date: Mon, 25 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756127993
