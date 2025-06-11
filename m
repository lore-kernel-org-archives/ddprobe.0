Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EDB17E
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749616794; cv=none; b=hHZAyiLoMEXYZ9FoMt/bEn45/ewkZjXOBDjyZe2ky6fL6gAnVAWlUid6bhA6AsfMynCpvDZVZbUv6Ef0AzRj+wD2cKY7eo6zvYZbNMV2gL6sGy8h2H1sipd0lhfWWJ7dUR9teALm1d0YifLoJIug3fBpnoCuN6oRb39/BCkLoNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749616794; c=relaxed/simple;
	bh=SgrE29oeX0zz/olSbbOYJJcyVWUOZLfY/TvE/vSxXeY=;
	h=To:Subject:From:Message-Id:Date; b=M8cV13sBv+MIxnPrx/pbNhfLaJpGmhrzq0Hygaxja63xmPe4QJ12H4y1iFZsulavmMMmsWeNnA9fooX8q/D7YLkhe75rSYOA+q5PiuOE/g/md2rJd8+0HBTBeb8aKD7wfx7iAhYvooamkl331lqBNlGUJIch3xVDqXVP3NH7AfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wt8GPw2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wt8GPw2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E8CC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749616793;
	bh=SgrE29oeX0zz/olSbbOYJJcyVWUOZLfY/TvE/vSxXeY=;
	h=To:Subject:From:Date:From;
	b=Wt8GPw2HmCB2eh7fBptSj43E7KeDak8fsI/omi6F6GRWEMMgMuGDTsffCQBpbUqAq
	 ThCmK8khmi3A8VKUzmgltGKtOAYDTpRi8ET893SSvBO1nlmAvm0772FauY4m+XwB5E
	 /zIrFQUgYIskNIaaxP2MKhrAolfPG1Wwtf1BmwLbAno7Fl/MEd56aAr8LHAVvnLqwb
	 JaIRzt5nGkwcDFs0SWEnUHhb4XgInMHNk3cvjnIy1IfFtK59LsdeW5Jtzet0zi+etl
	 H6oNO8QWNkloTBks4FdBpFtlaMSUAYhRC5uX4THj+dYbklzWpmLZn4sAfAMh4OYISq
	 T1RkiW341NQ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92333C61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961679359.736.11347755531779465801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd8e37614964ecb6bc88b5c52249dfc88d2fa381158e799c51727d4ca5593ca
Date: Wed, 11 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749616793
