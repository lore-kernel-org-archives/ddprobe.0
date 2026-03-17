Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF15313E15
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773761694; cv=none; b=TBdwH8KTeDmkVYTNMuChUeDfO3udJApccG1cKCZurWJHsFsA+fOanoibEqetns19gSNdInZ8pNAX94P9erijpAmePCvNfWZP5vFQqOwzD0eKb1QoUYc7TL4iT5/aMNME8LsoT2HbkasKRIi/bN2f4Er1kcndaL6AIjvh/rve59U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773761694; c=relaxed/simple;
	bh=mR0mcUyMTrJgPfBam98cSTD9OVEpiKFgLPxr239fB4M=;
	h=To:Subject:From:Message-Id:Date; b=eGYDMhBtVk96mv632vPTQ1Y4MtJYFuBh4JWbPa52A2wyMqKV/MSl7DtBuYHXupZvvEyOan1K9pMqdD33p/CXCukvz48X9GlrlflPl9I7jjn6KDnJR3IPrHC+fMzMq8hDTqhVskmNBrK0OBEdMBWOdhs8waLN+GZqjtIBsH5y/VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9V11pBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9V11pBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCE6C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773761693;
	bh=mR0mcUyMTrJgPfBam98cSTD9OVEpiKFgLPxr239fB4M=;
	h=To:Subject:From:Date:From;
	b=e9V11pBzLC4cZAmwTAV3VRd7CyKJ2R64phLzp85U2fqSKa1bx55fkBCX5s5AlB7zf
	 uvc6AXvJwvsPYZ0HjQnnVNUBlvKOme+L7uG0IsXlXJOb7WscOeMBO3lDqs8+JHfIg3
	 2BOFpBRZYHfnyhYzdOEzlrug19NrIKBPigrDNWk4ThVKPfdY7uxbfJMBYgpmgAyr5G
	 rdV6Mx/1sGcafLnvab9jy5imUoixAfbYOj+7FlRwW36WtFNjomZIUCmofqGP6Qf+wC
	 rgP69kDKpnReWpZ5004G/s0V3Tc0LrGEty1qxOVdWGAKDHKOkcs0PgBo9Lrj1G+VnI
	 jr69+zvRh3X3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF12FED9E4
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376169357.8327.10359367027727489087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518774f225745f9ca272dc0ea6da53a33b31502864ec4f1402e28252ac2cd61f
Date: Tue, 17 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773761693
