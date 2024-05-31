Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BF578B4E
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717182263; cv=none; b=cscCorQKyF7mq+jcLZ9tniHacspfz/i9ttl4d680bbvuaerkKkPgAMMmFtsxjcOsyjHMCAVNaGLg4Qz6/iix0ugRLU07ZZFuW8Achps022vOKfJ/K3ljJjm/VI9X398Qv1U1h81Sg4osvnmhMYmLRuGjENG8isJvI0RF8Hc3e2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717182263; c=relaxed/simple;
	bh=AwVc59oRusdRXTKnNw7KLvu3CDriv8GZT35p58sP27E=;
	h=To:Subject:From:Message-Id:Date; b=GWbsomNP6rfZ3MeHC0d4qSUd51+eBTK0yExpI+z82aExzuFf91cyuRzEDUeLNy9iQUXHoYdHS0aJEXSpVTaXxL4gSCxB/cMS9OtdXeizsOJAAAC5K6841Hx6VAkwYqKHWinS4nCNq/4M5aYbDIBSJuRtKfPjGLx53mp29rrXGtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c032ZIyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c032ZIyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC104C32786
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717182262;
	bh=AwVc59oRusdRXTKnNw7KLvu3CDriv8GZT35p58sP27E=;
	h=To:Subject:From:Date:From;
	b=c032ZIyukoxoeIXLJT53XyMa6Y/FpFG6iyMTV/nHSk4jr1EZ/EgMumaEz7mxiyT4Q
	 9D75kKzALq7px3Y/SvU5TUO1Ac1qHZR5096wSn1dq0IMzyiwg+kF4B4tgP2+ZSH10R
	 TVtv3ISHEzGrfyqpGnhrya0VQ91eox4vnbbD4zcA7tYnvSTflDRa+l3/FaqyxWgkna
	 AaGMt5jw8GDoaasYMP2W86yhd2UWd3F3fBOHQAaHwzLp/15zcm7Uaj3FQCPmcVd1EW
	 db6QZM8kq8ji1WQycoCppIHC4ezMcjyvQ6xVD5m+LccmMyHU2GE8+PtXL6i26B5Lbe
	 1T0QBcNld+3LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C7DC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171718226280.29997.6713549668369942244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115ffcea36477100726e19cf7d1ee63719df7b3f755d8c459def35a817b93d89
Date: Fri, 31 May 2024 19:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717182262
