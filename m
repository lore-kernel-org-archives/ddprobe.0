Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C2413B58C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750577394; cv=none; b=M0WE4bUZYO9o1fB9/pEStB2MAIkXkkq9Zk2knWvt9gfPMEA0y31u9NVF4W0J9wq3nrYxNsvp3AZewePleQAOkvHv1UxJ14WYIlyqXotrVWUYIGSvgc7RSeUhX1LQ2ke1DEbPvsSW6npq98441RTOACifDT4F7J58JoCfSwMYxa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750577394; c=relaxed/simple;
	bh=N81swFFoQro55ADdR622b/p9PTeJScAjdjxXQRYI3dc=;
	h=To:Subject:From:Message-Id:Date; b=aTMvmMm0ZAMn88QraoCrAibfBrvh0vOQek4X2oUeosiLA8NcFLClNlaoxB335gRfIoEDaTH7SuPSYrgRygvWc+Q6LwoZPtIjJ27hBi3hhOLV/sfvuJbIFtMW082qGUZ+E+u3fmNlcuaFOQl3eCTU1iUGDA4/5aRP8uEBE85sKwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PN9sul+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PN9sul+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2762C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750577393;
	bh=N81swFFoQro55ADdR622b/p9PTeJScAjdjxXQRYI3dc=;
	h=To:Subject:From:Date:From;
	b=PN9sul+LGJaXiZPUpT+KiXrstkrU7eFFgLTwApe52UEsZNTV+MiAR6eaan87DISsY
	 ohj64i+vXTbGBHZrV9K9GCYJqXEV3X42uh+k5XvEQ+CqWq333kFaAZQqyPxonGWJeW
	 ZRTwoWIFOIXRne/pdXrjP1aWRTo7P6BpQk8HSUCM9jLkA8927osX3cW2+7hXeeauq1
	 TjEDdyCWRtb38X4VSmilHDsHYqBHTIhcWfnhscycyhBo0+Tk+eqtH5HpLlkWFhGQeG
	 mSNob6g0dIr77723TkGchyiRk7BF0t5OhShcRwIE6D3T5mIROBsDYcpMVsv4IWDP05
	 m08lVExgd4eAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902CCC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057739358.4565.14644325998464179296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39cbce593e83184cd2185f9f32ebb4f785b7d11e3382a13fd20ed7f7052dd5a
Date: Sun, 22 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750577393
