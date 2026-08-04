Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4B03D0905
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785856834; cv=none; b=dBgxLV4w0BpBHUPVtU6yyX7iCQXh1KUlIW34JV2OF4qyrf07r1v9kbVN+qbaWAn1S7dG9EJT3ZAcn5NaKSwRr4ghHN4emhc4R/fjavS7X6FOqr30HAtOZrcLFu+vawzzQ8kKPT03+uOT30CuXBQBtzpoLR+oWFzC5Wrx4JOGeVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785856834; c=relaxed/simple;
	bh=TwYsKGxOrg8HNgQNe4mMeNYPEfcMomyA+S8RgmHzrjc=;
	h=To:Subject:From:Message-Id:Date; b=m4KOmALxVdO/dgHen6iTbMWpSUUEA/Yj7rec6LMRry3Vp7Ivdoa1gpU94RvXSolaDVz6NBwwzVRx9NwZ8uF3WB26st2byoPylVvIcdizHmb3qkE7ocPiWns5UH78xu9ofJySw08qYWa6qQ3zGbfeHk9LCn4Ligs88bzr508k0To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNAOJJkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNAOJJkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1A6C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785856833;
	bh=TwYsKGxOrg8HNgQNe4mMeNYPEfcMomyA+S8RgmHzrjc=;
	h=To:Subject:From:Date:From;
	b=DNAOJJkX+ikkMGCzW4ZqnNYDqdrzENsIMjvreGKNyqMBPRKfbuhsZVMMHMxWEcRb9
	 tLqD584qXV3aL3T2p46+y1l72iAMiTXqR5MkAbgVZlYDOk9qIlOIr2GecWL6/Dykle
	 nxMggPtT9bFZ8SZZlqMkUqHBZUKHuJr7aqFYIWylZ2ZTKJxRhloTgpVSg4+tpYdDQQ
	 6neVc9BJYpKh2LWelQITCG38Qjxx5+OoZVla/YsDDCccRLC0MXbXQE3p3cFfDH7Czm
	 J0J/GlEQZXFtrxlCddApZD2QnpajmdxVaK1v4XdtvRtJoIs8xVhVHvmREV1r3azNgF
	 um1DCf0jxjNxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA28CC55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585683368.21820.8211350423456114082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 801010be9a14df5cd0c592ee45c443a26acf33da605fb6cff1112bd650e042cc
Date: Tue, 04 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785856833
