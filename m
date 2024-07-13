Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94D8A33C0
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720838363; cv=none; b=ZiVdS3p8dfoAFosvcI4wI9KCLfIbJ0QuB3eMUzsIXU6XLjSwfxSlI4abG/0+AA50A2Ge7Lwz6oHFnAXbg7JdkqvIG6fM/8zZfcdbAOy4zaFfbAooSfmGJUOS0BnHbdkfjLlp3HX5YyL45VgXkT5rYRn7CprKlaTfHEPIpWnv7Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720838363; c=relaxed/simple;
	bh=N/fF4QoO2mxDSkTAlVER7XgIQLRDqpqNlOYK7JVNVX4=;
	h=To:Subject:From:Message-Id:Date; b=esA9ie5yy74zZc3pdajhF8T1w5uoJC0hgN8ahYAM2wyP4MqSJiMYQwsC0n/yWK9gJohTRccmNbCbP5ieaQbmWrxGIEHnmzJyRuTjfpDdY0FpDt2VnOWLwWX3cioL/0FBhVpZnHliGmQxNAKML1JETFs/ZwmTGp9Hcqk9LdE8bN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1CbmvxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1CbmvxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11D9DC32782
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720838363;
	bh=N/fF4QoO2mxDSkTAlVER7XgIQLRDqpqNlOYK7JVNVX4=;
	h=To:Subject:From:Date:From;
	b=J1CbmvxECjvNPhZ5dhh0vMBZLDD/7mRsapXzNTjRKAmczwGeVeUaxx5ILhBTeskCI
	 Y7PhDOVvaICWAFkrExyd72T62HvMZLGImVewznZahLbojTEG/iUVO9ZXbZF+v+ipXb
	 oxaiYMGkvgoKrYwTecfVVkNcSaHLCs6t/sh2R45/OPouqQTXcnme/EYKfcgFtHxfoY
	 aLfuVPeUiZIhZNS3EN3CbA8tR1Jzr+V8jmKbvygs3C6uDuNJEnHOaZwNo+oCLn7zij
	 gmkMp5gOnt1xoUhw2TTj38ZlbwEj1FvQHcOdHvxxKOi8b6ZRVdg3RCXxOq2+2zDtnZ
	 E7PhX0VGlG7ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDF1EC2BD09
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172083836287.10135.11478353031232519036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d128d8e1a6f96425b46d893774706c034e121b1eb6c48206117c8dec7138fcd
Date: Sat, 13 Jul 2024 02:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720838362
