Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED8EB33996
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710360497; cv=none; b=Un6z3P/RHC/i9RB+kdG9SITH4YtVf2Kk6crY13gipSDVxXIhROhp2T2XEmORIaD9ClFioCo6wgsDvRI1JWS1UoijJOW84ASWQVQR70d2gRypj4Xl5fzw7vDx7M6Fbx1/jwy5U2/i3IPGBA87mYyzsARIk62Wx7GYCAUkt0cTSuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710360497; c=relaxed/simple;
	bh=UgzUWfdv4YB72+Rn5InIykzui6VCpn/gANhWEXWAWWQ=;
	h=To:Subject:From:Message-Id:Date; b=IUNt04zVCb/0dftPOF2+JAKUC9GwUx0uF7zoh5x0kHb8nRmR7iVU7vNhN1nBYWJraeVkrjBcJeDFTf0THbJ8/hdJbHvjeo0QeaF9/eLDLJ7ZIzSxRINRgHOKAPPtb7FW5z4eH3wHIJPEM/vJzdTcVsUxxzSGWgGEOXgRc95xS4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brAaVGI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brAaVGI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8317FC433F1
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710360496;
	bh=UgzUWfdv4YB72+Rn5InIykzui6VCpn/gANhWEXWAWWQ=;
	h=To:Subject:From:Date:From;
	b=brAaVGI7N7fC2YylJxoAeuxJrP7GxiKZ9q4CXoiCK685lwnjm4r1H4Bb17NLA2YA9
	 nYpwF1PugKcoE3c7rRoPG1ThRJV29pc/iR3ZJhNI8oehIlA0Th6fZ5fQPdzfMFb/jn
	 Vrg/EWWM8cSMa46eh2BTSGq7ZpdYPs4JVpdydb8KZ6d7PYzrAZbM9Yj581b5gg1a2d
	 ftrc1klK/3PANMRJSlXZB+mLL0NWHqF3WdmXL3GrAALZHiAGbYgWbjNcNm6OHSXXYI
	 BE/53n5qa+mBns3PD3SItE7PZ7M1i5eMyYyqVP3oYJBeo5/ti9MC8tssuT6id9AY2R
	 vKKq4HupVPh8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E57C54791
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171036049639.30774.3270139415161800308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad8088ea12bd85e2e849ba1aa2d02611c1dcf276db075c6f742e48f8668c3ba
Date: Wed, 13 Mar 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710360496
