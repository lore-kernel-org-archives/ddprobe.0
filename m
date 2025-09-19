Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BD7221287
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758261593; cv=none; b=a5HO7dzE8sqS1Yc63ZPtAFNHkzP3ed7LuK48yvo6KTnybK9x9BfUG9V4dDB+cQjxbGAfn33VRiU9D7NKV3NNiJa8wDykURoR9IVCALA7tgqmC84Ijp8HfU3lFxIJ9tGv92yC/6VGS8SM217xguggps8FhOZFwMWq0Tw25h72Xoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758261593; c=relaxed/simple;
	bh=T1piWYrEErlbYcW5aGq41pkFcTF+uJhD+WeAJVoegD0=;
	h=To:Subject:From:Message-Id:Date; b=koVyT+FzoQlLvJs3udKqb8bQ0yxPEbYN4yMxKZ9cxrqYeYWfH2uG1SRtLCoGdYN3a0AQ9DVbqQp1H9nvm/WAJ5Vl/x9/sY7swI61igvTi7UIlCEot8ea9G2J0FuJu51FYff7d8Kg2+bvbYRUvrMIsiTVHoK8+9/XCvaCxfSiyCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msV73fRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msV73fRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C54C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758261593;
	bh=T1piWYrEErlbYcW5aGq41pkFcTF+uJhD+WeAJVoegD0=;
	h=To:Subject:From:Date:From;
	b=msV73fRkFISzG7Nn8QeALkBS4xipJ/gYtr6gVdrhp3dzhi44My95ZmJEMwrQJTSd3
	 OvODZsrQnSRVDJrc6S/+m3tWqJBrOro7nH1Wu9hewTPA1RLpd5uIMvwmhguOPdoSdQ
	 HBZ0i0l5WT0BPHH822gIecQA5vT/FJHkFTRe08hgHCowA0s7meJIQDn7BVHO0gAf25
	 prlMMYL2jZmKeDaFruINx9WpWZMJwbVljfrj7CIU55ZKGggKeYn7Br1ADoyxsuA7NR
	 qPG7fKeYXU7A+5LrFFpqryMJa68ls0+sKNKu1xzruZHzvrWo3VtrDt5ZDGPcPpWbLj
	 XE/iWXbE2IMjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B199CAC5A5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826159362.26538.11920576688760781027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9759bceb960c7b8548775181f0607615947d8ba1b3b8d5a4da34a37ada206ba9
Date: Fri, 19 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758261593
