Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D5A1FB1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782033994; cv=none; b=l918aQ+R1Q6o/j9PDkKR39R4pWTs3Xs4c85Q2NvQsgfJxHrp5gPeaoRYNb9/Rndf+HYXC2HTbPSH6dT6YqR4tBFd2v1AiTMdjsAZJdW90nGrnCNb+3tfGWB0W3GhfKQuzRAR0hVWlgPVpCpfEV8ubQFv2cSeO+tVWNmrAWcQIcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782033994; c=relaxed/simple;
	bh=1WemAKWyk6rWBAzAAyGxE5JQt1NTWaqP0o6KK1hsNoc=;
	h=To:Subject:From:Message-Id:Date; b=Iusr/dGiA6mY4Jjs6pGNBbjtFB5Y8F3sWzJPakle4P6cqSo8AhDncNCziuskB/i91htSdWk2+3hcT9I4wziGihIY+i9mrpiw4YYW5/zgU0elIVsgFePE5NFKX1vj/mEg1gCu/Ilqjk5HV3u3Wc01ucw55hypg2IFNRzZUUjQXxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1/ysQX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1/ysQX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60EAC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782033993;
	bh=1WemAKWyk6rWBAzAAyGxE5JQt1NTWaqP0o6KK1hsNoc=;
	h=To:Subject:From:Date:From;
	b=K1/ysQX2rZUGaReB5tfXCAwO8FprUkq9kSs/ypCFIiVIsQvVDfbn0FXgxdVlbuXbH
	 ZB4W62m2tjpqcZ/aoeoqmT+ibpae2N9xK9mywj9qLUFERjSDFUzZ8TVzgzUgtDUoSL
	 GxIJ8wIHRyjzemR3Rmn/HM0p3EMw8g3Vf9FdQXQirqqahoW7Mc1Q98DXUL3UNyxiAm
	 3MzexUlamkElBGQHMZI9jc5lgPVHhY3iMT3kv0oZaHbTL44mwk1YV0zaDGqB35w7ZW
	 h6QT7A4Un6WEXzaymnXEvZjQ0xFspRpqRzokYyS/zHTEbaDGo4xizao+3CCWuea92S
	 /jrW+rCwaEPmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4508CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203399370.13811.5713555335488709390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ab4bc45fbbe34adc78b65a4a974f15e8e534822c682d24b7caa67140bb47e0
Date: Sun, 21 Jun 2026 09:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782033993
