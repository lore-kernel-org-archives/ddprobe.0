Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCFE2F37
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749398994; cv=none; b=iGPyqZaKOuIALuY95AZIc94PUVsedoabp1DWJiVgvYwYHTN/hfPKAqkmX86pyPHC61gn4t9cyi6SD9raB+OZkW+paC2CB+I3D1HvMD6/gywuppnu3LiwvsSNALsB65pgTI2ZfbWgblN13yqV7NDB9WPCrEh+FcQilDytVXgEKh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749398994; c=relaxed/simple;
	bh=d2FmqofYG9m6nR4lnvFXp5GvIXglWbUj65HyEuDT9v0=;
	h=To:Subject:From:Message-Id:Date; b=bTCkbxHpsBgnaACSnUu9qySlC0A7eAFHwK8jYapmOYFD+2OoPzCy/7FvcME08HxqH96RiBAi+ZoxaM1Kod9FpKx7GFMNY9xgydGOYtOuLiVWWroDuYJyXUPfH9NK4kAcrWSoHH1tUCEr0DFsYUNbNhBAKYN/GVhlnMrFcnC+/jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzOIEJ9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzOIEJ9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EE6C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749398993;
	bh=d2FmqofYG9m6nR4lnvFXp5GvIXglWbUj65HyEuDT9v0=;
	h=To:Subject:From:Date:From;
	b=LzOIEJ9Ymk+jA7J+8EQx++BzJ16Le4OzNlybvQRkgubopwwHxYdcSHrGG4uXGnlRw
	 5334s4+GdBWEqcNQM+fUdbMHtEzl7jL0QlkxDQyTTVYnINFZt++g8dkZy7gAN2IH6R
	 oxCEDWkcohSmKcq8doe8N4egA9eLTwHEmCtv7/FSW/mvwqCbMl1TwQulrXgJqWPtj+
	 7pUdUs5/s21Wrq0B2r3hYFeft964Uq6KCyhV6LTs3+APHRDr0GZDFk246HmSi7WxTf
	 +SmqJgTtWpUMX/UbIWJ9Y3D8WsWSgdmd6dIUyEqWqqD3E1ibNFc7ZbWJ7YUi4aoreo
	 G2fyRasEIBhjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94186C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939899357.23719.4170263459779115969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d548c4269bae5fa7895c43fc342ea9977852b23f04b55902f4ef13d1fac03bc
Date: Sun, 08 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749398993
