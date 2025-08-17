Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3275D1853
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755394794; cv=none; b=DosTYs//vtJPBoeUbZ6H+WVi4bPmTdhzBqrOJzNOJAKXYNnmyFYPoa94JwMnp+jXepCtvsppry+HNUbgwDSTh0uKymObgyoLBiIBc/eRP5BSf/y1azr+VhSGZzq3G2afGJatomS9J7K5VTiGhgRu8IDHmDPlEav32/DcmDNVm6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755394794; c=relaxed/simple;
	bh=ASVw12TjYBq8RFW2gwtDvZqahidpOJN3BpTIFyoo92I=;
	h=To:Subject:From:Message-Id:Date; b=GsODAQ1bfp/OLXENZcUanBORcpUqHbAI9KBAUv4oo1a+pZ6ehY4/Rgr35p4nR2N0Fy4Gu3LylGGl5uEK0ZtU5FmgFivXdNErJ3trozSwnnfQziKMP53c6naUhI4P2cAwmCxOPo8rqxGi1FoUeCKHlutTPK4bbUn/ed6n4Y+G9p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e59Wnf/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e59Wnf/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4275C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755394793;
	bh=ASVw12TjYBq8RFW2gwtDvZqahidpOJN3BpTIFyoo92I=;
	h=To:Subject:From:Date:From;
	b=e59Wnf/UEbccJVM4p7qV8499tm9Xt1uXcGiPVWcXir/gyErfmZb9ZuceATFh0iNCu
	 mkVqY+sEVTRZswUdGYFDANP/FN7AF8VKvpJ4LWW/CMimrsNpZOyHLJdD9BmYikx4w4
	 niVYYMHqgV5UPn9JOqldPchsBPEkEwH4aNqK61SIEcwCPXkWzEkcHFWpwpdd5HfST+
	 CZ6AIXh02/hlQtSlN4Oj9xh0/+fWwv9Di5pbwpGIbXMYioQQ/RR3U6ZyX9PGDf/PEN
	 /YX39MUgqp2YShn3Wrz70V7XmqM49O3Et6VcPvkb6l1pR5j/tsOry4EvDNLddjddD8
	 ZS4G1igm5fMAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E6CA0EE6
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539479358.22393.14577278814717405793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4783287656856422586890190dc6e55925b60673a1128db9b713096b6911ac9
Date: Sun, 17 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755394793
