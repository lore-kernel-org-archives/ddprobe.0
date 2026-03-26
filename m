Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0D73246F8
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774533894; cv=none; b=USPR3m3B7CPqjnoU7iKaLPiXdpmm3yyw1EqEoX72UbpN03BR0yxQdzxy683W3CFRWdx8J8WpieceSyESRvQaYJdaduqPh22IDCl4kzaODEwLePZqDAw+Tk012Dp1KgioE8YrLqKJ/DP0y9W5ArRB/Bs1NbaW9qgcT1p3hxcWGUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774533894; c=relaxed/simple;
	bh=X171JgaDFmCKD8GwY5v0aCkj6shSN7nL8RnusWSCpBc=;
	h=To:Subject:From:Message-Id:Date; b=bsozCrISze6/dMjH+ACSp8a7XTHMnCBz7B3R8qy6bbK5UALLGP/7UxfWPunx9exoblQQsxnfx4+PLJItYN+HwBUWXgDN63y4gTVDGKXybubUtvwVzBMw9pKf3cZ92TXtFfP++TINm19f8a+FNk/YWJBR0mShZz76X0HO8fJbiIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0ABeQUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0ABeQUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A63C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774533893;
	bh=X171JgaDFmCKD8GwY5v0aCkj6shSN7nL8RnusWSCpBc=;
	h=To:Subject:From:Date:From;
	b=p0ABeQUWpiMitV1Pu3gGBF12CNMh1BPE2byYWhzZX8btwxMUH5aWocqMytro8ObHc
	 gCpQ5AkAichYNnGfdbHh0clx+ZDqXRuXF7/Exn0FT8a1pzwkVTFzJQLTGKn0iIIeYQ
	 rp4q61JEVtMgoe82pU9UQIfIl4d9SvdfkIoPEJxVd8cfpv4HHgt0/u0Y5O0NHuPgLC
	 Z9AJi9ZMmGNCiTKME0QMPmkyLvrLbe9RUwn4CfKkFmfYLU+59X8EWuE3BHZMh82tQ7
	 F2YX1IyhmeHNMZUIrxRsZXdZvJ7fD5IiPXZgpPanteXdGby4mVMu4nDRuZSD7ZRYTY
	 5dI1ciC9U0G0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9864210A62DA
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453389361.6616.3079866485579253243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eabfd54e995a62666abd3844f15e24c7f7693469a9d8af3fa60fd1723391dcb
Date: Thu, 26 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774533893
