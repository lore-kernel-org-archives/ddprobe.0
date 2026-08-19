Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9407038BF69
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787101835; cv=none; b=WfSeyo/1OKOIfOzvf3tcCGqRN/BsWhO3rwk6Pw9fXBBUq4ufr0VOOhmirVuWsR19iorqjmGf8W3rJJqLHQ9cbzs0DR8IptshuN36VfM7pvwHWypPkmios/YWLMPUXej2o0WEZFr7eE5FDtEu2e3xj0d7omlklODUe6OVIhS/ROE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787101835; c=relaxed/simple;
	bh=woHc81BYEi7AeuEf5kUFMk23s0MX7jrrDr8kLz66Qvg=;
	h=To:Subject:From:Message-Id:Date; b=IPZxdiiXO2WWPGIO82ytafHpMq5NN7XlEjaR3SnvUJhxdKTV/usPt3p2w7RGg9CtaEl2+wBTttg7IcmgKb+49VvZXELIMZtB6o/aBGmBjT15FHGXEit7svvgzp0lYBJohLnH7ojftHqSfVR8ZgI22ptBZnc9j2JOkz1w7wzB1gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEf1uj5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEf1uj5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35D8C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787101833;
	bh=woHc81BYEi7AeuEf5kUFMk23s0MX7jrrDr8kLz66Qvg=;
	h=To:Subject:From:Date:From;
	b=nEf1uj5x55BbD/zfFYlywak4incV1JGnEDrl01VskynB24VHQqaShQAYkV+maQkjp
	 E/K6blNdig5Ia6ViX07FV+OSMTfTpUIQMarFXO4nr9OyFnilJX9O3M+vpniutzZyEQ
	 FV7STeb6cEDxmvbNXiTfHEVWvgunDfsSqb+OivZqHNgtSejFL0nT1apy5v6vOBPrO+
	 Z75dtZ/CNJKpHrbY+IKiCh7LGF0zpmRJnwh3h6TZjHxflC7SqckCzkopOciIWmau+B
	 8CXz5I2J4jwqJ/zRNuyCRBOt/IKpUMY732sTrRwBD5zVOEY9W6yZkHf6HYh8Bexp4+
	 m+mhufWq5YXUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD959C5DF7D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710183370.25495.8239873505124788278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3439ce91bd4b6de3811ac9f1bf413c5894b788e77204fb7fa451636419e7322b
Date: Wed, 19 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787101833
