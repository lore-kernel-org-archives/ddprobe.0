Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481A538DD6
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724994354; cv=none; b=g0gLp7dakik8sEZX71W0PlwfvdM7X2SXDswHiquSyRP8HXUUsKT3DORwgyQaJm21bXQUE8KPRlsrhjLW8I7TZBHSP3Qtofr7/cqMby1wubJdvdHVVgLbYS1k01L9SB3bJlbUUycZ9anOzFk6Qcn/vIfQ3pwkrBOrOqQQEDOMmUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724994354; c=relaxed/simple;
	bh=npOlLdmxggJ+4UqEj7opG0sX0tHbBmiyQrtSvAU9jNo=;
	h=To:Subject:From:Message-Id:Date; b=JWErLZ//74GWR8S4VWK/Z47Gy0jvCoOvizkzENJp9vin2bAE4X3WyAPQSnia76PJluF4ABXpJBGlRdxgVSrGE8xIUwLvTYOJ+qm7sLX0J06Jvdytw5HDwcrby+qhA9soQ/WHLYvl1xDkkNjphIkozENOU9KmmyCVyR8K1woGQVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvoInAeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvoInAeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99BEC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724994353;
	bh=npOlLdmxggJ+4UqEj7opG0sX0tHbBmiyQrtSvAU9jNo=;
	h=To:Subject:From:Date:From;
	b=dvoInAeAukDtemkINt/5LDegGCiJ9/tsR4t8ULgYZsMWozOjGk7I7qVU111nEnqa9
	 QixC2861UK+UkNj911pg3L5Zb5x950q7voTReoABcpNS+TCyLZnEWAkIO5Sucs3KA+
	 3GEgpKH4mo8RNXMu549a26kecGCdJk5blphpqGU+WYUGVH0Lv8uTdF3XaRyegIbuQl
	 5rZD5cmFZm5twIECIEVZ3clBla9ezpnO4MCiLMGhhr3HvVMBs0LOokxPf66rY2ZACS
	 2jBNK67cDQSUL4+Q1CmY8fJ12kjVC3nwNTlhxUNJVMrHv+69y7DKCA+qjkTS+Mj4Gu
	 491oyBTJWV3RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA4FCA0EDF
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172499435363.20163.3967911772295014227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdaa14084ddace1b59839183f92edee9ab082998907fef81fa6618b9024143b7
Date: Fri, 30 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724994353
