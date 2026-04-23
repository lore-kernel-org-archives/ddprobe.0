Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96062417DE
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776985054; cv=none; b=haPXvTiveFPrOzYIU01fJCymFQrUHO2cKv2i6GyeaPg2fCukE4hEXFdznssC0AnHtFHVabjvNt1KSNzoY7qKJdIswLjfKvfdwLsELoTBdFSZhOYSWfJ6IXRXW1uxFHLEoAqTfZLbohFxhjUMRSRKpfWnnt/4oneIOGw4LU4tfMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776985054; c=relaxed/simple;
	bh=ODn0iYE75SVh0sJBvWrt1ULx63sNuGH2USc+ycedpsQ=;
	h=To:Subject:From:Message-Id:Date; b=gGQbSzn21kWCyI2LH+B7XGhrb0QM3jkmqww2ysHiksjLDcDUYxNnMrY+5ackt5KYu1yNFI/FYqz9phhAXtzK8Rzv5agt1IhBLi8x+r1MGIwlxdFyZWrEKI4MQvoIhrcOaJryq8wqpfkbLiSvdQJRfagN/yrOQRbH7yPgjdZt10A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmRgpThU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmRgpThU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB766C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776985053;
	bh=ODn0iYE75SVh0sJBvWrt1ULx63sNuGH2USc+ycedpsQ=;
	h=To:Subject:From:Date:From;
	b=TmRgpThU81Bcza+9BhREBKTBzzbSMbvlxUXKZaYliC5cMX5D1Vf9x79LJtDFQs1VC
	 dIfp/NYyds7vWZpocZbilff7eRsLGYWWmvtcwivFeCD5bPHnThxbIDxy7f33dLF8QL
	 QKATcVKCYhIXD2X1SY4jYdR2XTypH9eZhtlY9dOLE3kTFwTFMWcJAY0T2a3pokiSOI
	 /IJ8hkDfBbxPdotMLvi8NCU/0YGR7zw07fsVORfCNCKikZtl7gq7rmtSD388VUx07S
	 Ucb95ARud+ROWAaw4PpOB+VHUA9tpoq4bTchwzhwZ5hrgbM4/E/cdgCHJdc0Z6BGS0
	 l2T3qcVINJmXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A968EFDEE28
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698505368.3153.9494018317350827229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab45dd285aa210a9e02ea04c891d77ad9586da6efbb8a911773a58d12d820789
Date: Thu, 23 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776985053
