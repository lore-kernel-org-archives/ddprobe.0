Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276562F25F5
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776953254; cv=none; b=VIyHLFJ32IvOHYJk9mUgr/8w4dWDdghrVVG5JfE6lufUug0Q00gd2+rjtH0glBJ8FeaF9F2wMkc+TPlgg/tlz+eqJswA8OSf7d837r2a22HrrHMUZnyLWaTYE3YiEStiEl5xBb9u18zdZBDkVa3bPWC+dlFORWEVJxfkB7cjSts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776953254; c=relaxed/simple;
	bh=DAQAkFTay7dLyAL1TiEl+VM4rACrrWQxLhAKSfZ+yzk=;
	h=To:Subject:From:Message-Id:Date; b=WQdau+/8HC/yrl/XD5JUQJ7mVsJUUJr0C30YgfgjoCcS/TKHnL7/EXsyuhKJGrT9ivwJyW5XXgoKhDzwglz9bZff3cKgTPeAllGvFvK8yVvcM15u0CxIO8qyraLhQXh+bHc8Sp50ci2DJK0uK5h5/dcrXYRnAN6GsUcZPh5ZhYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iw7OswDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iw7OswDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FB3C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776953253;
	bh=DAQAkFTay7dLyAL1TiEl+VM4rACrrWQxLhAKSfZ+yzk=;
	h=To:Subject:From:Date:From;
	b=Iw7OswDjGx367lMM7lZsCeg6TQN8H2yjWstxO+cBkowssDN0p8Z/G4zREDhKiwEQZ
	 BVf1W79PM1kq/DeyEL3HpPTEzowYx2gSNqMWDXXjlee9zW1EoOvsBKjvUNQUCmMfoc
	 hQ7PJu5w3DNVDI0QofO9FFsNMpW2/ZlyOIJ7ggphFcCPw9eGt8qIn3wWZeAnxnEBpQ
	 wWf9OHuSy+fvBbDg6OJRfJz1E+5BcVQocu1+AnnQ89W/XdxtqPq+3WP3Y87MQ/xVEJ
	 uOvyXL6nCHzOiiYTZfQa1BU/0CzvjVx1aMLKr0F3a6XtylAzThBwVm/YtFGvwC6gp+
	 JCHRCZRO73C7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01BEF589D9
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695325368.25681.666312932504062636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af58957c8806a94f3152884b0113a7f4f7e5ef17730cc1a30c8f360266aae28
Date: Thu, 23 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776953253
