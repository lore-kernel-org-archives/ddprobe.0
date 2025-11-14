Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC812D2491
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763096394; cv=none; b=JMD+9kRyglctlIttOMvWcoB6K/QETtKJ/lsrOqr5r1cvyTiA3k2xXu1/8j7z5o52DiiAdI8UhlW9usaoyXhnbqqKiljPg6UCr/vVSlrUWY4e3e0ArYOFpbXn6a/trwtmjqSE3i8E77mPcmUQSPWOwBR7/p24freJe+ycjx9u2WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763096394; c=relaxed/simple;
	bh=Ynzqz7JG5IWvupnNEymteKdeKzYqnOa9OZg0tHhnMCg=;
	h=To:Subject:From:Message-Id:Date; b=UDevt9hcn/ynHckvz5VGAVq4DwwGYBH2H2ZdnqJz87v8zWRA47l4nCCUbrnGLaVejYWEFGXtNpeHzMf98TxH8uNao43ccLJa3FD/sfX68iwtwN5dmoDBp0a9wmVtmnHI3D0mrix1b2MJUTgdq0sD+s2QnntAa7RF1T+SJu8MCb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQQws+/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQQws+/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE74C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763096393;
	bh=Ynzqz7JG5IWvupnNEymteKdeKzYqnOa9OZg0tHhnMCg=;
	h=To:Subject:From:Date:From;
	b=lQQws+/39joYddCJMF9p13MFqYhI2RPLGELhz5QioSBXQbuUrR/YtScrVYxLIWYXU
	 Z7MVYlwDsMZwZIZUzyOGm05ry+gITUEVrM/lMbYTWwoCZzLgQo7yjHXYbhcWb/mAjE
	 z0vyVxBtIihTXLK2vPNpaVdr6RKEyrda2r7yypeQek1Xu1eGSP9LFEsCyczv2xp9SM
	 slB7ge5KsX+daVRtgontTLeufkIi7APsR8p5g3A5Po2gXoZSppZma2lFKp0vT9+iu2
	 OL2A8b1TlEMdphQF8Fb58zrkxAjWw0xg/CXaVG5pxeTLLbXirfKs3pTFL6K4Z+nUrs
	 WWe0Kz3JX/aJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90289CD4F49
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309639358.20418.11308698969387786797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26e9de0441bb689c07acf015e4fbf7eed7c0f75ef89d21258e497a485fc40f8
Date: Fri, 14 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763096393
