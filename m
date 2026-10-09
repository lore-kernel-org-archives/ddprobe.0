Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E9B486E40
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791532834; cv=none; b=eKoj/6T+fUdTnm+yYKsjQ5IXq7DmHNmzM5X7lSJ0fB31oJ1H7Tvg51GDTGrvn4Q+FdNVJWtO+1R6e+dQ2xKKfnsIMt1EL9NUgmlQnm6gFUahqB8nTVU7m4B292myHy6ScyMKwFI0N8ySBHSFGaQ2zSI/dEWtzOOT8eZIAKvIXco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791532834; c=relaxed/simple;
	bh=Zra0wqv+mWiIV5gCQ3lANY2UOqslsXxSs8qB3g4epGQ=;
	h=To:Subject:From:Message-Id:Date; b=NhqOOEh9eQBaBbVhqB2j98fzPCQpS8bvH9c2mPSN0EaPOEvAJUvPO4diEo1jcEraigVP0D1SR/cmB1+/TdALQoPGySalEI3H7dcsYI8rW2XJQAKnypomsQ4RZWxlgFgAj8Wrw6PRSB8VFPNiaVDCe2MAWCKFmXhVInEsTM1Lbt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S64CP/xg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S64CP/xg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5362C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791532833;
	bh=Zra0wqv+mWiIV5gCQ3lANY2UOqslsXxSs8qB3g4epGQ=;
	h=To:Subject:From:Date:From;
	b=S64CP/xgNlc8fWx9UyrJyhKSMvUS93q4PrlCUxvMgyQG563q58jRBBvM8/ovOPCsh
	 LypFLzZ9/CtJGAc1cX0Py8p/AiUtlVjdgObf7jrgMNK+n29XBBoAF5K6kCg9o1ACTQ
	 5ZjhdkNI1cEtlE7JPyFzMfoJ0LOkOt3uglw9EVLGx3ekbcbIcZhW9On74twXKhRKrV
	 wUD5xn2OSSEeCfz8gNkCWyglEn5TYSosAQ+FeXm/G5vi/LVoxzU3/gZkW6cfsJW0Sd
	 OlD1VKjpAsbsqd9vO1IxTldLoftQQkrzBb/EZZ0TpIaFMaUXnFjKHZoD+FRuLFVc5S
	 vPvekZwn1PZxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B064ACA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153283371.19805.6762922281580519820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fddc87272d4b2d78973d0671457d03672a8803bd83ab15de27ef1847c002e3d
Date: Fri, 09 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791532833
