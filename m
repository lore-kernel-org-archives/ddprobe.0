Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E28B361DA7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772616894; cv=none; b=W+Iq3kAwFNKuimCEJ9cz8ZTSqXtdaPT8ibAeKUxsuf8bNdqPgiVtyesVJ/5TeHFLF8+Qb+ePxQAPqJGXzV41Epn5KTaKj+CtYw2MGUOF2SCyFWU59DqNjYyLdpVRB6KxH/w5ydfU6YJ2VyBCzryPGKaC8bgZoNHdG+ygj2GUFO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772616894; c=relaxed/simple;
	bh=GldBORnyxuz6nc0xuHZ2wQBbJ4k15rMsdmCQlkWJAXE=;
	h=To:Subject:From:Message-Id:Date; b=FYedjT0f3R/9Xsu2j2itNDwbnbGLetIlEUe9TJvwkjHowD7uqb8nCqE4zgHCWoIDpKitRnxodAXHfyxm0jHZtUrk7ENhP8oLSF2IfmaDutZdtmPEAlc6BMtXpMwgtSACfJzTjhNp2sCNRUtNOdQb+JDmoLPFHPDJDFCAti/GNuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivXZ3+Aj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivXZ3+Aj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23A8C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772616893;
	bh=GldBORnyxuz6nc0xuHZ2wQBbJ4k15rMsdmCQlkWJAXE=;
	h=To:Subject:From:Date:From;
	b=ivXZ3+AjifQ5awGQOao1NSabqjRzcT3DDlVPkbfPViBsRd218XDIq+6duWjhKeQKn
	 vPHNgFowm30vEfJnGPI8MtNzwqHnAgufGt8sJWAfv3m/4ky3uo7PQ0dQJh0jOzKci6
	 35SDZmMgTXcdiKZ3TElw0Cs+jkmj0pJmWQ7DFtRnamyIh+4nh2PO+4ltOlpi8xJLtK
	 2tikT6elkntYxkIZxiU0jYkMQVjU4izG7pbsvXRZf926Gk8tLMPiY7x4xoNV60131Z
	 ulqq/VLSdjd54cQAncUVPF/KDh2I1NQIvYljVk+LRH43DXK73L2NKNY98XxZSCkptA
	 xBMpdpIDuR+hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E31EB7EB5
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261689366.8573.15748427682409009273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c747015f08cae770d056eec93f3e7e8046308d800ade517cad2e0f7474a0ada
Date: Wed, 04 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772616893
