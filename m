Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE9E3FC7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 00:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717373723; cv=none; b=jPYnL+HvHyetuyoe7bOli+PzJWG2RS+kG8S6pRaxyfmpgBCxwfGuhgnfvHYdQg1g1M2IqxvBkfjlsyXzll9nlZcl2hxJqkl+rkh8mKN/WwZjRu/LMujN1d07KMGb5TzhVbgSzc5KloKi+6j1xX1AzCT8OS2zAWErp8UPgMCIxTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717373723; c=relaxed/simple;
	bh=X01NmoDlrZF6O3654XtuRd6hsADz7bgAmJUxWJFzkPU=;
	h=To:Subject:From:Message-Id:Date; b=KH/i6NibkUowBIX5hk4GwCnJghsNG0JwEwo2rhd46ofp+7BtHTLS5EzUPGEimIKQrryedPNUlz5U5DXisR3xvpPlVd1yv3XdjGoCzTxlkdOyDE9b5NEbk3dPGFn/aDSYipjiq0VjfdT4JIxZeKUQRnfX8Q4zfNyngTjKKnsFz1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUy2rCji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUy2rCji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC749C2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 00:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717373722;
	bh=X01NmoDlrZF6O3654XtuRd6hsADz7bgAmJUxWJFzkPU=;
	h=To:Subject:From:Date:From;
	b=IUy2rCjiFC5Z+2z2p92N97qr8QjSZpcR5JmBNeXlgkvCRdZEQItjgDHH7eDKBrXzk
	 B7bfcv0th8imjEMPhCl2PEmDnB/usAqwvGg6h9TG5IUJCM2VTTUUVJJ3A7SF6y+F1H
	 rSWtxC60kAUenkCY8MJWLDuJU+yLl0Y9PRyUqMLOnMva+NMqFHmpjDqUOptLtxaTfM
	 /h1WUef/upQ64ThjhJQwFW39sz0dUuDxj74eEhb8z690GL6JyNYcQF4DlDAEn6/rfU
	 /hsZzdSUaQ/HvCxNzi+TiqzEo0grd462aQM1qqfWDamJv/aPkIo4WseRWh/J0NK5jd
	 QCbezyOLWGcEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44EEC25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 00:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171737372276.27793.9011680643010208116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecca10946879b9ace7cdc1a15ea2fd8b51786220ab0f906621e35eff9a433dcf
Date: Mon, 03 Jun 2024 00:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717373722
