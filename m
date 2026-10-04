Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E81414A8B
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791081034; cv=none; b=GnhbZcPE/JnUNf3bUWPeeb/tx+tQyfXyCV1aFfUtRNiRCJhphBTDUyQLimMC37z7FzD0HPAXamfdKXdj1oEtseWhEURX5W5g+FBlTO9+SZV7qzYiysH63Z+J1/P5RcLLCk5NaySAj9eaPTGRxsfnjxjtvSKEfxuZIXvb5OhxgkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791081034; c=relaxed/simple;
	bh=QgvKEjqDjSIIfWg8zSTIO8JyrdCsGW8D1uQfA8Z/ojY=;
	h=To:Subject:From:Message-Id:Date; b=X874dZMDeKH7uQGcCSCZHNbUPJ+m6lzYTgYVnarMTLpDtfxT03fGRhjfi8rlQc9V1BwENONYq943b8yIWu7XM5vCYa+IfKNyiVm0cMJH3MT1+UN/z+cg3Sfa7Q/mNN3O3nZn9gZ30s4Pk6OELv50rKmhT1UXat+pP8toL28/TJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXJa+bEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXJa+bEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF6BC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791081033;
	bh=QgvKEjqDjSIIfWg8zSTIO8JyrdCsGW8D1uQfA8Z/ojY=;
	h=To:Subject:From:Date:From;
	b=oXJa+bEbYfU7tD8Cn9AP0g8O1a7kHkP2/kV7eaCrjbIXJB2/afZQKF0eaIR4YY2hy
	 7/J3DbTZGbPb3ETPzvpczrWZZ1lno0cBSnHcCgtdgBMUIyCECrE+wfJy+jA7V/YQKW
	 PHMFjrL/RNdYuu89WAYDUIpweIOsyETsG7a38Iv/YDSg09x177zKNbecZ/k5dYM0US
	 4QmhuZk9CZt5FBbDZUH+iDj2BuEz6KL27754Tdt6kH6J32vpCVerA6wwLf7VsEMHQh
	 g2aIgSosnGWIITx5naRuLq0J1UKXz2uFSqKlWs5g4zczDaljVBqJtUBBcM2wZPWgTJ
	 Dzd4lFnGs6RfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F98CA5FDD
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108103371.12620.15058715870778467824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf7dfafeec6edfae7c45b9980e41536e40b4582567d56cf84a4ef974e70d202
Date: Sun, 04 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791081033
