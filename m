Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DED2472AD
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745582994; cv=none; b=aIj+9NjGKty1TVJqBML61McV2CQOpvnEr7TEzi332YnnCguu4MUiU7nhzPMGnaHnBzPc0MtagU9ciOPCj8kq50+D/HUD08n0Azw/c3HNMuFqouPIpfeKhUwXYqFzJ93zIXWeNvOeze1iKJOp/25peUmBzJ51kHeo1vgaK2dMmzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745582994; c=relaxed/simple;
	bh=FIX6ty7ZC9ou5VIcefTvXxrbR37i83fQMk58u8KWPaQ=;
	h=To:Subject:From:Message-Id:Date; b=CeMZ+DAK3nDm4e6NJaWvNDAIEgBPbMBARV/6NFjxKlPk6dsVsGcD1xPzlaxUBj2r0q60G7MlVAN7IFFlcCYr+hhHTdU/9+rFfBxXySV2wfLD1eV1+g215+oalDqJt9Kzs0FkskEnm0FPNsKAI4l8v7HNmqp8qKYyPpbRKr8/gYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElGI+nay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElGI+nay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BDCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745582993;
	bh=FIX6ty7ZC9ou5VIcefTvXxrbR37i83fQMk58u8KWPaQ=;
	h=To:Subject:From:Date:From;
	b=ElGI+nayTTxjuG5Kw3PJMsrcUtOBMs/jgd3uF8+SI1U9W/20Wfoz3dTscgsal+ISI
	 JG+LRsSqqedyFnFRDCmDuNS+77WTRL9waqujks83ctelac3WTJ4sS60MEPXFpeYZBx
	 EXs8IQgDBrMboXHPApGkHFKbGapXpsppNEFm//4vOdB1sXMeWTUuThV5uyXCUHWZ8I
	 MZgKnglKe8Lp6we7Hsg4MnJhkutdUh6DZ9xwToCCBYRmQIJZMURdDTSbgrBGU2Ia6X
	 BU9RQVzD/Igb/At10Wg9Vc7vvWcjG5WCV3oj75xLIgI+kUz8J4P5avIbYLjOfcxjo7
	 I+uU0dbEHL7/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DBC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174558299357.29081.7356043915544387148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588387bf589cdb21b4073357818eae87bc524932fc3c5c5ab7958306d237175e
Date: Fri, 25 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745582993
