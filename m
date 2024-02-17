Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5BF52561C
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708166297; cv=none; b=ZMyLw17eeHJHn3+5qMlphpM2XO5WHT3DXLPIKYuxZ5pzw4tT47+zlFyFII3EOH4HJruRLFUc+5kRmzcnnpVPJeV5+6mHoNQnIlC/Np7qkDJt/puhwlxVJvrbgdZt08VqgX78UvAwyx+cSRs+7dxWwmVKgFRzcYk5s0o2pus2Lu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708166297; c=relaxed/simple;
	bh=VSSRkoHuib//BJdlotZi7I1SkJBQmLzEek11A9mhWIo=;
	h=To:Subject:From:Message-Id:Date; b=VPBuEd9ExSCN5Vpo7xcXmxvQlERgmn2+ZDt6x9/ICNGih2BI6B9++2pIvK+oyFN3a6AkwTpP04VJf2Muc4r36t2/qvncui7YCNX0YXBS21EPW3Y9cLS/CfWJFPmLrFQ2MjstylkT2EWboPqNvjQxBUAfhsjGk2JVG9AYNlqMv98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlHcoWBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlHcoWBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B2DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708166296;
	bh=VSSRkoHuib//BJdlotZi7I1SkJBQmLzEek11A9mhWIo=;
	h=To:Subject:From:Date:From;
	b=mlHcoWBxryLjr6y7tf6sMoW5rnAa8bHlL0wfUPJS/SnDNLRxt31KRzk/ruSAvbevv
	 vUl3v48q+oWg3VuIsAY/lLEgEWdoAyHwgbygHxEJd8Q1HQfUqBvy7fA85eH6yIHPAD
	 7/x1Kr/kzWvp92SXAtVYZXOJVcv1ZPWXDDTomIPHYIOwCqfnMBuZF3w0374SHei6eq
	 PGc4MQLJIkNcNIfcmL1mOPkKZO1hPNrEiBO+cZZ0GKYdgXmJag5L/ZKOC65i9IpI3y
	 2kxv3zlHuG9IGQ3NvrCeG7VPlmq44yoSa1XKJ38JJDO3sC7AFMNUbAx4RRqZqdEUVu
	 /Bn2EdQcBODCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB83C48BC3
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170816629637.7780.11299926243030170868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99a8b33062d64abebcfdd9a82abd6c96e1dfab4ec8d1feebd128c1d43ab19752
Date: Sat, 17 Feb 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708166296
