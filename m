Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F5722156A
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760273994; cv=none; b=KgZuszrh7sYZ7vJatW5alcSCwP4fF3X89ncK6wX23JfOhM7LebB9u/FwJBYlbCegUBjXM1mdIVytQmeZhrkpj4ulJe27hAoHG9iTV1XTQCb6mBYAj7DTukzbsiQ4Jy8TbGzbJhjMS7xbBs8ps1iH7jpt+T71KhxEaC2Umf9XPPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760273994; c=relaxed/simple;
	bh=T2s2pGFvo3l2g+3BAVPFzTKBB6334vhkXAKQ9km/h2I=;
	h=To:Subject:From:Message-Id:Date; b=tuJjwvYmt6+snd7nzTSuGGO0oZhahOH+sP1GSevJfbYx0CKe5gbBme6T2C0/mZ7boX486unjbRafek9LAak8XM5dA5PAm/KEHygPJ3Se6gx3GjSfGByGwqQ/mnZxrjoWaF+4JM/IzC28NEe1SXzUL/yTnHZYta6x1ca8YiAkD2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYQ4dd5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYQ4dd5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63C8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760273993;
	bh=T2s2pGFvo3l2g+3BAVPFzTKBB6334vhkXAKQ9km/h2I=;
	h=To:Subject:From:Date:From;
	b=DYQ4dd5oLKyMPaS0OrxOtNnMMElpbMbNaNXVzDVFvgz3Qs06J4RUN9JiaUwarsMr7
	 FaPTNSshq4WTvF09qEeK916ZxGyW5xmGoBEwCxsC1NWU4WWnQExEk3YRjMm3nZkgVy
	 x1hZvPk/Qkq7zlrBlssLEL+6POJcI6GIb0qoN3cFsNFOKpuzCKDDLUCtIW+tHN59iN
	 f+pnb+Lvia3DAM68rghQSvX/8eoZoAw9jEpuO8WyEn9o/l2GjtytPhZM54RLDTHWWm
	 4rPiNMj4DJUGzMMk4lfn1js4Z844emMxixDF/EpuVnBLCobLIlctEpBWgOEPnNgcOm
	 JvyvNEOeL03wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E58CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027399357.3686.13054700054357075227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227a8fed474ad72326be5c07d1598be7ae493a5a36160bbb9a492a71e6fbf5bb
Date: Sun, 12 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760273993
