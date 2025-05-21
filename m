Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F881C32
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747864194; cv=none; b=ACj2+iM7DJe0K56Fj3Kar+UcTu8S3FlrO/5Gg3C93/4n9GPV+dybKyezuykTsP9GC6mZkBirAeZnkYdWX67XmZgHBWnCNQm8kyJnWjFbwcRW+99K+pDQ0JyYUOQ/SBeqAdOB1y5Z/B/BgLhAa+43a99iJRaWkump7YpC40zb9y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747864194; c=relaxed/simple;
	bh=snILWoJIaecbQmgG9+ucNjY8kQac/EI9IpLnfAIVqFs=;
	h=To:Subject:From:Message-Id:Date; b=h4nHq0s1x9q6jsPEbtx2hbfJcjwx08Lw3pz0+Pkw5ssAJCenCt9SogYWi8ghYqPEX/X6ObKGaOuh8LQwSxBnfvFe6PFYfy/roXxE0hDVCph7VKAzqUOHF1qAQuLjfycnFyqVEnAAfRahFH4BEkzZAah4CPT646KC2CIhhF0g8Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyU2UCW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyU2UCW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AFCC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747864193;
	bh=snILWoJIaecbQmgG9+ucNjY8kQac/EI9IpLnfAIVqFs=;
	h=To:Subject:From:Date:From;
	b=HyU2UCW134imV+/ZYcwhFsAGNsJjF899UMYu24TkxQfoMpz+7KH2rKPRm5uFJyNQY
	 U6sG0HUkCXSU0svZnkUct/67yh0OW5pvklYVnPn4IuT5A1aSe3oxqoZQStFnBdipnI
	 IO1ISceOExklGWh2hpskcWMGjRojCS33dlSm8+AsmMPdbUHVgL3Or92bso3yz1OVk5
	 ThKJ6wOVVsFORf6cb99INWjvpNxZedKUMLnPjhLWHXca1EjRCIZ9Mh2omQX2qxrIuk
	 /9vVTcKGaxDieCrwVmgXMktQbR/wxb3qv7LlFRNmWVj8xpJyoXl14x1uFE7F94Le8r
	 Kopt2RbZzFoig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915CCC54E90
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786419357.5077.8557149421515411865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c20d35366b2c1ce224628799d342d4bc8467f280d8af55f49a701522482ae5e
Date: Wed, 21 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747864193
