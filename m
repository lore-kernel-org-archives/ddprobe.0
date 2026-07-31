Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E72F22173D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785491434; cv=none; b=lGzEj8C/8wU7aV9MroSFLla2nkPMdT9M/7PZ5WitAY7Jlu5QIKXE+OUV064shF4HCnoIM6H1C13RfsZPVhvBv7HFo103Jw0mLY1KZF7Q5v+UvmXLfHPCfEFhjscPm5wB4Yyh/fJnmMWUVyHiCskT3wP2h0SFJBUp29iXm3awhd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785491434; c=relaxed/simple;
	bh=yWB6O0sCJs4xjneRZvsadyfNqPaFj9WJ5dY4EhMbNFs=;
	h=To:Subject:From:Message-Id:Date; b=OaaNJvsCTweBDlsoo5lpiVirLNSsqrNgiO12n4NAnacm7qk0kQDRsFvDaGX+b8Hnmi+MK13hxLCvx12fFKZWMpEr2Ikhu2s8ASh+YaZ4jdV1O3oMdr0qfAxTADOva8G/3h/ECkAEVAZMwP612r9ODqYl6TqtNq0X6TasOn8ZH0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrkGZHA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrkGZHA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE15C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785491433;
	bh=yWB6O0sCJs4xjneRZvsadyfNqPaFj9WJ5dY4EhMbNFs=;
	h=To:Subject:From:Date:From;
	b=jrkGZHA6AOvXHD88hOo+yYYCM2PSFpp92VS5pBE9QFIQwBDKzR1kroAM+sqS0HA6D
	 bXXfb2zlq5a4CanclcNKuEsoQzLVWURiF9fTFmGJaNZVu6uV9QnimLylw+m3cd1QZ8
	 3mZD4tpOqQksW1ty2tUrKJHJ6wy1TkyMXCtKvHlIGD8v4AQujIw0Q5I0lEhRyb66xM
	 xW/XW5M/T6e0nG0bhLOffzGbqGsv+k75eg0IiXPhgcRs6W+FlFxdt0r2hYxTcHCGSd
	 38nzC2w4dmbPLnlDDheY/zVlGsCg9EkLhalK7ItrpanYsutrcYJpkA7dP78uRbvJE4
	 LAKKjFqNjyFjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D9DC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549143368.20295.6136069273808344026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7642aa044e22df21bdca98252000eb2e3c7fa1b697484c331a6d2a9efe93bc7
Date: Fri, 31 Jul 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785491433
