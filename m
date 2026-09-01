Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB1D2E1EFC
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788228035; cv=none; b=LDRM7bzu15RzXQ6V07KBk6kUMhOF4w5heuqcffdGRtOdIEVegLtrZgqGT+9gj2ryqEE59yQJNnoigoSUasYUN/r2OB53GEwVaibjuG2HuYTWw0nqHCjaovQvxX3Qb+JiAr/Oe/GLYeqCMepeO5bN97fwFBPV6DbQALRkhp/XAFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788228035; c=relaxed/simple;
	bh=4Dh92brumW8kliGNNT04coDL7qh+7uNkadLfPTI4ryk=;
	h=To:Subject:From:Message-Id:Date; b=PQdcg+uYZBxjBVLQPVtUIHS48w5kihjCY9p33B4awTM3JyAhYhT9rXX0WXoaLXw7vKa/XRN47rRPm33IUVnXC1YZcNZ2U6Ap5z4rH5Di9oM6KoXtWQhalqvg/J8jVegOuUZ53YMuh7CBOMccVx4koWEjmkO811H8o/QNLuVaLtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwdUP/Ek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwdUP/Ek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38F6C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788228033;
	bh=4Dh92brumW8kliGNNT04coDL7qh+7uNkadLfPTI4ryk=;
	h=To:Subject:From:Date:From;
	b=YwdUP/EkvxrkuJhcZftceSO3KJvtM1Kg65pAQHCVt8NAWBbXt7d63d8d6qDobo7tY
	 2l5arZtJoNVp6ZGDUSHg/5KA8V13YdmE8jC0OWAz2by/auqpT33nVZ3W1YGdL7kRsV
	 99VYOCZZfDl7E/UnW1B+7ubRgh/kuu/MpCIfu/mWZ7gPGNCseHvScOKp7ONZLO598F
	 0xmebsb6DoSIqvwxlWAIdS0A7xsN6mEOj4zB8cZa1la7xi9LDIBECanb90DhiHjzL8
	 /1FSmVsal78MOVCPftEQ8jRjkMkGCUJ7eYhdgKthYEhbJos8RI5D8UmhFRB1Ha9NZc
	 BbaMm5ydUsJrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA53C624CE
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822803368.7001.14414452536196644833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1412c0b1a07272d533b532b48c3787eb9669e488ee3898f868e051952d469aaf
Date: Tue, 01 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788228033
