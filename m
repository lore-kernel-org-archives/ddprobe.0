Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA60365A1B
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777215454; cv=none; b=BvSNtKxkxdGxckpjfCWgYYKq39F30KTizKQQfEM7gINvMzMqUQYKpBjAZin1W9cynJbD3l7MTrZmHP7/v80am/DdeXCchW2i/4zJaJHneQ2jIFp0shEpamhUOawJwEtkk4U1CCIaSjmcvyjapfGpyPI1N8rdEauHK+XIj/e/FcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777215454; c=relaxed/simple;
	bh=gzBMOg2K90HkyNyghEjvg+ZJMFIRSJAqF8pL1upv9o0=;
	h=To:Subject:From:Message-Id:Date; b=jS7iVSp3jFSpixQfG2t45ZR5ycZ5ERs73kXM34n8I4a5z6SvdzWAnCqhc3T00yi4ann6CRcdAxSD/YTBse+DpJTfirFFr7eOUe0Eknu/vP89vViSjKW9cEsTGsmT5mfuENU15xOx0ZtaFIcnqHpQv0Br6rERBGgg+wDZCLNPMlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ey5lrgK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ey5lrgK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB3FC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777215453;
	bh=gzBMOg2K90HkyNyghEjvg+ZJMFIRSJAqF8pL1upv9o0=;
	h=To:Subject:From:Date:From;
	b=ey5lrgK5gTJw01vJGMJ4TUl0a5P81Yz5kDCwP9ls8qZngAxXzw+CtEIqStia5qGR3
	 rBuTxW/GiRFO6QVP2QR7sn75xIfHW7oSzQY/fUMi6eKqAbmemjcFMjJ7m6Jmrm4icI
	 6lroMmbwMglOuJu5rNu5wz/oGP5zXlSOKEdKPAXXeTTRASGIKh4Hv7S0FDOQhhgr1W
	 hoGa8plOz0BgotkqCbX015OC/zdTUHDbwi8zIKcCy9DySKGHsmu29XDY77HwJnPjXU
	 86K1k/5WU1sWkOGGBO5sRh8S7IrcZ5Oc13T12Dau8laXMDOnbFuboMP+jwsGZ89zUc
	 3CI+eqZuWqABw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9B9FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721545368.22382.7551598595236389181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67ce39f3612433e6bc75a47eb9b37bc209e9482352afd1270e4799fb2c359a5
Date: Sun, 26 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777215453
