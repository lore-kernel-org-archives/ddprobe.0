Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F13F2848A8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781678794; cv=none; b=fhU3727rzSGNY3yIKdBmGf4nGfM8S54dwaXM+Tiv28CSXHXmjLovGKFHuEZPCJLdZVs6O775aqPolymOo/xAzy+RZMPjjIhiDetFFIN4mN90ab9eJqQxipHKKtBMWh7CtuM1HFspmb5ncpwde+8W/AKkggekqKfmojxDt7omJRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781678794; c=relaxed/simple;
	bh=trjECPQEvWqxhNyK2v2FCNooq99+FLh3kCpm+x/hvKk=;
	h=To:Subject:From:Message-Id:Date; b=kXLWa5CU03JVTl3b/9l9sUn8RlCPQkwSMdzQnezEKtcb58V3JNuFwDqnG3dshzgIQxYn9nPJJdGVqEQ7M8JRt0UDUHhm26BzUCMv3zoA7oCmJ+dIAAqGVQGXJ28d8nTtRoqkGiA0Kd103/OIV3bfi7dFQU0L3wnNRBnPva52bvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNFNfBcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNFNfBcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCE7C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781678793;
	bh=trjECPQEvWqxhNyK2v2FCNooq99+FLh3kCpm+x/hvKk=;
	h=To:Subject:From:Date:From;
	b=qNFNfBcGXpmcpBblBBsJHPG4PsNGWsQjdc7gjinOQ8YUfG2s6S4WvIkIj8qwWLi3K
	 Tm07ip2tKF6k1zSoG5pDFJQkRKEtGzvWodjFaIG1z+asDgweZ+hTJfdSQj5wX1WhwJ
	 34UEC36LR1WhGppa5G5wO2SL+xhiRg/j5f98A+9Hi/wBCNXfnhXLmGQKukToURv2bv
	 3w34SX0J3Z6yfSHNfifCINOXLg5YmtvNB5eCmaUE5vym9Trm13pd9F90z3kF0kdKL1
	 Mstzt94hi6DRJb2AljsrQL9B7bf/pjLMEJdjKip5t5D6BfT+stFE/LLn58v0buxeea
	 +3ZFDo2eaePLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84F6CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167879374.27761.12477708923508178499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a659f68103b3eb4a1a3d96b20eb23a704d6ad9d82de2e39f52fb8bc7442c30
Date: Wed, 17 Jun 2026 06:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781678793
