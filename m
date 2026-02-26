Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04BA313E14
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772105094; cv=none; b=TdZKEP9cfA7RWrGssv3m8ecz3YLx5fcmXnciJF2p66M4Fv7j7PLOMs3Vd6N5rHBVknsdacywVIRWowgEEEei0hF1DDz4L9c3HHUIVQmTS0e9pZ3Aaie1UyMMqtJA66eKiob7cTKkVBOj5CONGP9eUaKOmBbXo1eNARAnktsnzvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772105094; c=relaxed/simple;
	bh=Xsz6jwYOtkcLYQmO7h8FNFGOid8jKTbw0s/s740S73I=;
	h=To:Subject:From:Message-Id:Date; b=RaCRLKD1Nj3f+F5TLlYuzIcZ+AYAPI283s5yTKdYWBrAsD1l2eeJFjU7VvpKO51ZA7k1AbpQfYjzRE6lKizeX1/9jKeENFV/HxfK/b8Y5LTzaOmOlT6B3WOXZIGwVpOsmVA5w4Ik4jCCObbt8VkwELYjRSWJy/haTENJo3uZLzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgdszcDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgdszcDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F20C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772105093;
	bh=Xsz6jwYOtkcLYQmO7h8FNFGOid8jKTbw0s/s740S73I=;
	h=To:Subject:From:Date:From;
	b=sgdszcDJ0ofKY64Ts1KunuMSH+JNqpvMDOHfPjtDsn6bX0jH+lpJh6S8UrZnCEnO0
	 QMbs3G8BVSbu4hb4l0IHqSiMid/vllonv/vnIJHBGugcNGJtZ8T+eNUCoMnRmuVze7
	 sAP1HXapbopDHTdLKuQH6nQS5COB3CfaU2CKTGtO/rMwVNvBHcCGFNeKJIPhPkZofp
	 5bB1f3R6UM3n0tPsnVbLL2gEIIi0VZKZHHZnmG3iuuDkL+Lc3Y8CH7QYJtx0RQeqEa
	 LCE/v0quV+FATRIuBvMKQiLSzSFnm36RDh3nFU4xDdSd0BKDdLBYYbKIkFEuAUNbrR
	 pFo6gQlVbqkYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F17FC592F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210509360.24055.4522973920447833436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f64319d8beece9cab833a725c352bb5a1860577d09c1395c2c56df159f5ee8c
Date: Thu, 26 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772105093
