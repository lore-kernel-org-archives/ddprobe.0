Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D41E14EC73
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724598354; cv=none; b=o/8gLQv0OqIgK0udfDJ/P5SdXeIGjphmpIxAOVZAiil3vTdb4LGwkdtKNHfogym7JKt+Zs69WLh8iTT3/E5KkKIz+CKsLGfXygo8N3W2uk95+Vb8PFGJsFAcxPIVfH1ukh/uRdyts8VuxeXTsV/qYRzeSc9MonaI6kAZr5+J0YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724598354; c=relaxed/simple;
	bh=TNgffWL7CjAa1DqbNLqd4bgTBk0RHqp8PTjlen7TwNg=;
	h=To:Subject:From:Message-Id:Date; b=TiYd918FZ2B7tuFOrdCbYLanX9t7KFDb0sm8vzhl8rkZGWs/VheaO8eXbMQCEUSO8YDr+BLnRSmBrWAWukwUiARu5J+VSo2YdLKR8YXKXXELTbVbngnaHH8lOx0MYAAY+hroikbANy5GO7HNPMBiPoi/eelI5iZjKuEjXxkQ0TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOB3z07+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOB3z07+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA820C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724598353;
	bh=TNgffWL7CjAa1DqbNLqd4bgTBk0RHqp8PTjlen7TwNg=;
	h=To:Subject:From:Date:From;
	b=tOB3z07+EJnek0CYJOKOak2A3OvwuRgJ0rRh14SEmOFXe5o7oYXxCtITmQq0KC5gy
	 66WyBN8roEeQTnNZvJ/5M7o44jrP+Nlcevj2TYpesiapuUOkb5brnXwqvAwDczjbA9
	 MznJo8Hbsa0NSelSNn1PuKuIxY3n/PL4J/61nRQ9Sxvk7gANw0Bt+4H23ehgrf4pDC
	 l1q+X3WuptsU8r2+EBP6DHZCrdbzsbwRZ5c/4ENckV/jQMbVrUUPs+Cjtiow9z+9Dj
	 WcFo5ilQZ8Z7rLh1gCiRO9ldlm8/jlmvm0rfaNHN+C8YH8NyL6Fwl3nugHHPG+iyTY
	 hl2o2Ru9ehCXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951E1C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172459835360.31785.6115264102359617757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f45ec478b3540d402e5b3f65a557eab84c774f8c9f8645bee132871049e78a4
Date: Sun, 25 Aug 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724598353
