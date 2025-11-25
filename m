Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E791C84BD
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764084174; cv=none; b=L9dfeXwYxVElELEB1SWmq1F1/eTHGoW989gJptKdGMF8Bh5bqY+cBM24ZIg3oV/zuLWwpEfgPxZtqy4epdcPFEtNdYmz4jrgQHY99eyhmI3D7/7Wo3Im6BOU3UMmo9YveO15rW+GJogu2p/UWCX0iJGzprAPDkHTOWc9YC0wl9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764084174; c=relaxed/simple;
	bh=/2XLZNoND5wYcjOYvdhCTieisWRfMg9COJ1bdgdldhg=;
	h=To:Subject:From:Message-Id:Date; b=lB8RtOCKW6Q8oJQt6LkInedLgQSddbFI7uDZpqI/YUWxWx/XLXKm34mJAaFOzZrwoI+qfRj7v1ifOXnYqn1tiBZxopPMCUrInmVcPk5ASqLJAElM0iuzHR9Wr6RSUxoAAlHFczlt/isWQKzhec31IHDS74AkZ5IYI+kJhkSqc6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYGJ6KBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYGJ6KBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D34C116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764084173;
	bh=/2XLZNoND5wYcjOYvdhCTieisWRfMg9COJ1bdgdldhg=;
	h=To:Subject:From:Date:From;
	b=GYGJ6KBI7v12Neake0+1jpSiasxU2La7vMdfM7h28RpjMDq2OGCWUdHK3VThII63u
	 txyE7Pog5gfUAuf3kZ+mv0Mre6VefazEtzX0pW1XSIlwxU4dAB99QLONPaRvWo2qCH
	 cMdevuqR2GelSl9TeGL6t/IZkKoyHB+hwfy3Owve6ikCujPUuS4edGILFYsf7Wk+AP
	 JUXBKpoSeZt87SQxEAbUWCMTlegJe7a2XxpQ8j5edo0j/8ymvybGUnGEbpaIYZBmne
	 isEIF1hAmLtnALxpwE4TVOW88mGFgbtAxZRq9VKMRQLvrKS7qSD5RvTo5N0/FBjaeC
	 vcDVBhNe8aLGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F3DD0E6F8
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408417359.15913.10181981976283638661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641252081316c407755909d81ecc96d182a02d18407d0b14d9241dda45258d4f
Date: Tue, 25 Nov 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764084173
