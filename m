Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60246328B77
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781144194; cv=none; b=Araokq3bGKpBHAJEmz0QyRWtK1D5Mq1HxTf5nCdK++F9JYoW9PpGDdQA7X9HPkK9G7C7PuYlPw1CfP92jobpIkQRLpKpaNDDcfWSOJcVcJdsyFBtXkHXjvRVRlddDl9OYTjUQWF5V4oR/6HSwdWwB4A9w+El1c1YEdxn356by6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781144194; c=relaxed/simple;
	bh=FILkQO4zB5zUJ1akk24syO9e/3jQCoHHj7BY5DJrMdo=;
	h=To:Subject:From:Message-Id:Date; b=IKt5pWuRLHvBd4iY3Q/aXRdc9g6DGUm8ULXWd5yEKX36ANua+h0YqYmyZPfaZcXvG1SwA2u8KIw6NxcTQydo8iWFJAwnag6xnAneLIiBxaUsJKEfw8YhQP+iGn2Azxq4+fHGF+eq1nGSOMETuw1Ou25+RNil67SYl8ffaZ4RCI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fbtt0JDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fbtt0JDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA4EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781144193;
	bh=FILkQO4zB5zUJ1akk24syO9e/3jQCoHHj7BY5DJrMdo=;
	h=To:Subject:From:Date:From;
	b=Fbtt0JDiSk1j3U8iW/k6Gtk+AKxGele7z4mg0RxgiAafEi40L9QPtsBUxANOavmji
	 21DyapbhgMm188yMKz02j1nTBvnKwQc1uwTao7pNa/A10cPH+FI1/iXHruBYf3AJtv
	 TEj9efcdA9LAayqfFUv+wi1YODg/T4yYKRy1iWqid1SXAH6E2M18e0ZHb1xVckDRn1
	 vCIYbOtIrJ6svjDQZxJTCLcEj7yTAOipz/diRmijbqv02z0kB1DhmkKzGDCskTPPzj
	 qzOA1+gUIb8/AJ50d0uoNcXYXfYVxWoib6wAL0fBxkbCTe+KN+8poZxC1bmRuvI5Sp
	 bihdo5tsbYZ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9398CD98C5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114419368.9575.4946913509328411840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a169fe10b07ca2839da553d093a692d983ede0977a1a4a2152cd4b95766ef128
Date: Thu, 11 Jun 2026 02:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781144193
