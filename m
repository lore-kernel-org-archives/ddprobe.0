Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1924B306492
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757497194; cv=none; b=Au1bviLnLhMBjKZOOgEUKEav8ZEUIgkVQuCAzV939B2MCINNIxaz3UJ38riUL2rLWZIhWscpFrxdXghtOIgxPf3j//8TozuEWWoOYA4cXVZuPeM+bWvidkVbeOc+4cLryvu7oA3jrmrmLFpeZjM8jjvcgfM3+V0Tf+B5hzlBJPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757497194; c=relaxed/simple;
	bh=A8nE4joCmq9b+mnb7dKGrZTly2UJT3UJ2UDBnqVyuKc=;
	h=To:Subject:From:Message-Id:Date; b=qIBs9KXXrY+JtEIHwclvrGt5ZuG21NoyMYdEpk3dFi1GFv0400NxQzWvQ0JK1vpaTnPRd5ng0W7LabNlxOLsuhj+uykqCFrtZARF2Q+0W0NZzT5Ix+Sq7nuHokpL1wHwWyzLl38sVYDsa5/c2dMDKIWoU35xdJXw3Eb3NI0zB0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzMUMPls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzMUMPls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A6FC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757497193;
	bh=A8nE4joCmq9b+mnb7dKGrZTly2UJT3UJ2UDBnqVyuKc=;
	h=To:Subject:From:Date:From;
	b=mzMUMPlsExEdd4XM9AnS+IjVaZzg5hf27gol7koog058UXZvmyijTizCImA3brety
	 YLWLKLUq0p2p8AcqP1NiHhCm5Vms1jM4MQ/8gINXsiKU/+GNIrn5c0c/nQ06M+sKk0
	 NMIYs2Rv1RsAGPuclSPQdA0ZxEX6ABJO25aHiY1jPqHawQLAxy2r+6CCqpyeJW4Ueo
	 vGgfeJqczSmlva7UP8jGfbVb85iaxyDGGG8EL/JCpH7kJms4ZhRYDIRGYRM26JRjQ2
	 eo0p3fEcMmaL9BbpA4rJBrSXV0IXiuM7JPsYUCOGl4q7TJe/Sko8o/gNZDkKXgR75c
	 komqxEmUgp57g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9323CCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749719359.30332.14397540308946011306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e03a5667224f8866f95dde45f05f167dd6cd1838b1625f525f4e860fa78bbd3
Date: Wed, 10 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757497193
