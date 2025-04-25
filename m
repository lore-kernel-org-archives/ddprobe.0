Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CBE86334
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745556594; cv=none; b=Rnvg/WTRSQ4v0lpBC6abAOgrX5NcklXsInaWrUQAWJ7AP9XqLsRwYuS1dxfBn+2wG4iU+EzxEk91c0tA7G5IwY83A4wn3r49OhfOoSs3R82GOoi2aD26HDI9Z1fliO928PYsq9yhWQzkUDckos/gtgkonK2G4UeV6gntU+3T8FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745556594; c=relaxed/simple;
	bh=OpjNtEi/APMdh0u72LHSP8eqYaOm0gPtAxJ+Blx4f3w=;
	h=To:Subject:From:Message-Id:Date; b=GGCA7nGH6eOQpO5nuyp1aLeCcZnXJwPxmIF6M98/MSzgkLaPcmVItsL9r3jsd9ReIGHHnGa1MrB6C/ZzsYLj0hiRmoH6Q9rK5anDm/YVGj21bKOryDJ9B2X6jUdr962HhA1uEoVofe4ITUKiE83T0fK/3CibYIOMTVEWSrkTA+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WN7sIYmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WN7sIYmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EDFC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745556593;
	bh=OpjNtEi/APMdh0u72LHSP8eqYaOm0gPtAxJ+Blx4f3w=;
	h=To:Subject:From:Date:From;
	b=WN7sIYmqP2udLFNYtZEABzMycjwuk1XDkZhQQ5qlYGlF7FdIrR4QU3Cf6GTFuvpga
	 4UhjnuXT8tU6vInC36tRkDDeElz9QXLE0ZT3KPQK3i9uDzCic1AAYNgoB8VEDbRyYU
	 D8SZKIkt9vpqo2BX1CQMXamAch950/gb1Np3/tI+fa1cCCQ6Yft9foaNicmBO01XPC
	 VRnc8scBpGnROGS75yCgI2MqIIYAdsNtbvAovuWJeQhocpqzHXGkFe2PFAg+54rmQc
	 FYFtV2jKGJOdJFa3PumqZ6BP5FhC6qxIhdO3/3vfXST+zLDMKl9vuCej5nrqRrgXax
	 MdKUiaibIhWtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92313C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174555659357.6547.7549832620707769920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55fd88f8206cf4edbd65f94915c40e5192c5b7959d71be8aedf8f1c13357fea1
Date: Fri, 25 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745556593
