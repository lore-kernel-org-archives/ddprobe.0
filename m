Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3381D1B21BF
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746854995; cv=none; b=tZfM3KBU7m5P/+Yvh3BqBAHwC78bNmOITkgXLG9BhRvgsFFcbuhF+EN0AFNGlSv/HD4Eu5/0Ev+THr4RqIbgT+DSpqXxl+XkUEIB2R5gbzKbiPM2We5qTHYeAek86zFnawAWSaMkVmzp5GGw2G/c+eslFL4sSvQBzPaEjo9b//E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746854995; c=relaxed/simple;
	bh=bP7oU7aMBrIRvrDIaunNkQjSX5zvoSpoN6vli9CsaAs=;
	h=To:Subject:From:Message-Id:Date; b=PLz0zPQhFtwp78Vbrxqe4lfjhdTUtpl/Q7nfCWtPuN2071z9IdFlnMvMt1lREJA3XhcQWa1WuE7GtOD+/mRuqnGTKzL0FMKLU4TggmIrVExW+gFf8oU6L7gKlebQbhFcKmOAkeaq89hm0NUzcp+ku6osQeM6kAE3YEHptdXsqi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIbLa+BD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIbLa+BD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A14C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746854993;
	bh=bP7oU7aMBrIRvrDIaunNkQjSX5zvoSpoN6vli9CsaAs=;
	h=To:Subject:From:Date:From;
	b=CIbLa+BDhtSp3T3JtYmbxbdMvOZSH1P28qFdBb7VUEfXA3g2AJrlXpfdclvKUfnn8
	 0I+RggQel9wBaVZYCRdLUW9NE4LCIIF0paZ1qEresRL8FTZAmOqMLZoMzXXbIxmQXE
	 yhqQ4Pbnj0jYxFuWQVEdE7vGmF6mL3+CA01ZLsPLt/JosEvziW/FNBug+FIkYuJsR3
	 OaqOMZfTGzo0DeIr1pgzrKLMzT0xW8a36mmtaKQPWb0R/GHxzuJ2P9FfQyhsYXrwpD
	 jDYY+b9rBAi7qzWHYkupYNxJU/gOjC7FJ3Mk2+cwvNf8K4oqz30jRzWwPQKa+IK3Nb
	 2xTnBTh7gLRoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90136C3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685499358.13088.5401414660665864104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca99f9f3af0831845c4c0b42e0d2ad0ce63356f2d5523a56649debcb25007fc
Date: Sat, 10 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746854993
