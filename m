Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D6033C9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717946243; cv=none; b=P/l57/aRgTVFk6OxVkthYsQT27Pf+m9u0atnDwGUL/4OEDXaboAn9beOblhJ/Y+aW19getc4cykvDP9F668ozQfLV8EGuf5WK/xH4WBOwR4cJN1Pxmvn3Mm6H1LIlg/v3ceo0VzTQ5ZVg8o6Yq0aYDJMklR/NQmNJKqzqBxyipU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717946243; c=relaxed/simple;
	bh=Dtdd51oPxFvJoXPAPHNAWdeU84OE/bKSjLN4lolM5GY=;
	h=To:Subject:From:Message-Id:Date; b=eoEI3X+kolaaLTCbNDw9pi+sSfPsKxq50dnsMeIFD30iAU77YZwvcb61UjubrIAfaNHpaAyM8xt44qsGG1kryV5MRCP+UlAeXZJLMHcKcM0ETv7T7Ne4G1degOLOMrOKXsSzKY6jPxT8KkhIO33Op2oFMl/eX3ZuczxogHyS20s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTOJmfqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTOJmfqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2BF1C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717946243;
	bh=Dtdd51oPxFvJoXPAPHNAWdeU84OE/bKSjLN4lolM5GY=;
	h=To:Subject:From:Date:From;
	b=aTOJmfqOOdkfTfWdGk4+uy1qSGRVSnqnveZYe8S98MEVtoaEz6Ffq5498iN+5hNwq
	 c2qgGOIyA6y90aIKtkPG24DeEWawBvpwdEaItqGWJw7C10lZlb4TTD2RoBWIe0dlqL
	 xRA6A0Tssrps7sfKmYBXiskIqzDNjH7TcuY/XY+a9uNkpmbfVNI7cKSwhvpaoqQRay
	 Dw6mPe4Tb7tIGIJB3yDCM1QCgGFjldg27YtUAUgKWHJxH3a9/jzKDSmlVHGMWUdecy
	 ZzYGPDR2kHjkGcr3wADlCg2oW5byjiHvwIFwCRHjmgGKAOzA1JzPOn5WQkcmn5oaWM
	 n/wVyD9u3V+8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB5A9C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171794624286.4422.103858013141898853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f4fc553170c6b66a5e3f69ac8bedb409b8c510e1ad5c4eb502848a95b1543c
Date: Sun, 09 Jun 2024 15:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717946242
