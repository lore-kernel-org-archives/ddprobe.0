Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715E71BF50
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715458943; cv=none; b=LWxgNQioa7QvE23gBY/WFIMdVJZr2W+AhBi1UfIPMzAgdOdeJMQBHJB46uRToQW0e/ONWiY0Z0r27mSWamVEldfL3fMoS0SIX4oo7FfypunPsvA9bs7P/+4D+PbkGekkawIueQLIW9eH7xbjjV7hql68S/qNziGd/JOtGOB9pqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715458943; c=relaxed/simple;
	bh=Sge9td6l6Yk12W509n2grCktw1cWrCeaIMmTJrYkmf8=;
	h=To:Subject:From:Message-Id:Date; b=CdB/FMW6hXeQf+CVsB6PJtD909H64ToTTr0AW134McKyqjHZQrDy+M0GBbLPmtebkQ/aGd8ILGT10w8oQoOcZBTg1bwtNHBMQTUedjtc/5IOeLCQLtV5+HIEmSm+zHVX2qpHC5dwXDPsxfbQxAcGIMD9jeMXl+hJCu4/t2A3OCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdYKsaQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdYKsaQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9C6C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715458942;
	bh=Sge9td6l6Yk12W509n2grCktw1cWrCeaIMmTJrYkmf8=;
	h=To:Subject:From:Date:From;
	b=rdYKsaQ4wvuoP42Xq24GmTO8cUs/5Y8AyZRfxg1CMsx4kWoCl3AXad7A12HUMniB4
	 2QacwunL6nOmMCUo9ddf+JVIHpx+64xe8R/fBJ6uA6J3OvsgJyotS/PmGFqN9KI7Qg
	 FISYr1yByGcNC+XK9f3cMCB9us7okpdttRrqqy1NrVyv2jFT4fkIRmscY7uXSe2utq
	 O+1hhSPCGq1U+uyWw5NirqudjzDICu/R7MIBWWHc1nKcV19rR2+9Mrmicz1U9ndCDI
	 FtBwA23qiccWIl1uvTFUOmp7Mc5+gLAnHR9p51IuZVeDyDp6huwuFqWnye8fTI0fCO
	 kdvOgxzMGKrUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28B1C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171545894276.24398.14093952111660264686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6c24eb69df0e78c158c6bd2bbb59ce8a9412d87b7a46e724383071f223484f
Date: Sat, 11 May 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715458942
