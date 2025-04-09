Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6924D21B180
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744230595; cv=none; b=clIp5/eqUzGSRAMl4lnw3dGtngCpcCPTDfmT4hYlF9c5y2K39sjxAfyKZElePLwGFXrC2TcgtD+kQ+Ga4ycsbPrpaO2JOVgXg9lC2iso/Ps3u3iHQOJ+wlGyxasacJAuBP0/OfudosI+BJIBeODXxydkikrZWi3lOaK8GDMTUWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744230595; c=relaxed/simple;
	bh=T6OXlyk5BxHCwgvyRly10BXyIJSrmKinj44QryUL0Is=;
	h=To:Subject:From:Message-Id:Date; b=lGP3D6Td5F7mkHI9rlAw6/ku4rNonXK54HlG7GQHdOrvs6eWVlCKIExywSP68BBh57jlcS2oJ/HTWqJFtB0zlG3NVz1g92rUOKeSl64eCBL4B6DWogZpJBCc54sU6L4FoGK/YglHm+WjLru6IO7ZLv/QWZ+ljyGqVl99y8fH6wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gY7vcCFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gY7vcCFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD68AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744230593;
	bh=T6OXlyk5BxHCwgvyRly10BXyIJSrmKinj44QryUL0Is=;
	h=To:Subject:From:Date:From;
	b=gY7vcCFcNEAKYfaT2BV5prPucfCUJGPK9UOdExbtp1ntIUo8lCasuJ5MEkxGk0YDa
	 hlmBMBHTRezXXNLw71lvobsuvLpwrRC6vNjPusrTZFFGrcR/CXXa+P4neooW+xtXxy
	 95G3PVhVXvT7iWYleR/1El4upM2fRnhZNkHQg84uXMVnHA2MmzgogK7Pf9gMZWYuPg
	 ONRGpb6srJd5cPGc9ouq7CXt+69DcLiwKdBzKG1BdBaLHQyjuRCaKazCKWT1qNMNix
	 w2teQlyN7AZ+HE2M2dFD1EaATUFs4k+2sToaiOf1agBTThXtKTeE4NAzIUKDaY/wta
	 ByDCWu3QuOG9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0039C369A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423059375.30621.17171237867784937952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d718d2798df895ed7f2ddabd3472deace3a2defb67a5b24852e3e6b96470a562
Date: Wed, 09 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744230593
