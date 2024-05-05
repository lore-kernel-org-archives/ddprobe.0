Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECB81CD2B
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 12:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714911143; cv=none; b=p8F8xWeylVFmPNU10y0P2+HhkXFnKmBR6t1VmnAhVJevsqXZ8h9bIbkgfmG6VIkUjhLulYjegS+vWFNMQ4SHOPoQdFZAcQmFUrkqU14rjGLODGltuwGOyo9Bs5yRtWnPvSnfZzFUQcLSZ2GHwNHm/N+DaCfPeAbz3qakc8d/bNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714911143; c=relaxed/simple;
	bh=3tx17Dx3kbGPTrPtVbkMdTriTiLvpGiKoVzuVqH/tCU=;
	h=To:Subject:From:Message-Id:Date; b=ZHrzQKGkAGhs9vPIA8lN7/NRpDmS6yq2mfWg/xUa3h0tLHftmCwGzqxrfiwq/295t3KXe58IdRPiy3pp2Af6VxgBWgn5+O6ujkCzngK33pcWmPXdqMuMqMG845tKaVL15kJKSJx8gOudrp5yX1e8J5PEW892JyKZCl5Bk7CuRNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oY71bQBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oY71bQBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CC6C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714911142;
	bh=3tx17Dx3kbGPTrPtVbkMdTriTiLvpGiKoVzuVqH/tCU=;
	h=To:Subject:From:Date:From;
	b=oY71bQBbjQOnXHzoFRXenb6H6RTIsK1no7nHv853Trtkk1prtg1vpzmmSJe6kAfZ2
	 ut0RK8tuNCUru3tnZ9A7HDbN5wIvZRoYOCHbqD+0mc1MKcs/jfBmiLYYbph8hLeaan
	 MIl+jTj1d0jcsak6VSBm/u+OPHs/jKY/sBFzG/NcZJh4ydNwWjNDwRb6HuON5NOaEd
	 D+O0A20hrwtdF+CbWIRg7au4Vb8c8UXw5xmShXbS3H8SQ9/3/WugRJpeCDwOIx4iao
	 RllrWm8PseqrmL3wcFs7FxxsNk7zM2AGL1Ae5vf1EnhmY6/EqAAO2XeXI/fZMONmFv
	 2f6bQyfJqlx5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE61C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171491114277.30572.13049791927437816309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b3d8d139a1b0eedc5e42d62b6b5831005cc6330835c63ad62855a4e3efb65e
Date: Sun, 05 May 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714911142
