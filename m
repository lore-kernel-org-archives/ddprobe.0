Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A59424A078
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781415394; cv=none; b=pwAlENE8Ju5R6n5ssSo1aTVeBSl2LQT4DQPBtw28zHZRgmaeqPulqToPphQQsJxgV4sIlMzBDdQMS602RVQvxY+MTqMcvIR739NJd2MBLvX9XVud9V4BxH8CbXpr5o4vhTRLJdoj4BuyIgImUp/QCG1J6Tc1xmdzy5qe63f9j7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781415394; c=relaxed/simple;
	bh=ryEkI0CvEcRZXNwONQoECXbx6wIdHKG1GsRdohRJ9u8=;
	h=To:Subject:From:Message-Id:Date; b=PUsqGoKY9HAEMRCCoWB29E6Pb2Ra/7OTqEyzXFO0FuLy+nqI7Lo1qWYdaR7CNzmnxLAFUI00GmITSbs2lXHyiiJkvkg5H05Rc/rpIyKQxTbmo7Y+6gF7EIc76yYPyAxa00pbgH6AJ4sRNoOkiAJ0PV9zJQs8ICrrhkKOEoLWWn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUrgGqfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUrgGqfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E62C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781415393;
	bh=ryEkI0CvEcRZXNwONQoECXbx6wIdHKG1GsRdohRJ9u8=;
	h=To:Subject:From:Date:From;
	b=FUrgGqfLNasRlfvqunmO5HdGT+qW9PPhqPNU9WL4PbngCi2ZPw5ObQBoGQid2Aa1F
	 JMhXSIpUC6e20dOpf++95Yyw+1JhoqGPPZeeV2JDlYodjjMA2jaZbBa5f31BRqfzTg
	 l3N2Q8M6flzVvrCJaxslhGFEq6R0O9UpFsYNJDNJnVETqj2IGqOkgABFLfFOYXeE1Z
	 LrJfiIVh8k9Kd/Tftdin9sS8CGE1c3uZxTEApxPw9YL8O/2hHbL0A1oMuseLWZAybU
	 QpsswiX5es0d65NIUOZej8ZVBrfcbO4sWly3k6p1+7BmWXcovVc2INpaa69IYDDVnR
	 xNJaQ9pfVKL6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4F6CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141539369.25006.13605588412768324884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec624fcaeb9796eda2a8cd0fd78bffb04553f45f0f7c4833c7a74c5ee47e12f2
Date: Sun, 14 Jun 2026 05:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781415393
