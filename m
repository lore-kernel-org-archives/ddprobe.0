Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444FC35C1BD
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786683634; cv=none; b=NX03qWkz7TuVL8rL0OA6OOXfAWtmtzRC4RLXCx1ORTt81rBU1QJsfZUiD8w7kCk54+97CjQ78IL+GGl01oxMdE8PQTscVd1KA/aqSjbpJyMmEsmBn9LhD2x5k4K+48TDyxt6l9E5Nzttj8uXofIaVwAVENGHPHi+ryHWPakf6UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786683634; c=relaxed/simple;
	bh=KdTVEd+QVyZ+Kp+BUYXe7t6EtBd9PPe3ivx9BrJjH0I=;
	h=To:Subject:From:Message-Id:Date; b=IVzH7taWGeUp7sSbvclD3ksx5R4iZayzCcT8RVBFaZG2wD+H7v4scX5qDyWg6zceIJ+wVerebEnD0asBFSpbEpt843xyQsJ7Jniv9Rqcy1GrIsOdf3/Qfy7GIUUh9fHtrqEOnkwK79Atq7X2Y22dPX1pN07jCplbjzFmVvedJjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNYjNQuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNYjNQuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF07CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786683633;
	bh=KdTVEd+QVyZ+Kp+BUYXe7t6EtBd9PPe3ivx9BrJjH0I=;
	h=To:Subject:From:Date:From;
	b=GNYjNQujpMYbTx9YB72pvRrZ7NMgC+jAKKGFJZziT437qLCo025EFbYSTwb2SXCVg
	 5nfpzjtHmVHR8U9wu8IOrEZ02KU8yk3lawu9umabWypz1UsgjFdjb9iXZy98eiGYZG
	 6qgHTbSN/NN3iJhOHH0jJe1WT3t3gqRCSbprzRJ8f4IIOSMUBdtVhKhbSj41+Xm+pS
	 E1n8ozcf/ifby3c04eRjlYzrz2i9ej2yagR2xLlCFAA+J2GRt34wyMmzgeavYukVFc
	 P8XWT6Dfu7G2j16VFHOOnn3wf7DIYd/tPmlxg/Z7NSVa3TKlVn4JwO85RFMlvZv/tO
	 aWX3u1C8a5NEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEB1C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668363368.29348.2027402515307179225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27720a5f43f1b6b21d101263c2281f3d773fcabf24208084616ac1c5d58c8f96
Date: Fri, 14 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786683633
