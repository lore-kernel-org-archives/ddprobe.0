Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C8D18FDBE
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748947794; cv=none; b=g9Qw0OCoy7OrpkBeYVJH+ZfYtW07CuvK8II4JN9vv4MgLSCmpI3MITxVgmE7+HaeDgUfuW6QOfNkh1GiAm5wS1R0hkvDqPk92e10cvSS1PfO6PzI/CYMYO5mMMvLi1LmEwwZP0cMmSMIBviQBBJZnXPDX2kXjU9mvdsVQgOqFYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748947794; c=relaxed/simple;
	bh=DbEK56dJTThk+CnmN1fuJSTVL22EgMNUePU+caS5jVI=;
	h=To:Subject:From:Message-Id:Date; b=arTxJYy4aw+KqHegYHqg+uHghy0EhnrJdEAZoKBAWy/jdEV4nI58F4OxY4Oi3fXO1s/d3COD808PuX08qdOfRt61QWWYxOCFTAdCahAMdefxTSLcvNkDpPvJRvqwjCy3pyRFyy1fkdYCrTyoN7nx3MpC8nU70yV3dtHLbh30vRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZroqhIQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZroqhIQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E19C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748947793;
	bh=DbEK56dJTThk+CnmN1fuJSTVL22EgMNUePU+caS5jVI=;
	h=To:Subject:From:Date:From;
	b=ZroqhIQlL4ZA0gDTInTzvivHgLXQv8HHv4ZQSxPv1VhIaT9ImTFwvMyeTbiD1VEWl
	 w5fp7fctlIq2bwcmRCfKn9VvuzZgG8E7p3DNel+uU/KzHaBmeCvn0thr/9KJUApy6L
	 OupICnzqPRCP/WGfagnR3rdX2tFt3+W/KjI6LiDYxBbhpf8XPIbVeY6laoUZhHX4pB
	 WP+lVywuh3UHsm2fslOkTvX5LCnaX32xzONjJvAPj6CNyeUH/UBtBD9LsBgarNbev9
	 l1Ac+aCAESlw17Tv1M0YX1Yccwcb8KZ46JDLKyqoV01LCGa7rl5f4zmeTbiknpaKL7
	 TtPkN/hWpjOOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE42C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894779357.7438.18321512184037340514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 015845aa4167e7733f59c5a5b1fa44fccdc6fbb4b78da35e85388171069d0587
Date: Tue, 03 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748947793
