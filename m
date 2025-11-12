Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F212C32936C
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762949994; cv=none; b=XOC98QyEU/dmmSmtTMOG90Pqs4n9EbuKUgqoAawV/ACbQNG96qBFKZO3557WkFY0/5Nnkojc/gEpKfkq5nJKuRNzeUikUCPKM4eYQypwco+Jfu8/vBzAcCclbeQU1aN8G1dLtt25O7dDNZpx40w5pECqD4r+PjEtT8NztHXN2rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762949994; c=relaxed/simple;
	bh=i28gkM9cCWfWdev05+UQGQFqPooPUKoH5QtbCyne8fg=;
	h=To:Subject:From:Message-Id:Date; b=thJS4DDjIuMpXGX25fSqkckx/J52NEzrVy/vH1sWoFiIbkvxO2gPNPTtr3W0Us3Sda2Zs9fS1RrTAqvErvUP7juIqF1bRc7aRomZZdOL2iTm7+argc43MFLcc9qRthXT4ylsl0JuC7tzBLbJ01+wXFMqgJZRqqkK0yg1wwLztQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I15Wzeoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I15Wzeoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E361C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762949993;
	bh=i28gkM9cCWfWdev05+UQGQFqPooPUKoH5QtbCyne8fg=;
	h=To:Subject:From:Date:From;
	b=I15WzeoaLrIvvVOjwBUjzymgAb5Zw2qIb56XsU1zE9hIdxuTaEy79gQEbr5QGfCl2
	 sU3xg4gvQfsdmOYXYrzSWZZPwKFTq9XslAmPmm3Z8crs/ejhYLG1RnYfT/AwTyyewm
	 MH6VsWqcmolciWv+IH0I4r09dvkXqABCsh08ngBclRZKAFSv600q8bEFRNJ0Xmp8Sc
	 dZ3rOjwxJELLQB/ZKnPWF+HsVTuYzl1JRCKMx1AlkGOFuhxw4LeVNkONhw4a4waOww
	 7wE28L5y63Nwl8Z5uU1zmTyi9j4UOLhefnTD1k7AfgD1fpi8OgHNjCQ4GV7B4XdWKO
	 oLI8MvmBqHxEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F3CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294999357.25289.7507283917836173016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15cd2a8a4d7129d3815eb7a672c331aa61b7a6082f86723a3cc60f2fe5e0b452
Date: Wed, 12 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762949993
