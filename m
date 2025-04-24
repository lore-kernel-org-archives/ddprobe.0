Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FB5280CCE
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745517594; cv=none; b=TF4fjZjg3au9cFM7iMYZSGxh5vb0Gf6jce5KV04I1Dq5l2xx1PDIq45GXQVAhsz10ivWGO83rBrUsdp3SzqfLmu+TvQQHmMjbaSDQMi7BMnB1UHhhjLa6KNUYzGfAYyir6HMUvVLVxd5vugiwU5mEFcoQmLiIE5OlTHcgleAxvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745517594; c=relaxed/simple;
	bh=BWwRW08eeu4Tsv4vwnHSu3aX6GnqjGY9+ecx3lBtpQo=;
	h=To:Subject:From:Message-Id:Date; b=TgG/JuKO5FxyjkjOz92aqq8m4Sg/+h+omyw9m2PRoJjsp25oKKc7h8LFOaFv5ZaWtbSRm3oeC/+njxGmvqrUh+LOLEW3I+LIrOjNQ8JXG76mbD44BsrGtU2XVcJJbVZN4V4vQC/vL0RKGBGOIIuyL3oDQ0m5SRFKEd/JWlbOjOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wh9w4AzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wh9w4AzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A118CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745517593;
	bh=BWwRW08eeu4Tsv4vwnHSu3aX6GnqjGY9+ecx3lBtpQo=;
	h=To:Subject:From:Date:From;
	b=Wh9w4AzH0saxCyfbZIiicnyQ5e5uUzx/Lx5coI5koVXevbsais0m89AbXkI2vTbv4
	 m/EztUpLgmg1hmctVgM1+AooppkPLfXxRniNAO6IDP5tdmXjjJJjEBGoA/2DVqYEu9
	 Nay1vlUTA32FHDqUixzTh1Kkof1uoud+pDQluxU68tI4T1+TDfbzZiv5ZsuOx7t7x6
	 EiS3/sIsJk6l5l1z7xy/dZmHyVfCxmokDdGJK1SPYpbUptIdNCTRcGcCBdfa1Rvr65
	 DkYNqtuvsemctJx/kz4jy9trCu0tfX3Ddq1g6ZhDSavyQvB18mZ2SriGAk90FBPvU0
	 7s/IJ0yOE7vBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E57DC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551759357.18186.5195132021246569866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ce6f371739cb1d7605a04a75353cea00d4641f585cc1d51e5a04ba7fdbdb5a
Date: Thu, 24 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745517593
