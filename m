Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150C81A9F99
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756873794; cv=none; b=iEPB2MIxqmOb0s/Psvo661PuEJQ91TVIGB3PyIY12PWjFfyCQFh9lAOvHGFf9TofKjarG4LN+c32Mo6z2EoEe5FNZg6/OBj+AsiFQcO63QDX0JBWkEBHruzxqGNelhtiQSxVlH4HHgoQABxnKrIGcMxykHQk9l04+WrrKPcC6Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756873794; c=relaxed/simple;
	bh=BFzkaMnDayQxGxn3J6Y5o+f5TZodUxFeg/WK/jfWMcY=;
	h=To:Subject:From:Message-Id:Date; b=ZyOOEyt1CBfSk0TalGuS9ASLdlIC0HyPNSJs4QiHgsKCfaK/NuOkrhFEVF7IHm4BRDk3lkMfH4qJc2GjMv9AgNY/ESizOOIoCh/Co8q7AY9nLUSCbLp+R5Oa5+f6nL9QxX4gvcJoDvgzk0fHR4aqLzvz8fIRMxdoEF4chBA6GYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b50uV9os; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b50uV9os"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EECC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756873793;
	bh=BFzkaMnDayQxGxn3J6Y5o+f5TZodUxFeg/WK/jfWMcY=;
	h=To:Subject:From:Date:From;
	b=b50uV9osk8mPjnJ+wsKn5WOEkdkh+fLOITIIQF0kG9AZga76AY0+0xepC9/cr3STE
	 M0OH7Ad9K7FpBt/VcZpQkPgIl2MZziY2y7mvhBUBu6VtJVmpAuRehV2QGwYBtFV6bu
	 w0TWsK5yD7Q9vCPTOioGqxAjrul6LD6oKJNkMHyIi8Nj8YHwdIad7Q9T2Q5g2SSpvJ
	 G7OkX52weoF3UtcsQ7XUW2hAIpv68KHt9dpA3z7G2MEW0w9l0nZcJ2VZJvJWnexmNv
	 UkcPrYHpF5bPjGveyIhwME6Tef073EfUKCBi1JqmsZGtp/KBejStHlEUCv/tvUrRxl
	 9BX/Dq+E5qFLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B2CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687379357.27596.15975245286322228733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9dc8fa3484afb8fe9d3dbcbea04d7049ac871ff37f31496c3fe236ba105c7b
Date: Wed, 03 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756873793
