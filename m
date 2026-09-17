Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603624F93DF
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789666834; cv=none; b=i2bj3qHZ7DeVHA3xIlpdKy5SK4WY8dTEKkyiFcpGdOjqceVRDeoaImyAqDyO2xbcRswd884NwiNUEv0DTbM6KoVW5nELwZ2h8s8ohAhPnzgY4Wgv4DIRoqbusqfd1Aya04QQBhc8GeQmMCxYBQaEqNG8X0iPfQsS+H/6uMAkQaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789666834; c=relaxed/simple;
	bh=wW4JqK1OemTb9/ZZRz1KHCPFdMRxFpU/nyvRpjIxkhQ=;
	h=To:Subject:From:Message-Id:Date; b=UCC+wjJtte3VZPt3Ou5DrsgjKrdE8ogi+1NUyGPoyI3IgyQLcdOmhsxTuR0r3kEBuov8lV4pbCUqMnOv0h0aTnikAjAyr8epc3r/r7Y5nuw0pJEmXb6skEImdB4q3pSVPKo9W2CUbfGTWvNkDOz738l0U2quhH1wR6q7GedY3cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6DM1/qu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6DM1/qu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E1FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789666833;
	bh=wW4JqK1OemTb9/ZZRz1KHCPFdMRxFpU/nyvRpjIxkhQ=;
	h=To:Subject:From:Date:From;
	b=I6DM1/qu9gXwtv8Demhqj2h+TepWk1fAFQIreyfDfOg2AGeJQ/nuLFdnukSgD7kxf
	 66nDnN5gzIWPAxnvvQLr7NmrJN1SF8k1Q22rgSizs1Kmmgl5KuZgZkxlBRlwsdHBRj
	 khJ1oPlWGetr9+5TOvb/83Jc4OgNi9vxR+DzvfNdUYgIRIM/yl2L2Q+rDCqRa/ySAq
	 P96qOY9/X0CPqe0e+2w4RF5atVlfqnf0KKWnzU47TDS2V4UjIudwkNy4xv+txbpdX3
	 lNwNJHavcPnjOk3aEt/8TqghsUDsq9dbQS49/0QL/7C4wrtBLGuvaJl7vQy53hMqq4
	 c9Wjjp/Ekvxgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1125C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966683371.13577.1798441422680414956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1dd6fa05568004d92257c5462398e29b84a01fb535705e52d0acfee2a0cbee9
Date: Thu, 17 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789666833
