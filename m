Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA0D1D8E01
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783257514; cv=none; b=Pepa+ObZikd4RPpHHOVNNS14bVFuS8eci2yLWQjOissmWeofPPC3WV1l8nVzvpAcbZqzmmDVhVtxb8SVTTaLV6cBdA/GESYCnYwOe3yN07AwiPSoSPSVbQlVRHXMXGwkMpdZ2f/5oaTLv7PmwtqMVaW67afnsfRdYedu/IXVVpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783257514; c=relaxed/simple;
	bh=AVdYI4n26UfcplbjiYN/b4DsXjozr2G3YIPowWseXMU=;
	h=To:Subject:From:Message-Id:Date; b=b1dGhNHDIvHo1kxhNkO4gn0Rd0NW1gM6QufTc/FO7IAMTYR0X4/HpZqb8NoK7ne67jKuWUt80vCfWGb/bAMSl47jofxnYF3LPp9EbVnildoTuR0jT2mjGchEFx/xVhfliFzYv0sRJTrfQ4y95EXj44VqQnJ8D6qY5q+pkAHm9pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4vzfPry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4vzfPry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D60C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783257513;
	bh=AVdYI4n26UfcplbjiYN/b4DsXjozr2G3YIPowWseXMU=;
	h=To:Subject:From:Date:From;
	b=F4vzfPry3O+sE7BOTQZXnCF2bbD/H0IQT5FCuab6T5aoE7M96AXeqYZ74Lfj0QgSH
	 g733If6TneDAZAyLPpdFur2PweGjWG2cOTNikdw22biLAzNwtsFUtCdA/QlXWgaiaT
	 QldyOf36F5Ov5t/84GZx17m6ap+4+3TVdWN5QdkQGhHObPjZm2cifPOnXOJpZYs2Xy
	 j3WjGtKB9/5FGJxJEyefpMI7DkeM55mnLnb28/b9qQKxaKCjRP4YADrQ6Ni1YLOvEm
	 DsvRIxEouP7XIwhee7vUNPJLA/ttj3L/a8mYT6tV4Ztc8IE2+rwN72/HKm7vjUVL29
	 cF/t60WEimMjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8407C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325751368.4555.7539798548384493875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c57c6532f8afc4333d1c537e12b9d2ac0c54e415ec90972981aee485b6bb75
Date: Sun, 05 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783257513
