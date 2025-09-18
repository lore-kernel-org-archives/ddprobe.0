Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2931C3C465
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758221994; cv=none; b=Yu2a7M5aWdwZzITbAhX+WubHbAyulnbF523oGCaF+QdZeZ6+vL9O16RMeutGyfmnDo7FBE0uN7bppc66czvMb8zGNeGpFA7BCuyl/E1noFKDbHjp03KUGXDdjOTGD9qSki9HUwneLVDIziQ7QQKYQLCgCV5kCnMlITY84iKmt18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758221994; c=relaxed/simple;
	bh=1H+gRS7BN42101oFtMBs3SGh8t8vjWHB0CeShzunsHE=;
	h=To:Subject:From:Message-Id:Date; b=LcJ1OxayopEDa+VHfp73vkpk5Ze27kXwQRoaw7o81UtfHuG3JdInCY6dg3gdTi2crSlrs2IbZEqX7kVo4XpBeIhDt/VoKFTdMKAOBuM8477KKSU+PRGtmurbKqqqrFCo9LRd3rS093h8BVj2B00osnQOPHKShpJAQnwJkEmpoHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8vYp7Th; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8vYp7Th"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58DCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758221993;
	bh=1H+gRS7BN42101oFtMBs3SGh8t8vjWHB0CeShzunsHE=;
	h=To:Subject:From:Date:From;
	b=p8vYp7ThBVSu/B2nnRP7Cw8KgydY40KqoOhaMtRIzsDGICvakMFs1GBL9dZOhlgIA
	 BllKe8kPx+DckWkP9F5JE/GuA64/UHLLKKGcA5heB5JjAE1XClC43Vmdp1Qw74J9el
	 y5qX1BqtvZvy8aRacJ5YNA/anjuzm/il0EbbB9FrhRjM1bNbFt9PFSnx6Q9RVtt3UB
	 35ACFVQ7ofa23l/ybTMMpc1Zex/X2ISp5q3oKnZXFHqfw+Kl7vrTMtHw70c59vE4P/
	 D4H7VRFMOLcuW4whEgIAeeAXxPyXqkZuk1r9hG1Z+nNbbM04+VFQhr0KWClL/1+sPO
	 2fcH9ALk/fk3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93669CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822199358.9696.15678389393660133703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab0cf8a33db90357b2d76ba3dedc3a9217e438e94d90e3cd2769ad612e83c9e2
Date: Thu, 18 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758221993
