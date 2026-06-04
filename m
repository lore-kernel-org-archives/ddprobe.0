Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F4C3C09EE
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780552474; cv=none; b=O/XpDClD7ajT4zlNX3LoAatttVBJL6EFSNJB9ujSG8kuy2xE9L4QzINiXXjMJ6TbA44jWfV9N7JrCeKSmHlk6h4BgyOL/FfP2hnreb4uG9dGuXCtW7tzApS6w95NoEkNR/Cz0vSkZPxUO7UqjLfjvhgn7RK+QJRV6aSaZxYjcOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780552474; c=relaxed/simple;
	bh=BbCWEK7LLntffLYQi6oGXjGIIgY05tW3nXxz1z7lFzw=;
	h=To:Subject:From:Message-Id:Date; b=fSyNiVnVxjtUcMJTBUPrNckX8gBPGkS8HykclpXru6koL+aWEv/ULBZRoxWWlXWV3eHAO0LYXDlLDyONYa80ZzmNRHDmW/Sg2dANeIvLRkJHa0HMSMx2UJIm6Hdd4997TqZJq50igloK3pPNuCQd5PZdbhmflAiFbT1sejIRfd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q37L6AB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q37L6AB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4265C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780552473;
	bh=BbCWEK7LLntffLYQi6oGXjGIIgY05tW3nXxz1z7lFzw=;
	h=To:Subject:From:Date:From;
	b=q37L6AB8pBmVELPGfwhcTUsnUCY3M3eDOpp8ZJ2Kzb8rd7X/r4zVhQAQyTniROOie
	 yWuNNkuNF0ZVrHkRYBiSj2+onsvj2Ec7V2cgebVppdfQwdq4h58D+LOpuSaZf0JGt4
	 MEcOkwmBHZMIEjsWqnqTf/7q6EJjXha8R1+JxVxCdDnkj2pM3EGwOI02/bqGPf4mH8
	 SI1NI1GoKhm3yqBtkHCSOInQpMp4cpiz7kL6PONt0v6FJPgHcY3ME4FZrAjEn1mvLq
	 0RYgyXuE7lG/QQB9gx6mNV3lUg+juPI0NHIQpsHHioWn2W7MeHtXiwMYdP1Le7wAut
	 t79xKNaR/IZSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB099CD6E68
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055247369.31201.808501378695897519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d959e964457eab5b6bc68e1d80f229bc592b1e4d2c5a0a6fb4a7ca238e9c2d7
Date: Thu, 04 Jun 2026 05:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780552473
