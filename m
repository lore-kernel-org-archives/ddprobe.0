Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FAF1CD3A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706284097; cv=none; b=j+BB4mDmQSVCJ7yX0xzHhQVN6sXqwmsPfU0ErC8a2T2CkU3uxi3e/SdAc5rDB0YbCkkitENOdOsKklrKpgoeMsb3v5VACSjfBrcKEmEp9gg8WmkxS9AhYMLTpw3Cxe97MEP/oVtzHhnat2fwnuynVtxR2ui/+9gJRfnOQX0F7E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706284097; c=relaxed/simple;
	bh=M70YBqhORrMBIDLA+Gukk4zO+Or15eu1StPWnkUun1I=;
	h=To:Subject:From:Message-Id:Date; b=aBQuwUh9k0ldR+D7MAEQC5qAeB0VFlFtpWDnjYb81hydIZJC2TdyWMAJ3q6geeJ8HEOJ/KwHxNKiLy8JBTgiPvXdi9uvY/P6VPGOQG6pGmvDqLd7w0w9ysry5a6txKKShRBiRRkBpzDy6kblndCK+KmRtUiBBYZp7rQv+udK0DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkipHFMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkipHFMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D83C43394
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706284096;
	bh=M70YBqhORrMBIDLA+Gukk4zO+Or15eu1StPWnkUun1I=;
	h=To:Subject:From:Date:From;
	b=UkipHFMAXu5Fr6pRsdgCsDojG9YcvQ7jXTig6XTn50OMkvCr8ZZ7LGpIu7ElvGAtr
	 WaC9kOVL5fKK1BJIkb/AfNQNqWNhoLTm+u1IYzntTpRjXFrbDuIGoNZV+Px73jk0sr
	 +deSve78b4LBkUbcPTwamnT570msbYN5r+Y2+5ttS2PKmgUmO5gjP5Xf6G/kXty+VB
	 1g1Xw0KZ9deePBCc+GQjVO31LNr0RD6Mo5fN42orMZSVBlfSZGG/EmJb2DWKM/fRve
	 uPlUAeVmTD4OxogtHmu/HI9Um/6MOyv3Ztk4lsuPgtEIcyViWhoZFzUgStwlEa8Xdk
	 Y1nyGzXCBWG0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6041CC47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170628409637.16281.12302920067347173539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e971bf3bb17f5f70150bac872483a163c9b808af3ddfb329fa329dd1d004e96
Date: Fri, 26 Jan 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706284096
