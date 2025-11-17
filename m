Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2958932F746
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763398914; cv=none; b=SLARe0c0Pwgyv88n+7IK86BeJdseosBjie7qc7yn+HBen3og2CduUEHZRpa2jdZ5Ov/oIi+qxfnpCDNd2jMakos0eEf+e2GFlDdsgGkoI+1CR2GDkqJtjnKsbl9sFQKOmhhdESTuSmOg0U+CNyCG0ItWKh+V+pzenq6TAza1Y6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763398914; c=relaxed/simple;
	bh=TgBXq37lO350iOOsh504y61TBVUYGx6iwD0FJGVYzJM=;
	h=To:Subject:From:Message-Id:Date; b=YnYIiJ8FMOF6eDW+78/1c94xwYScRaWamYhE8eqmnr/l3yyOlwdDpiLi+T5JbsIsAxmQJjJmPu8IN5LVRxL5jAOZzN9DF9cVZGpFpPE18cMUDr4Jlvi5LCFN+zik6T6EvZY0qnEzurCJZCoxneknKJkDswK4xNUdVZOk6skkZjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0DR9pg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0DR9pg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCFCC2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763398913;
	bh=TgBXq37lO350iOOsh504y61TBVUYGx6iwD0FJGVYzJM=;
	h=To:Subject:From:Date:From;
	b=X0DR9pg4C10LNC7pFXKc97ClhMke1bC+iA7djhufI88TlGgpVXtmuzIWyVbJrOmKp
	 u7+n9nMLSvA5NZb/AjYfVdLvBbAYZGFHyxFkNA9xjRIKsaUImomEPDc7WtTVRZ8BrP
	 qqT+HvR7YttEzXte7T3tzjiyRWIx8ugdN523y92Dx10n50NUaIUck0fkfI8UlCb4S5
	 QbubsvDqzP194/WjdAHCXAyhSXP5Vvm2CG+wLphc8Sq6RuMFppgVxSqwW/hFGxHHes
	 xUfq9DVRn8SfCfytm7YPkZxzb3BH/F2TZW9fcOh35Q7u0u7qImN5OXXzLWoxdevBX/
	 hUt9zoSRpFb3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92485CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339891358.14504.16798872746978831734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3809aea2896eae83b30f799663540f97cb8fdcccfa40026cdf071d594e4dd7b8
Date: Mon, 17 Nov 2025 17:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763398913
