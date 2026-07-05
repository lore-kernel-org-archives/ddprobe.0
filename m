Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196B516F27F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783233514; cv=none; b=DhQ6qm50jTqOIKKro+kK/1IAvW9hlJ0leNpX7IQQshLwfHVO77B+qr6uZAUqQ+jvusajiylnDFbzLVlsMIHUTQspqkKZyrtXOw/nNmVhiWFWeim4HAv+Dq3xl89CSfASxWfcTk5StA8eYzg2K3dOGh3kE3EWFiizjoQBgAPnYh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783233514; c=relaxed/simple;
	bh=/82QPH1uS0womS/NB4SsCs1AFXOBfFz9wwhDw4/2eYg=;
	h=To:Subject:From:Message-Id:Date; b=STdcsxlMg9H5GMRb0FSJi+Z8BdMBDBenh4ViBDB8OXy8Ke7dayNpfrTGTAHCNbDxAB11kqEkvmGsOe4LtiToTqlJB6okgCxKfJjBmdHP7GVqgm/Dc1GaYQvWBAVaIqSbxiSRt43F+uDYkzCzvO6LKscgq0t/LlejR9aKZzHUweU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBKOVjjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBKOVjjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DB7C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783233513;
	bh=/82QPH1uS0womS/NB4SsCs1AFXOBfFz9wwhDw4/2eYg=;
	h=To:Subject:From:Date:From;
	b=GBKOVjjpGjutYm1IXRGbzYLtXjBqadsfmTG8vOMmY9ht77/jsnohc/4JfEg8X9ZtN
	 L6RILyKIr9bZtPzkgfPCCYmb669Hk82WaXFx+bM5o7h4dl6vFOv9AckpA65KynnD+h
	 jVOY+FzKfbpD1mVIl7uqH1aKnwnJKFb+bcjQGKq9//6eeejEOnshwLVOyU7jW3CHdG
	 bw8xgGOXJGx67TEA7mat1DoMh+iuqpa/89MDRPttOJDd6x50sDYlLMlgKU1xwhs/x8
	 QLnCnPH7GLUktOUkoBNR4vny4MbPRNWS71ZSDAg9HLwhhGaSgd2jdxpzB8ibniLR5M
	 NvtZW4+dSmSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8433C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323351368.5098.16282890114789255593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48486ea755dfd72bb405f64e70a3c0a609f06312c056700a0d595904fc678058
Date: Sun, 05 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783233513
