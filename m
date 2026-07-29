Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525A1280331
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785292834; cv=none; b=II+Z1zqsvtyaccxy3yPS5L5KF5dFicnwD84koCO+sl8S/7kMnqUZ8dVeYdKghnlsAPKjSOSwFAe8+JEQIohv22hO/BjXFp4QvAP+Le9wasVdCmePkZbn3sXVWKXBqEC2pWKMMJqdHK7lT1oAt+oRDofFM8nTkM5uIv5LbZ7OKW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785292834; c=relaxed/simple;
	bh=7ZC/Vr/GISweTFkImZyCb8DAaWqp8AZWNizZ0dyLqvE=;
	h=To:Subject:From:Message-Id:Date; b=NopArfFFcSwaYRkdfhgJJ9UB8EjKaH2o/LmAe5N1zoydSPDm20oyhLKwE8JdZL9G0LyniWg9It9DUaZDkhuFoxAJ3ECy3FEb6a7l+uy9F1b8IjWrjEeEUzekJSzP1fUlHwu9pdgo7SPf7VbuTlN8Hi3i2t0xtsQqxqA3IAay/yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmuhYmCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmuhYmCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B62C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785292833;
	bh=7ZC/Vr/GISweTFkImZyCb8DAaWqp8AZWNizZ0dyLqvE=;
	h=To:Subject:From:Date:From;
	b=BmuhYmClEr/gyMa4A+GGQJFGVRiT16BZG+fHRpw39nlPrUTiUGgpAc28Nnr0qpPGf
	 td4bzU/RkQhi0474ZlXeByCOcRGGBwOzyqYk1m6hVMernguw8u645uqG1hJAQ3mL+r
	 Rmi2XZ6wr4iiwpQRokbzLsjBI6BrhyDjlRNInB0/GvXu2Id9/4imsRDYjW76OCtSwX
	 C292hRRx4oJlaABxxVPS+PRkYRtuB8vd/Ho+UkkrEVR3KsvY9bneNbWNsQK6NqbxC3
	 TjhEQWgdUg4HvFxXMtICJRTJQdf3t4kZoylV6Ud5rErOFI2mSFTHf9toqMiBQjwmVj
	 A+CLVv61rpeHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD464C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529283368.26271.4027586639079542826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8628cc6ac55be296fafcb0bc2d00dd2ed8c12a7e94420887c17e0ba72160499
Date: Wed, 29 Jul 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785292833
