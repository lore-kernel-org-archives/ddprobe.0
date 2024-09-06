Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105361482E8
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725620754; cv=none; b=Ask3m2BFqimmG4sp5tTsSBjwUx3im5bGoaSAnE6kgFyuigIa1s4nS3kxD4VpRJg5SLjHqPV41I/P5UmvJx4d/U5/ENtspYP1IDV5dv4HLvUuOt3582anhp3+xIcijd+vELcMCqCvk+mZmYxEhe6drc6bhDgylDAgdJVqEkWyyuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725620754; c=relaxed/simple;
	bh=y7qfLt41MeV9UixEnkOGlvLd8/nbmJYCZI+S+zEwcvQ=;
	h=To:Subject:From:Message-Id:Date; b=ahYGKAV95KkHkoB4F4AXcehb0X4+8YxsBWd1McsOss2T4oZD0nOOxAxtwrIsuwjajuhquishb+yFGAbtbH3F+criaEC/xY6heSDH3BthtqXcpqLcNOnIKnIWRd74Hg7oXWRbCWYsry3Tsjs0lSuAarOFNUmLzC9SVM1CKrD85XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptAsg3YU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptAsg3YU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA12BC4CEC9
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725620753;
	bh=y7qfLt41MeV9UixEnkOGlvLd8/nbmJYCZI+S+zEwcvQ=;
	h=To:Subject:From:Date:From;
	b=ptAsg3YUu7KUZDBBp02m7CoUUtrY8naXoC9q92RtKPdJURzfJUMAgSWnK2EtX35sT
	 lg66aUHgi6Yeupf4Yc4YcoDOdQw0Ah3i5t2QHTVIgaaNvAfZHx2TnocSV9009S4AOp
	 74qYyeA2UFwoahap7IgjbP9Exeks8LbifyswWuEWN2xcIygJ5Y15XwYU24vB2AbFaJ
	 /nH8dHEjm56PEDBlhFd3+75c2/2fLD7JSYrYdv96rNDWqKGpG+is+iMGnstOBiBYae
	 xqceB13hOsO4pLp97AZfbOqQVxf3o+j/CtntB92J0XohjAV3ur5CZNssHFCUbcLvlN
	 nXP89HVGiLPHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BBECE7B00
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172562075359.16344.7807348743777644470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe416ad73d97611888acbb02444c31e980c3657642054a0d269f2494d8980f5b
Date: Fri, 06 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725620753
