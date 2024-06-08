Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0D24C65
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717826243; cv=none; b=fnxJBrn2cONU3OimCaMg5Kiqc15JI1maAryP5pB+4gffdM05qILb+6hrCsZoZf+iCLxVI8GbhH7/KmLW6APBEwRvazbpLw6hHBC9BdrWHkMHyAZiJcIeKWJF2oR7HqtAJn+3HyAHW3WFAucZqSVlkFALgWfFE4hEsZpKbmKWXCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717826243; c=relaxed/simple;
	bh=eONtQlZDbNaJ0NZeFUp9FAXuIK0+fSrr4fgYgWJ/MXE=;
	h=To:Subject:From:Message-Id:Date; b=Gq/V03Jq2iJLummtlCAND0tPgN79nQj4IxVB9V6nfcHNqkcfUKDx1+yr9vGQjHdjlcTaPt1KM0zzj5MDkyZcH7AomnDz8VjpwHIurjmWFLj+F6mtGgzZ+qVHusEffF4KHewVKvl1mJ2fN71njlvRXgSTzR81kO9KgQINrJB2H80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFnYogsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFnYogsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34AFC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717826242;
	bh=eONtQlZDbNaJ0NZeFUp9FAXuIK0+fSrr4fgYgWJ/MXE=;
	h=To:Subject:From:Date:From;
	b=oFnYogsOx7maRiHfZqKUb+4HL1N0/GwcEgvTgTLsBzHApMOpGk6uMGa/dtyUN6K2d
	 MQuMzgZL4PBme3z7iy4FPWWevI1qBp1yRfE8cXuXwdHXzKg2Xt6QHp/BF8h3QxAQg9
	 dduOi3O552PESpN2Q5dXmudg/gVWQw6l3BxBg5jZgmsYeS3+RPuulFBXBtLaj1Ii3+
	 hoc22kI2poWLeXGwXMwxndmEC07FkTQ+kDRkVfZpezM7nxV6Xtu/NZEBiXONP2uCQd
	 1lxuiTKHiNvu9XmWuQdKYETxHFbehv3UXdjjlnBWHegQrq9lNcxkwcqjzkAt+lyQBm
	 0nYN6EnFgEGYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE51CC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782624280.6385.320747087867544725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7e8e423a6788c7164ce0e05cf606b1a8ee6a5c7ff036f0dd1e98fd364a42ca
Date: Sat, 08 Jun 2024 05:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717826242
