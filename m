Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449091F2C56
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746434995; cv=none; b=aPl80xd1HeBISO3Z1Vu9rGtpvJgI7LqwIKLjWVpNXyHFF+Uo/AZPRCmPAjMMOyQvaHimmMLLLaZeGL8hqkePcv8t8Rsz5I0j9DRJQIssdtPsqBmlQpYfRMjdOxzC5d1wClQxReCyWZtjL7CwlqeKre+fu2Jdo4Pu1Wbw6+D4Ebk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746434995; c=relaxed/simple;
	bh=GxnMzGN4fq/WlPMuLk7bPnYvwqaYPCYNLiNZ7/ng54o=;
	h=To:Subject:From:Message-Id:Date; b=HVp6Wxqy2vS/HUtG2yUEwHHVF2B2224HS798ti464jhrPVF0o7AUqqsbekVat7ofU4p4sSjcfOkQoGLjB17gyKGyrZeVDAkmBS7nUHsdieAqW/3asJ4MTxRF40LpqXA4JqAicFJagMGRwpeABYqKjZmUVjrwCusr9GeTkMfqCw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzdALfKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzdALfKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8335C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746434993;
	bh=GxnMzGN4fq/WlPMuLk7bPnYvwqaYPCYNLiNZ7/ng54o=;
	h=To:Subject:From:Date:From;
	b=CzdALfKTeOKmX3HLWkE2LQpryPvm/i1p4WPx0JG44LzbUDsu1zXR2nh2QYaRrGN9S
	 Fa874H7aCUyfeSQw7NXZmOtvMlmd38nbg351rOSoCIczX0TmQik/gnJ1XpAqh9weX8
	 YpJmSeb5b3xOLp+fuRvPvUm1jicwh47hLDImqAscycd580IG7IVxKUA9SQc/nXfp8m
	 NoeOs3Z/bBi7skA3BJDmTjde9OJKg1l7PtorXbtaslBg1D86X6LD3QYdHtJsUDo84+
	 X/syiTmjogYbgKTxm/fcSuBEMdmbRjaZVAi2zg86o8Da2QWu5wpf9pOyzXxzCAXQ3L
	 z5awU3rq9jG6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F334C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643499357.15485.9947783523992125910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210de98fa800aa2ad64772c66c1f3eddd7eced69eab7fd7c97b42ccbc066b7ed
Date: Mon, 05 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746434993
