Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108E91EB5E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768531436; cv=none; b=UoLF47GiiJ+UZCnygttNBkbts7oeQVn4Bfz8FaisHCpKungSHxKvU5I44Du5cqQfuOhcznlE2ePrsvv//Ae+comCvXhI+6SVsnr+ev/V5dW6zXxTn/IfvbAny2hciRDsD6NnkbYZFvMRN1x/ecyO4k2/YJIyGsmlO39nDo1EjWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768531436; c=relaxed/simple;
	bh=2T9AHsAQDuHluFZhp/2j6Kut/yaOLfsStf8NDulUw50=;
	h=To:Subject:From:Message-Id:Date; b=BsVJKgkcGTTzFGYPb09h3fqkcc5fgyYJvYyHrPkXRj+poZSxalFtCHZcTOPJVeOl6xqoZTJ72o5CVFnUljGpSKmnIEM4QIZq3d8hFkJroRk7nkz2fJaVhrWlToA1TyE9RVovHQo2hGnZC1yEet3vsaZtqZKwj+In258K+HFYBqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=po9YFIgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="po9YFIgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A703EC116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768531433;
	bh=2T9AHsAQDuHluFZhp/2j6Kut/yaOLfsStf8NDulUw50=;
	h=To:Subject:From:Date:From;
	b=po9YFIgtvZVOWCGWRJbETAZ6/Ey34ihs3mw2DVLrftP4pivboIUrV8ybdzu9rfxXw
	 fAfQfx9oOxUp03a0qv0MbugmMio3mRV4TDep4693k/FyEkvoW0Vp6P03uOxncY8g1+
	 LtDPgQnUFu3zCghHWgrBkNMmfd2jOFVzBVKGUFnTgixkHjNLBnb8ZXswwZEFninEYz
	 1pvEvkz3SpkdHET3IUcT+aqbhsCge7k9e/Q6dy4+vlGQfAQWYyl8Px3n0Yvxuktr09
	 vWHbm7HFKr+/Kwhg4DNhkbsW4FDIFALi05EW7OZxNU3oL519cNOZBmZkUwm3otlIHc
	 XtOQzYzhcLawA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF4D4A5EA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853143357.1837.9837995296581525185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49a5a742315255b1eab40b7b8783eb05339dced965531b90172f3e2fa89bb31
Date: Fri, 16 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768531433
