Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2EB481C4
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729959954; cv=none; b=VCqjLFyxG6rvrtHhKTsiU3UKZgox+SBnHBcJWa3sZsvTDeEbFXCMiFQ0SOHea1KJJdD+xfyscsoyaBDB7RFZGIQHa+9VT1DpUJVHT33eRSC1Pv0GvlHqCR+uccLpxNWcDTtVfdlVCO498RKdmHaHk5gGTJXfd9e45pvwGqn1BcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729959954; c=relaxed/simple;
	bh=TiQ/YN2WLEIbJW2mvN4EIkIefhK4QazGb56CuBSlGjQ=;
	h=To:Subject:From:Message-Id:Date; b=e6VvxnfQPBsfTOLAIUTdjwa9MoJ8sUWrU1LqV8up4WpZ1b+nn99nEiu+qC7pdN8gTv0ZscVBUXr9hrKVkWhSyvCXqTW5c90kTp21mhwIxsuTP4JxvtLCgP+Ag7fQRxXo81Pntzgqo5erZduZvmG6tKFRNfsQPYKtVvO6L1AeYIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJFMsSRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJFMsSRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A1FC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729959953;
	bh=TiQ/YN2WLEIbJW2mvN4EIkIefhK4QazGb56CuBSlGjQ=;
	h=To:Subject:From:Date:From;
	b=gJFMsSRI1PuKF8+uM2XE/ksGsYepJy91la3gMgBCOiMDm/bHJWxKBcayrpEyf9ppH
	 YdnlJm0WvH1uZcv00FbM4wSrRNWWn88vQuNompI0b0cCDIqYxSieMRJ4I7y2EYpbxn
	 CfpVo4YxtLuVsG308GUH7NMhveT5vzyHPbDR6grPWUIyamJe9tW2oVahV8MfLL/Zbc
	 mSsvm+pjZuIfpQ6CRLa0iWBmlbK9/SthvcicfKwbzARDwOBAfZYP5exWIuIM7Jw7dc
	 xJ6VBURBC+kBZCWvj+SP3PhATkXytYw8ZW7aSr/HBIp9yH+25hzqtmboVRZyOBpNAD
	 KJlq4jkt4ehfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94422D10BFF
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172995995359.25405.17707951569440285441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f6d2cbfcff61ae210bc553a9a95b8dab8578351942d132dac39b2a4533ca61
Date: Sat, 26 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729959953
