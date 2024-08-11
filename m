Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151C141C75
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723413954; cv=none; b=GopwuS7AfYsapU32cQ8LY/vRQ2IkirTDMXwkvcOnNoFfZLZyWKZSGFySDLnY0/JwUOYLmbsvl5Iv8LXPu9m5xsd4RDsGQEwaiCefrdgAhcZ3SxYtH/ViP58DhHa82eSk28LJYUSTTXsruHhy4FHLQl8UpIvN22AelTE9dlZBt2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723413954; c=relaxed/simple;
	bh=BbvH1UCFUOID4UkF4LvCE2VzvbXALK+8nlQplGuTsss=;
	h=To:Subject:From:Message-Id:Date; b=CnR8a2UaMY+7o2pJIYzqfhLeKwP6nviL+01GdM5M4DRffX1K6fIGMbwA71+iZyqiFGIAJuutA2wgT//ugl/L7zVC9Avlr5EyKvxn+SAK6spOKEbGIIFrIiII+qY+rkd2lJrsv7YFXNOZZpfvDihx/yGktS5McU2z52drjhnJxSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbhJLUnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbhJLUnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC694C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723413953;
	bh=BbvH1UCFUOID4UkF4LvCE2VzvbXALK+8nlQplGuTsss=;
	h=To:Subject:From:Date:From;
	b=rbhJLUnbyxRdCDXxVt5cGVyG7zIb+KNNckE24XTUmeWP5Vag7WZT3ZUN0Yjs4sF5A
	 xkzJOlmEq3SQbGLDRVcBlvgHBtQX9yH1c0H7ZXvY5Iel32H10oTLcTXOJu1LwAxEzN
	 NW1El4chLn5JCHZcLXaY9hgJaiPSbBTfTUj/rABJDw4V41GJU7ZNt8ZnJ+x51JwL+j
	 QsAk1aa3rltMzn6gpEyZUtvgSRWPn8++fuLppbOLl1+RZWy7uEwr1snaCklEe0IO6w
	 DNXOKMBH7hN/6fMwusitwrPKBaYmq/k/Qz2P0U9lEW03v/OPlHO4btTFMltyTudg3g
	 2g0eguvPYaPcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98865C52D7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172341395358.1142.6193535621098462756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a172f77adcad45075db28ecd027d27ceb12a637c38f189c40fd5db6505bf8e
Date: Sun, 11 Aug 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723413953
