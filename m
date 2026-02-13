Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F19134B40C
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771004694; cv=none; b=n+Ji0ABi3iiyR+cAzXoJ+IXm67ae4nj/LDOLhan7zlHhYKEHdHQo5LrypAaQoecP0P/ffl5aRnqOO4/Shrs2lprXbwyic61H9evawonj7VgaPMCoXwUPLzteEosjBFodjTjnofoGCcZLbS9n5Xp3U8GBPxODHQ3c2LHoNss+bA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771004694; c=relaxed/simple;
	bh=h/advnIqZ2uqomBkkYeK92i/azAHrETZ0yZoYPRTv0I=;
	h=To:Subject:From:Message-Id:Date; b=M9aiIo9XymipcVg6ygrJJJyBi4tZ2lPKvheknq6+muW+CalVx48oJwrayNq6Rn1jFOG1HeGjePsBmCgh5RKLNN+dCdNMUrYR5ZijuOGdCoc8/25IN2x3hcSQfFdC8H9hIQzJJYBN/E6pu7pp74xrAmEA7xyaw4OcNgdnVMkExoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAa3TFgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAa3TFgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A503FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771004693;
	bh=h/advnIqZ2uqomBkkYeK92i/azAHrETZ0yZoYPRTv0I=;
	h=To:Subject:From:Date:From;
	b=ZAa3TFgKxti22gJ1PVQDaKO0pErSM7Ojbt0C1nLzvvpR8lLnRsSDrpHddOTxsbpeZ
	 cHjpzU5D8MR47CjL51OXHK9QULPMmqMmwH0DsqIyiydrEIkowxpxelDDBvMhuwEker
	 J+3J+cpqoTVsCaXtlIWDjv3S6aLQ6nvj+ddZg9UqRUreEY1SAI0vWECV2vBPP3nMMr
	 NsVafdjxyI/NGiWWBy3eez9pX8VC+O68tumG7mQXXDjLB+u5jGVF25B5s9pWq4HdMr
	 Ps/8q9SllGQswfU1I3ZmRmcLgsqA9o2QKagGk+cQWv51XvWcLqEmC4Kkc35F4AbkaA
	 WtH6YCwLBOwtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93952EDF17E
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100469359.18055.7150575691795879438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c630ba4869b8804d58416c3afa11dffce619beafe4b188b6841d4799734c91
Date: Fri, 13 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771004693
