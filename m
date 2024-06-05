Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A86B13AA4D
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717568783; cv=none; b=sQDvjGXPnZu1S8fw47XNAtGlbiy1vR9RTVNbXVYRZHWgwojzTqUWsdB5CJPqKB+4oOBJYqLt9TyE1uoFDhFVpibYQ4yxQFTa3/WbmsPrhczuxaGo/xGseazjWXQH11QpH3BFh5Qn+OSOiZzKnnHcidIASHLzKiSGVbxys9HdyqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717568783; c=relaxed/simple;
	bh=DFIbQ5AFA2JYbWaPPf02kea43OHD2aGbU+7xNGqALdk=;
	h=To:Subject:From:Message-Id:Date; b=NeQvoyERKB8PsndM0N3BDj51/5qRnbWPX4Wy6fsp27V+EU7gs/b6ziZc/oSiHyYYC9h7hnsHKyeVsUSx8N36mqA/oa6PrG/x1foO+c80H2ouehrg991FyWoS9fPbwFq1u4FGxU7LwHGQFkFFaKgZ041rJ0hDy7NuikSTJ/7AOdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFdmU9Hj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFdmU9Hj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE91BC3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717568782;
	bh=DFIbQ5AFA2JYbWaPPf02kea43OHD2aGbU+7xNGqALdk=;
	h=To:Subject:From:Date:From;
	b=WFdmU9HjZQN5bZryj2Nh4t2lz+SLQpsRKi7n4etlvJBOZoYoe/z3Fu7oabtq5Poz1
	 PLukrLKdIDdx59W/h8/XEMvy496tRIIZFpbwGeefigETySgYWc7yyVgat5kOkMoQro
	 8a8FoVeCtWmAsaIvKc9OrgytcPntyTYPencBeZfjiPU0kJf8rSFWBwL5CMbBX67S5x
	 zUIRk31PlJHH9miYXunUYeOaEMZUCTmK8Wpa2IAOyJAVyrsQVxRGi+s9rr8X/NhPB+
	 42c6OWul09FojsYuKWsewThhJkaYVnFajWwjbCHxaw5UHSBkACVodWOffN6AuRM4HP
	 aCeNF7PQEzrHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDBCC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756878276.31149.2350039535939971932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cded43a7d7a3d0a5e5df4bb957814a080c3c029e4ed370718ed728f0fc6939a
Date: Wed, 05 Jun 2024 06:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717568782
