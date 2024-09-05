Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2BE9443
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725567354; cv=none; b=g+v0RRbCIc4MX1JQB/783stfIN2mVL45liH/nmbFc5pGDVCuFWAwblA7p88etkoK6CNI4RkXaQ5lHw+su6UF30SSFPAXnmMXg/5JjQBqpebcux8V5PjUL1ehnddyY6zLoBkulSVjXR9TCu6SixtkM0eTtetSJYfLDhg/I/HL3kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725567354; c=relaxed/simple;
	bh=MqE6E/5nJt7QLSrP/rXfAseoEERXEg3pWUp/fHYK6Kc=;
	h=To:Subject:From:Message-Id:Date; b=ahyKXN+32ld56gwMfyM2IZrC4Mqvinfc51g5IL6oYdPiOYn9AUJ5+Q5B9DRXkZDdwO6S3zLr1J22VNRWznzbJV+LpWSYoeYN0p7DB+MbidSIFJNlK+Z85iWVy15TRXLnTlUuZqKr9m5f5OcuZml1Vpzx7LBHHfNuwx9Ie3+ZLAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HB8xgubA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HB8xgubA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4427C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725567353;
	bh=MqE6E/5nJt7QLSrP/rXfAseoEERXEg3pWUp/fHYK6Kc=;
	h=To:Subject:From:Date:From;
	b=HB8xgubAj7uNhAD5FHpctaje/CqYf4h6uHnW7ZEENLnN54lOy71u73mNHxYyJGrMy
	 FBe46B8iHcoP/ScAkvGgtSZtWzU+fJuBBJ0+Ed3pKWi56IR8p6OHxWrHQ2moLtPMM/
	 6l/UYgcYaWQr/pgxRPmT++Le08wwKhhqSahgROSoCtA5fHBNB+arOgJpLFc0mcMi+D
	 6PCeG+vp/i8oeDPQ9Sn26n5PIOKhtg+3TfV2bsT52CYGCbArW6b0SPU61sZmU+Sqia
	 icFCTToENrESKGlqjboq0PlrSbu6ww5be8U/Yyk9f4upxNjjDZOxCYFieiYskhU1n5
	 3L3CQ0GURv6Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93775CE7A96
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172556735359.21644.5983678579707359153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b238ed81eb02fb38f5f0fb34b74f41745c346475990cc5f97efa1b8a4866db31
Date: Thu, 05 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725567353
