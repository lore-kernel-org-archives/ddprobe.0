Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272CB32C924
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768422234; cv=none; b=MPQWoKNr1JJNFRIGyB9fyEdgtjcJFoLK35NFTf4ISczfb5SpKqbVkHvxJAgpoBsgVsz22Lrt53jGejYL3iwPLZF22e5V+P2slKRld77YhXoz42ixdGcRegI3ZTITG5JkECCH0CnxX2N1VcJ2Cf9Ir9tIr/bmnluoE1eF8MymKms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768422234; c=relaxed/simple;
	bh=/8q9NqsKmc2KjPxKLOoFslZwSWuAh1sBE7r4N44PMOY=;
	h=To:Subject:From:Message-Id:Date; b=Kl+n3BKY+LcCo7OLafDm8Tfw1spaaAu4U+j7/ecJOFLT1MjSzKQE+eQ3avpKYvM0MR7QnB35RYkHrwGb6rFuepkdfeU5VbOfShD7KXM9hjsYKcCK3rnJE+XPgGJvP5Cb8XeILQdCqRKqbp1obwVTbE4Y3xkR49eDBZjovkq4m9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXKRBa10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXKRBa10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A695DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768422233;
	bh=/8q9NqsKmc2KjPxKLOoFslZwSWuAh1sBE7r4N44PMOY=;
	h=To:Subject:From:Date:From;
	b=IXKRBa10qMVSNL0E4hoI0NfjE8tlc9BRr88ftRp5PPCgNg91VWRcgl73AdERJ1kvY
	 3SfXfZ3qfSMQHfzxsHb67hJC4+msqQrUuUyb6miZf+vPLw3Q4y8Yi02FBCgDwsCgLl
	 tHF142kn8z5oyPVrjFitwXyMf9YmYWqzokdya9REuFBYAEIt15NKyDp9ForpivuTsF
	 UU+seJCGbuhY/yTX8aQWKQOC/fq48fDj/jLJ6dQuBJ2tC7kymp1q23AwAhslJsb5Ho
	 s2B8BHqSKPNDCp3xOk95rkcHGrlIwJeB4ASQbtkEHyUKg2eIr+duVM8SHGOORMIAHo
	 pY6uKqLmZhVBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EBAD39011
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842223359.9060.16023124098917155858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 663c80b47ffbd4f746a471e0f82203495b2af3841eec186642d8039c14d65ec8
Date: Wed, 14 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768422233
