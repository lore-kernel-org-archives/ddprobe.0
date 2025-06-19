Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C3C1AA782
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750343994; cv=none; b=qVdLVQLzY04p4cT3KiRqYtVZ4KUcZU2YYtKYtTkWwmsff9G5+uoMKuqWLkIRHxtRdEWD7nsueUnCHnErXlsnL6mW91629GmNlKAxJxRGJ/Im9PLpTpfgpIUs1JuhzOShDkR9ECf4iOPwltEOad2ghhWTgIXHBWzEebuhS195XnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750343994; c=relaxed/simple;
	bh=qCpXWZ3Y9eRHMTuHvsJCGBXfhzT7G9mvAJDP4pdU6dg=;
	h=To:Subject:From:Message-Id:Date; b=uAHD1D/f4wdxrDRmJskwD2phJ1cEMnQfaAfFo/KuL7zdG1JQU7REG9QpiPSygrrt07xqdKzKUZfYv7SZreI3faLWaCafzZP5+xSIAza6mMnQroL9SqKyvtpFT9TaXh1lnSCJE7oeoQpkaeaQFn6IppoajD+ylrUDk6CUUM2wp48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9d9Yi/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9d9Yi/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2077C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750343993;
	bh=qCpXWZ3Y9eRHMTuHvsJCGBXfhzT7G9mvAJDP4pdU6dg=;
	h=To:Subject:From:Date:From;
	b=a9d9Yi/ZWyYa7uAcKYKtGGsS3EE5ktPFt9GBYFkmHiSF6ZUc8dMzIjDq/aFol7Ujp
	 MuLF7FH6Ivat3FMYo7UL8vPeUcS232HatkzwMcoYbLZ7XZQXuOIjgQfcGAeFvkIDiP
	 ulGYdxzCVdaJgtd8N74OkyMMoWWbXGwLN95ygnpJto5kAWGiDJTOGhhMgpEXsEryqf
	 UAHQB2a2Na/LMAhS00rMXM1m8HqtgnvVQYnT5z7UAsF2rbvuBokeCbxGLGItbK/RgF
	 zaixum7v8AUyXBtNlAFAOS6hYb0PUbr2ns9K1wDhLwuunuUI3f7+821k29AeVue7F4
	 7xJwhaxnmdRVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8F6C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034399360.23561.3107365860780486241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d470907765800eb52fa55601ccd624cb16dd47bd87d54f33abe272848a4a2bc5
Date: Thu, 19 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750343993
