Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431E1224F3
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780785274; cv=none; b=qeOHc4WS8me37q2xDnOj7/U2v2KzFFlBb6Llf9Rp5LlR5oWHN6fuX8gwZPDxYViv93lyLGTomOwcPPAXVXEQbgNWivR/eeVeUllbGy9CvGeVnZ+muxaOZ2zg8CPqNnqFzEhIjmkqW9jXfbG6ZPKHOAvFNmm7MeVhpuo3BbpNMTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780785274; c=relaxed/simple;
	bh=Ah2xdeCciE1EpJs1+j3R1D2ybhWuSTKJpL6JVjL5ypc=;
	h=To:Subject:From:Message-Id:Date; b=TtFjxcJ7ZOlB2X7saPh6JeFJsuarwEPggbrnO5f1rjyAZOSFq0c+gsKa11Odf0uzDZyQH2Cs/javjEgD2z/K67bHH+wxihfkzATjcWvnoCZKfi59t7xlEgosacM1b9OFoKsKbneP+r53MtD/+e1OMBfGLdTj2BaAJ+iPaLacMqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3EDDPUM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3EDDPUM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04F8C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780785273;
	bh=Ah2xdeCciE1EpJs1+j3R1D2ybhWuSTKJpL6JVjL5ypc=;
	h=To:Subject:From:Date:From;
	b=G3EDDPUMjz6GLz6kEcAnai+4okmBzfdLuq0Nl9rQijXBfl1Mj4slIH7KLMqmhvuQA
	 C/tivqCVcvqmUuQwgmnfuImg6ZVPxnNJTLuslal9mS3zFvQ9ICFNR8vxvCHUxQIE5p
	 1yVFIZ40Vg6y55CySQOWaZ7hT4ENtvct/ccMmufMGKQ9PMrc5cAAR5CQ6uEExGRbyQ
	 mxQb0RTDUm+sWZSxz87iAj6a8jlHm6ST595yiLtiW7/pFMmqPqeiVZbHsT9+0os00W
	 FsusuCZUmpHX3tiB3vav9//L7HWLB8OcV0SRoiuvxnB3ImvXtqhNnnnfmXYkbUYDSP
	 OWXhY8O29JEkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE62ACD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078527369.23945.15390941131044568257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8cd70ab60861c57351c8383e658b025199379e0bfcebe1fa204de4f602abdb
Date: Sat, 06 Jun 2026 22:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780785273
