Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8A9131E49
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787727634; cv=none; b=nD2JBBHXD8vcFYyc9q5S9Rbhzoa4PBNrlKi/osttwG710vxLqrX/TuyQ2Qj/pH8MhZAICigAj7p3pkCCB3Hjxxw285D0GOF8xisACyvk0Oth8IldTB2zJ6Vs94D4Y/bQ5jRXMWjmgDN0hx2PscBnQuF+Y6ywaojT5RDRtlB08ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787727634; c=relaxed/simple;
	bh=C0gR8XsSzqS6CbZhjol30y4vbTzMIQFhEeep+tm7J1Y=;
	h=To:Subject:From:Message-Id:Date; b=BwRuZnQ9qMBYnrfHtiNSzrFmvigKL7dlf9/Kf3W5g3MOhTc8QlvRK2jhyOJfi4jp6j2watQXTQIV9bDAIlceQh3tXcwHEW189a31gYXuK27QMrNr+1Isne6X9blsRIs/aWfQTh1zqCbsA2NK6rfNpsW1HgrGBIJjYE8CAk1Ynew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xh6L82h8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xh6L82h8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFEB1C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787727633;
	bh=C0gR8XsSzqS6CbZhjol30y4vbTzMIQFhEeep+tm7J1Y=;
	h=To:Subject:From:Date:From;
	b=Xh6L82h8Exo3nXbPUf76m8/X/VT5+dfrGXEBzqS3dIZnLxbkg56vUBZG61cVSjjFp
	 YCPykHxUB7CRggvPM2DkyoWpUSGgouL6dFUTS52jgjj/MgdLQpDVxZ7SN5OQPtSblR
	 V5gEyZ+WBrh+37UkGRZ7nilHZNb2ENdc5paJKYsSt6fLXhUFEwHCWYRr3ngz18GIoQ
	 wYdvTrXdzqNIbOZIWO0CJTIEcADYApOyNDYScNh8epbaem2QLk7O4cqacVZRg5CPlG
	 n2PMeXht8orzlAwpqSr0tw97PuIM9g3NS8bJDoUCT6c13k6QjEVfoRtHKD6C8GR6Nd
	 ylOp41dMGBBQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF2EC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772763369.5886.5577100926040620003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3747620d1acd56aee1d2b5021c79d28853efd5d84d2a81233ca52000f2fd06e
Date: Wed, 26 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787727633
