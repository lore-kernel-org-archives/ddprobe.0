Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4E579D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748768394; cv=none; b=GSrMRc3thpOG/B0vB25Iuy6mTKJd668vBQgTpMvtdQMRr/QYmPAnoWQyqO/pESz1+bLErQdyjEzYr9iI70Yzzl5LtViUKYgZExgY4WISYT9Fq8JLj2cd9WuG2eR3f8pzgzO7ZxqR5SZtfQSk6jKCBK0UszE+SeJUCz61K5eEijU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748768394; c=relaxed/simple;
	bh=j6/+q2wuBYkrJe7I9aXWLzs/se+08jbPFCgAiCnFuxw=;
	h=To:Subject:From:Message-Id:Date; b=JU9Vq8SeJMw1AaloXGdmHIspPAjH50iYpG3yZP9bx85TPNUSD2q5IHC3x1gMUtElu5YlnhQkux7GS16BJXSqYjkU0iY9PURt4wHd2V2ciqgKTHV3h10LsnK1QgkBpSh8sn34T5Dw3NWUrZRbIA4zduyWhv9RmhLC/dqRWpBOQFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTzkjGvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTzkjGvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A9CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748768393;
	bh=j6/+q2wuBYkrJe7I9aXWLzs/se+08jbPFCgAiCnFuxw=;
	h=To:Subject:From:Date:From;
	b=lTzkjGvOBp3nfp11ZoqxKIIeYFDaflJb/Aff4fGibrosYAOhVg+KcQDSOvGNia9eZ
	 +ACGw4zQ1htFolMktYAmHOgYruY7u+zn41+u0YGse4o7RtEmyYKpijN3yYI6P1kOc/
	 64xvxzNelCV7PhgmyGGBSnGciqwCa4ilF+gQCy2+b17IuMxO8C6MZJRyniaM8etT5L
	 egG3VLS63iK629JPVtIk07Cz0azhdrupuNG4s7xtg/YOKNezanKjuJHmSIPjLBhn3O
	 QJVMZJzaGLAsALnO2epNY39/quiiqgiP6whEEUUB2xpRKv5OZgXqrDpa+y42IMtMnL
	 rs4BuFVYXgBQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9480CC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876839357.11402.2254271206453051162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ef1effb284698ba31ed09c5e091a9bbede50d52fdeded813675426aacbc819
Date: Sun, 01 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748768393
