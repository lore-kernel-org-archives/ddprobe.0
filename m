Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E92E29BD89
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759357795; cv=none; b=YF08y5HGV1uGfV6fvGIrXLa/4qT+al8KJJ+7bxIzXkqzyHjlezKXS3uoj8Q6U4i5ru1u/gK4+u1IHD/9dsfYcnFITOE9TCTrUstbqyRV4WlpueOJI/pc0YN7x0+62eRfOZ88N+F80a04fcpAwlsDTGG7OdwQBLdm62LprOrIYB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759357795; c=relaxed/simple;
	bh=xj7N1azU1DDC+I9WzVrXtlfjcFhRBVkyjv+HSAnEpOE=;
	h=To:Subject:From:Message-Id:Date; b=V5Xh2UtCceVTvdzQ206d3zDtnEEnsaDPsHtujH82T+ygCDbD/hsnyQMinxpxHggtU73jNyDHf0kplNU0cIJzIkCnQT2okk1NLiOytC/RIAKnfS/1pWG037SgRO5BR4ltXxZg2BxCJIuivQCsJMqh3l6GrbccGXKcXdLpS++zi98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gf7OcLS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gf7OcLS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F63C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759357794;
	bh=xj7N1azU1DDC+I9WzVrXtlfjcFhRBVkyjv+HSAnEpOE=;
	h=To:Subject:From:Date:From;
	b=Gf7OcLS315NCPfRm9DBmcQ3fjGkXqcMBDJ2zsD+xGwO+yVrf49wppEuHV0y44cWXK
	 A0hEypIXMWD9TyizUg0+cWe3mW/h8FVAJZkZ6cMsUMdY51SfePyB+/ngqNdHiCKUFw
	 bSsDHhaGPi5ZeytzMLLhFXPvf61/a61sftwuvWLfQciG/VRESJKeE0qOZ6Dg0EMPOB
	 Wi7DR7pvQKrwAC33WxyT5fjtwmrdwnRIukfnb0r9129RsqQ8KrGfMrLSHy5YDE9xOA
	 FXyhBwBY9dD6/yHDPkBVk4G0qqcmBhe0Oq8VyOE/fazupAaZGFhdwgyj6XsuMhz+6D
	 0UVt1DfIP92ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB0CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935779357.21837.2418462938918067449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a9a831e747d846058c1dddf61894ce52ea25eb4c274db4b6b2297108081046
Date: Wed, 01 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759357793
