Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE1A44C66C
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790148634; cv=none; b=Eot+JJfXoodZsuntVOiucm9ds8r9iJrXfRaVmBPeekb8/rqSwAwwkw9++QWJT6ZNOuKKOyyBBum0iRcIypf/9kBoKdPTNmNYh3sReNtuWO8tQKonY01NbMVNzwiGNQCNsem6JSJHXZHU7GVwus3+M1PgkiNnTWibXuwKI3KyzBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790148634; c=relaxed/simple;
	bh=f/Fq54TbztArWEU0zDkcAXnSCp6lJasFk+j0UUtXNC0=;
	h=To:Subject:From:Message-Id:Date; b=Q46bqiw6LyDPXERx+QeoxJ5TwyN2AAlAhdADNXEvv9A2LhSmGldSHHgBkqCyrgwFHy2xH8zypITy7ZLBZgkiLuqmlBygK2L2lMz1BikYei2zNada4SNc/zBvDumMJIxYAd2Ch16ISEYfYJjOGahO+XfGMXAf0ClfJ48H7M9DQ30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWTh9Asq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWTh9Asq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF001C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790148633;
	bh=f/Fq54TbztArWEU0zDkcAXnSCp6lJasFk+j0UUtXNC0=;
	h=To:Subject:From:Date:From;
	b=LWTh9Asq7g9bAxI3ux+iWLR9COS7GOVv44AnYfDcnCXzJTX2G4x+nBTD1OcZe3WZq
	 sCC8WC0f1l8TqVCftyHQe/9+dJCtupbuMLETJIzu8Waz5PZIyAlj5rLKGEjfdoCliN
	 ODhj3y7zfV/Ja5Ig/2vuk7gdfzl0Kt5oDYpcoN7JMaY+a0SExTpdlkVhsGIV/85g5Y
	 gBhLu6+Tk3/wO7vcjjfxsh9WnmFRkgFB5d3Mqj1h3crOj/YIEuJrGXmfT8KEiCSCic
	 b3J1NvaKz+epu3AkL0XdBCvB9Wwe1uoboaF3b6w1guz0ogf3x+oX8x4pWgXGvoQGiR
	 FvSJKdDp4fJbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B674FC98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014863373.10773.2073831656007628467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7ba0e18b06707ab32bbdf224e0225d5f2955b0fd21a07b07e72d4c9f2111c0
Date: Wed, 23 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790148633
