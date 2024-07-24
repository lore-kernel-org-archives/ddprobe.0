Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199055221
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721782554; cv=none; b=Y7Za1F6ZGBoUK2WFL6+uxNvVz+JRlryU6Q/Lw/OfN2sUe7HlZEOFaMVSkddfuQVokbQpgSln8WIffBq0NlWS++pHoy2NdBnsss9p/9rWwNf4W4r53a8KpfEjQGA8/L9lX6fM2RntGevZDc1H0/S2cNRZMaZdpmTePE3KD9slrm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721782554; c=relaxed/simple;
	bh=bNqFPmb4P1jMgxeGNv5kNt6kVFbSUzeyVX6Cs8I9x5A=;
	h=To:Subject:From:Message-Id:Date; b=GFkMct8D2pWurf1mANuLLtMAPsKxPHcTexxVfp/ByLtEsGmbUcwCqlNd/NJ4R+/MW6zFDfzudczKTboHmXn1lvBL4JiSUltZ/WnXcNBV81jEBJR6vVHCFHAHEvhbMQqbKZZ9b2ZOyqhJ5hNGvRvAGtfgJjWd/+EE9bHw9re22SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jW41vpoi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jW41vpoi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A23C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721782553;
	bh=bNqFPmb4P1jMgxeGNv5kNt6kVFbSUzeyVX6Cs8I9x5A=;
	h=To:Subject:From:Date:From;
	b=jW41vpoiJ6MVZ95jMwKiBiT3783iV2qjLADzx3QDJedGqOwRGcvQ2x0acd4MPz293
	 6EQt5eXjpvuGbWyrwRsRI9SPkTtprEZgPwE1vpNS6OP0ywP3f8f1gBd9gB6AoBEjF+
	 2N4QPDlZ3g8p06oZv5HM1Kk4+uxuFd8/52SwghBcDlJeHtkjhiGjmeQurAwhBpeQPz
	 DzYFaQn49SkmrPW4MZjtzyHdebVhk2HU1o1RnexbGyW8MZBQQA48LAWWVw0ylFnYPP
	 lD0KU1vdlA4wUURjQ9BVr0PXp05fTVFxTk0ggS0JGIFOcddBjzjyp+Ejqvs3IhUxlA
	 MFlPjvWemQVpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D35C3DA49
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172178255363.27993.9843711695242887275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eee030e83a8a3ca7bf95007a30d5161ee56377f8a4fa8ab738f35fbc7852b10
Date: Wed, 24 Jul 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721782553
