Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3377C1EB9F4
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736253954; cv=none; b=N53OkIhf044iYfF7mEDm6YAjqWtuP/RDY2AixROOJRttG02mbBsqfgvU0mDkwnOFPl7NNT5UCdvc9pRnoja5DLVepigAXan3OLRnUBfpaJWOy+0lZQlbY7f5OYTEFUduHtQbaaL/0zMf5KfUT/TAsDFuCIDiZI1pj8fYNG3rsSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736253954; c=relaxed/simple;
	bh=rPm+vEluTVPfg13hF3/RWRu8SFYMl1Bq5Aw+zo6KLSk=;
	h=To:Subject:From:Message-Id:Date; b=NGwGFY5jBUi7IkWsUUAuj/Fb28EveFqLE289Guqc/L5f25evnMmA42EFBdsTdrMYFfnW4boUC3Fx+folV79dG2WJ+o6sgZBJh3WUnmsbyJzLsGzw3RXG8BtLsRD7r/S7iMHi3f4Dyslp/RkPCcSUKnPfVrHCL0f3ADPuhgEdp2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbBNGdLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbBNGdLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D61C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736253953;
	bh=rPm+vEluTVPfg13hF3/RWRu8SFYMl1Bq5Aw+zo6KLSk=;
	h=To:Subject:From:Date:From;
	b=UbBNGdLPwNSkhT0DjptdfJqzERK1h6tQrvfkMAaJr1JlHkIgs2g9tiV2F7EWMn2R5
	 yDuMFYZSfojdY0iqRcb108wIhISgVra6+4o+HHhfRtrgHdjDcwueU6+7kcKLJlsMbA
	 ZUlR2xgB0NxT8TUmTGADpRwuHJx+XUnEmyNZvk0KDQ2rT/Tan8E3sIih1YqCr/3VoH
	 k/85i+hC0YRqixcLPey8/juSudDsoQxJ6GVWNNrRMf5/hSJvSGcoOyWVD4rrMqUPsT
	 d0bjLsoLjV/B8f1E9gxOagl+CUcml6Ish1n2uZliJ7XAzvako4LWEIYeqOEzrC8kbI
	 hiBw5obQvOeqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE37E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625395360.28466.10009931709464005057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172eef4b3f30f72c286b7645f42ad9f214cd48a4be2d6b08339619484b3a0143
Date: Tue, 07 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736253953
