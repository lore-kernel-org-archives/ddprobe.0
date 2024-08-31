Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A2B2F2E
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725140154; cv=none; b=PVGnhUG3HmVgBHEh8OARzSaMfYSrtbMdCrCQ6FgspV/nNdLn2J5PfBvWWY9UBps5TEnu+xaQ2jaK8KdXLlEbdmE1MF97hg0mf2yt3BafZogS2dVMIpizGU/r/ag56rN6lfaqIcfl+4SLy7x35fPqncqB8gZW+w99gk0YGK6vsE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725140154; c=relaxed/simple;
	bh=pTko7CyXICuP8FQa8EZeWOJZmJhfvS1A1FXDPpjzsSo=;
	h=To:Subject:From:Message-Id:Date; b=kcvv88SHbyNdcUC0Qk+A9bnkTIP5I4thgAxF/JRIlbkieFuYFWTBGnzmDdof7rQu2LW8Ps0cT7WOXT+wz7olazEvPaUOi4UuFOV1lEAco7xwwxNXvXl6SQ8XsK0etbcpQMA8S638oChx9DjxxCmWVc28vPdK6RPAblsIwNcw0BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sU1Xda1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sU1Xda1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B778DC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725140153;
	bh=pTko7CyXICuP8FQa8EZeWOJZmJhfvS1A1FXDPpjzsSo=;
	h=To:Subject:From:Date:From;
	b=sU1Xda1POCi5IBGXHWi5oRgdhTGedCQVWt6V1jy4o4ruU/kYF0105tKiP7AVwMM9U
	 CZzvlHgV0gvaeeUFiWkwgVEI8OX5VOTdll/DpT80WLQNVNUd6LZ6Zd4TK2ILV6cDwm
	 Mp6eDTkbC464Ku3uXAq2CYkZALIpB/vem/Wa4wvp2KhYeQdunJpuaMKwU6ZLujRnap
	 W95ctzxQJRsSR+kaTRxjgz2jffD6sbz4cI+KoUcCMAqe+p6+xgdMSD6GnYKDKUZHGt
	 KdFSxZkEhpsw940UF4vRT0Smbb4y7qXDkrVzu72qFcHc7/RCqO5J9281I0id4VymrZ
	 qRM2aViazgi0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23B9CD13D9
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172514015362.5412.6944193402297842709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfd93cc79101ffca1faac72e46fe9750e68e8b330f641a4308e122cce437cca
Date: Sat, 31 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725140153
