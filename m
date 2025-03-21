Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F59B22DF90
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742577594; cv=none; b=iHa+cWV3cPHYiIruYADnR2XMrdDZSgG8vNZFDen5K1+CIfAi75KsHIFS9DHM5uL1Y2gqa1BLX26L5AeyIIgZ6ZxNyVeXY0I3uWVhXyFivjj3b4n7w8smvnFYeQy9ozJCo0taxc7y5O8E8gXNrPEM7ivAJyYrUD3hNAM9A+ZYwyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742577594; c=relaxed/simple;
	bh=tX28IKb9BwZM/xV1k8wnqXQMt/ZYVd1VpeYRXF0I/jc=;
	h=To:Subject:From:Message-Id:Date; b=BSl002LAcV9lk04H/uSTxf+gsuDxATdTsc0CT6Ym25qWuEJqC+xQTzjNimVqURUIbietYsnVaC/kSGbpr4V8KR5uppk0b3MzcBumTWFGB6oc8we1jQOwF4YAZdcu3iCTVgfr4n+QEtxHXEJZiHMuvfgukrUXuKdi5Vjj6iFva88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OE07KPPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OE07KPPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D68C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742577593;
	bh=tX28IKb9BwZM/xV1k8wnqXQMt/ZYVd1VpeYRXF0I/jc=;
	h=To:Subject:From:Date:From;
	b=OE07KPPCY4pk9r0HCOTndlCl1x0WENiuuUEjXrhJjJxgoSnkHs+IVUfFuRuGd4SII
	 90PgoPVH09rFcUfWJU2hSVSmcLDJIMsfehynulyzyuwSVs5Rsp0ns+n8Frq7JNkolL
	 yR3p6HYpzQ8xnNhFZE1Vtm+hSKAZn33JwkSKjeGJ237pLCQ5016IKbkCLUr3DxuBc7
	 yVijHCG9hPjKmtchuOV/zYxSLcZgJhAr81hgF1UaKfkq2WfmOJDRykKeJoa5gH+gfB
	 /ARGRawer5JXApkEEQezA3OI6VgxxQsaxpgdfqvSE4vd65nUJufBfTh+V4v/89t2iV
	 YYIKAFKtHbu+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC74C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257759367.11738.1232558469739327597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c18f3c7093c59768f78b1f3835ccdb4f2c369756d1cbc9fb60c55910b4fb038
Date: Fri, 21 Mar 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742577593
