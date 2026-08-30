Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577473BED31
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788113434; cv=none; b=gaOYYZNI4TkZIIQYotXtNA0ivbi57tEKw1NnnOnF0joCHL7Fj9KbF7w172PAOLZhiI1BnAv0j0B1Fr6+yfhhLtrHQu3Y+VffbfxVUWL7zzMm1cLrUcHqI4aOj4Tk6KjnIru4v5OJi5O+vfbemmnJrJbFAkkeboEwynxIDNYoGf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788113434; c=relaxed/simple;
	bh=kRYfGDjg7fJ1bLLXCJmvmUN9HTGLkLh1nSUJBa84GfA=;
	h=To:Subject:From:Message-Id:Date; b=SQRzmhlcYmcnEzylw6yTog8klyAFJ2arjHxvK557ocnB38V6l/Y+3EIPBUmrMKUrobaKrU/Sl1z+shEs23SCR+BZxhXts4/qWSg3D+eV+lOZZRCsHhdoVe0WNL1/p04CgHApksJFc7FwX4dPGpAYWMPgHqeXs0oIzVwrYr/lsx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5BI3gW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5BI3gW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4597C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788113433;
	bh=kRYfGDjg7fJ1bLLXCJmvmUN9HTGLkLh1nSUJBa84GfA=;
	h=To:Subject:From:Date:From;
	b=P5BI3gW41hiL7vFQkPCG3PPl7I8u2sy1wSFX/BbEKFEUsUzic8HIiwTcM3+bnRa8Y
	 z+vpxS4n+PJ6Gd/lLm2D1prDL8N+OopM3jsbDCZU58DOVKkykBkGy8kKka9SkRzNBR
	 wxxCrQAzJ7HhVv6By3460rROAKaIzHTSdxjckosomehOvMt+7XdY7gLCFduFQ9oxyY
	 g+PptHaZJyRomgZkP9HU4dmA1IZCdY3ByYiGY3PvWQUYvhJfhF/VtVtuJ9XUmVDlEa
	 6/9JLh1mudl6KvL6HoeERFrzUpfQhgYftkH6Hyaii69r2vtvUV0NNG2muaKRpuXcTN
	 2Zi3A/ycusALg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE18AC61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811343369.19181.8900072356361112764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fef6ffda898de70498b811e405834a914ee38a80ebcd981eed5c8b5f89a9451
Date: Sun, 30 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788113433
