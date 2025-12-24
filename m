Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289A8330B36
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766583834; cv=none; b=QBilEIq/oARpyCYayO5yibsEzhQ3kY+FC3aNIfzeNkfjzJH8QgOOWQrhwzjxIJHthIqElA9n1SIKRlWWO+wGSy3ABu7pOmdmLkJfdKOPYZ9ATjFWvBoMU/HPuGI5CkTTC5XU9mvT0P+2TdJcpAAT1+XQGJ9jyxdky3RoU/lvvGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766583834; c=relaxed/simple;
	bh=q7rCagk1449m97eepu9sC+b95kpoNI0vDnGfAYuuB7o=;
	h=To:Subject:From:Message-Id:Date; b=bu7eBHvGsMjWOl+nudS+9ZfWCfXuDoGN+GYykZygYBtPeGpOEHJbT11QAIskA9dxEQNGWH4cXdDU0LQWFi+mK9MARPqirzL70NySkLDGp0TwqYgosD0eoJ6XI+6DksJjrObkM0fvYJxoqhrXQs9NtCb3WFcBgMhT9whG9BSlPWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXJ5ge4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXJ5ge4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A337BC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766583833;
	bh=q7rCagk1449m97eepu9sC+b95kpoNI0vDnGfAYuuB7o=;
	h=To:Subject:From:Date:From;
	b=oXJ5ge4msPP0fPEM+cwrWVhJAjNo+VhoH8mznk819KCtn0MroTQwCv9qQfyIdv+EQ
	 fbYrP99PzTzKSmksrpUJWiALuwSSsI6Zwc20pA0Dhf5TTsIHMQhzpc2h9xOdDktTtT
	 UY8QzPob1Itef1b2cJBlwMNp3dJjMcafJMHfRJk2Bn85EXwTRLzzk9tAHIOApiU7oF
	 E7dPSeL5lDMozZQGJAjHm8fJYO2RCAo8neM15h5bAzseeyLtObs2ycno5JoIKZXKmK
	 wo+5L/HRhQDrHpcdYkfStuiqWpnrgPdUBG1TS/rXT30cy2OaITODDtTMsu/SBLjLSj
	 rKcgrkkHFHNIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9256FE75453
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658383357.18527.7625380266391456800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 666415a1d0fded6af31990ab38f6802f3782a66527abaa47a65ee513b6adfd60
Date: Wed, 24 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766583833
