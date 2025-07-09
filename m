Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F862248BE
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752094194; cv=none; b=KqlVc81vSn99LIqIMywnliV3dwGt2oxTWJLNM7nQOvoqhD5gw0MtGI5QfL7acBxL2wQooz4ulWpt+N4r1bY0hco6WdgFOAmCj9MP5P46PEHL6BSCEgvdujiR7ihp1aiI31p1Jdus+wKiRuLom9d2I/hGwUcCWfXzCJ0RCvOo6AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752094194; c=relaxed/simple;
	bh=vpUgtOyinDifjqJnJlRQkofnnZhdtSiowly1MtLT4nc=;
	h=To:Subject:From:Message-Id:Date; b=SY5XJsKbqfTV6f+gpE0vVjmcqFW+sNncLYuU3lm3A/tvORPTGXilQFp+MgyW4tkwI6wkEXeVr6+UMN57mYwmLlRiX3zDviROaI23RDUfs5D9/1yYiLQ74pomSW4lgmdT6CW8tu7ezMv/KPLFhxmmB4/C23NNI2CYLLCgEsQ/208=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxS1D6L6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxS1D6L6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17DBC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752094193;
	bh=vpUgtOyinDifjqJnJlRQkofnnZhdtSiowly1MtLT4nc=;
	h=To:Subject:From:Date:From;
	b=qxS1D6L6wKXP9lgjAQKATY/xXnE0BdP7O4BV4hcTl5tzzMHnnndhfHcECvaF9g0Sq
	 Cfi7bi4S2ntsalY4mLlsdnfRTnQ6z1SbD54P66USLFwxTZfsw9hfyBFQSbOurK5LlW
	 vWUKMdzA/z4WqpfrnZDDYeNc8S3rjydVCABr1BTPBe+GihzZeQwDyK72yVwCuww85K
	 WQvDuc8IsQk8OC901KrQjqIgUtgKDaDbsji+cYcDW7ZhW2Sqcog2/mEPYvgOc/DQQ6
	 tt02fo5y+LxNFCnJB9H4stLfV6QCs/GYqF5GtwC8zA0ExBvIIx3+ati/hsqjaMustc
	 1YUY7PQrm+25A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F379C83F14
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209419357.4603.427257121753000397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dabc336c452094ac2c9d65c0a0e85ad88d4a629b8b4721691edba3cd4707e084
Date: Wed, 09 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752094193
