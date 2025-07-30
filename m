Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC7F25761
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753874394; cv=none; b=ptdXoEMhIqLiBZ0ipi78CZX6Grla79sWqiJ86d8TRE0ktlJ7V9V6M4eOB3pVAaSGxIPSKICbENNQvwrkKDjBbIWhW/u00j3/8f9eO6LVScw6j7zMojTG/nHvkwAGLPUltCoUblfuYn8YPyWWwAbtYTSR3K17RsNid+59vz6KLxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753874394; c=relaxed/simple;
	bh=Ijjtap5C9fG7pZefyoMAfFt2+qvNse9/54EyI6YGHFQ=;
	h=To:Subject:From:Message-Id:Date; b=I0C9IqWF2Wjbc6mHVWWD7WN6kcdNrQlFoK7Mq1THmO7GHz3Jb/INFkcMSUZUvQ7onUnOz3W4BTayVY2LqZMk69GdvIN2QJoy4EtpYC8azV3iHmlmDjA8UslYDua1bo/wM5sjDiXNhMqAD6kWz+vew/Sx46hdQyEc0qA+X/XU9kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOU7Krw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOU7Krw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F808C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753874393;
	bh=Ijjtap5C9fG7pZefyoMAfFt2+qvNse9/54EyI6YGHFQ=;
	h=To:Subject:From:Date:From;
	b=pOU7Krw1YhlMm+A2V4U5h1ebis62fy0O+ZMBAdJU5rLZhoSYnYiHn10RI/4UvzIGS
	 VzwsI3ytcBUQZEbFAS/NZBSYM0aiCX3w7Y0IxaBvpT8UAz+2yBHdkTxglhhvPiVe6L
	 UkP9vy9F7BuzQBu6PYtJ06uz+zwsyVHhfhAtyVgl+8exvEnw4CesWxA+GBurX6qswd
	 IZxh351qbth/BxO9bmig9YX8XnyHz+e4VFyEx1SMZpm57JHuvBhSYpK3sMXT2J5mwL
	 TGiR/edfpLwocyKPX8aeutRmpFaFFlE15LzCcMmcO2+6L//hvR0mDIoxPE2Vn8KGwv
	 GTPlBWesfTeTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B2C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387439357.7944.7750180375169650274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba6086eee09d8db3748691336dd191f86226d88e1ef358d91b75556ab2e34a6
Date: Wed, 30 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753874393
