Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3384BCA5A
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753652394; cv=none; b=X3H6FQopUHd8QkcywMwiHZNTHUEyT6Tm9ZrhQEKDqWZ7XjDptwq+hXKqbuLPn0n1CtTOa8tjwIIT24WeIHLNBekFuSCltNGHH0cG5byLo281e3kSPXjLVr8p5y6aaQ8anX+slwk06QuqlOuU0rQm6JFr6teP3Xm7OQgxzYmrp5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753652394; c=relaxed/simple;
	bh=C115CfgHn6eD0uWZLuP13bQ6G1Hsfy8w3HPB7WeLXtA=;
	h=To:Subject:From:Message-Id:Date; b=Ux+VMiNQ0J7G83/Cb8NIMOXd6+fzoo2/PaXxDOzTp0eIDKe3kKbvjDMIlf6sg6wxc7M/i/kf8genDj3slcLz5krc1fpNO1lGQu3bo4E5+qn/p8V3CbEcvNW4aX91ZuoZs2sj1JEmp2Fger4BYBeWVLzQyNPIQuw/PcLiNPvMQMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1L+Z/9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1L+Z/9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82EDC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753652393;
	bh=C115CfgHn6eD0uWZLuP13bQ6G1Hsfy8w3HPB7WeLXtA=;
	h=To:Subject:From:Date:From;
	b=J1L+Z/9fhptWDhsjNSWYD2ms8DebjmDQi4DGDw67VVsAqbOAfMNF9c9njIe3ykwWY
	 V01FMYfy14GAIKoKKXsw4zAeg4CcZPuJzO1FFAkMbM1IXYEXymiRMDfSUrKi6SAtu+
	 qBeR4B4Fu9i7kj98FIKVT1Q1QpxLXrRhxFVJnAtu8lz+EWs75/QwtmWBDqyb6EM0Id
	 i33y1hRyo7S8t6G18LGnxjkUnV7PI5v9SRZ220iXytO0VsnzeMLKzrUlTilETGsjDo
	 H5y9+L+0aYHjl8d4yi5qq5H7fei4iG3CcMGWssb+0Yku89wNhnijVrVUTCoSNiClSf
	 IBNdwS0yI6IEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9541EC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365239357.18809.9048831396041372642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7da53e707b921919f6029eb74f5a3cae655cdc1daa5bd852e2efc957e63bb4c
Date: Sun, 27 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753652393
