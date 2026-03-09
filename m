Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A002264A9
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773018294; cv=none; b=XMnsmpCWaT1hihgBRd+B0yZEtAc/JBf82SB24YaNSymyO10SLGvNkAdjfF4hrZIZQlDTq8l1s5k8SX81vRfAE1lrI2u6D4G4I+8IJJYDp7iKUIwjcSq8zMDchvFcFmrlnfxNJ2z2a+erv6Ah9zSz97Dc7GnAqBi38P/b7QHcM1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773018294; c=relaxed/simple;
	bh=mH1rduBfZkdgroh6c7ShG/GY1kULOvVHXZFwd9Ev6Oo=;
	h=To:Subject:From:Message-Id:Date; b=MObtFwc1RJVbwzo3EKB0P4wduu3brwI0jny20nCuY60SY+x0xb13RluLFJ3ThuN2cCUku679byIUhQa7NAKxZ6o/s4RRJ5Wrcg/DJh+fi9W67jn/PsuepQqGldzy49LD5Z26MbrgxY8/rpQNfbWIHeXSFbNggQJY/RfZmM5H3hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIvmZr+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIvmZr+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2973C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773018293;
	bh=mH1rduBfZkdgroh6c7ShG/GY1kULOvVHXZFwd9Ev6Oo=;
	h=To:Subject:From:Date:From;
	b=nIvmZr+2L2ip0fLW63oM7ouhK02kTDxfJwUF7JubJ3gCFIB0+bwcq0YLhvU5wBUae
	 uXhcB2tDaf/WQ8eshhWIT3AT3thcFk0usr0bNOAHELjlNPcYLu044s1wj6XAWThjyf
	 tdWPYHoiLI29UZYTr4T9sB3Q9zaLVY4ImOcRwKqD8tOPWu3kCGjPRK2pG28y2vnOJD
	 hix2MWAhhjFH7kjHUOUalHPBu75fc/UsxrvoNm/jAOtVvis/l7Qy6+YVykVMf/H8s5
	 NfKhx+hCTVT+qBBRbx5j/Bm9tAzDTJP+ekbdG4SG2a6ZwQZZcr7vimllPwcWZdF+T3
	 6qGZ221n6L+AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D85EA8549
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301829357.9086.10567463630929680675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc85982f2ae57f0c09ef7b93ccb66c5874952a792e60387a7d9438e82087dcb2
Date: Mon, 09 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773018293
