Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AD82AF1D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763677914; cv=none; b=c/GSv9BD09TqyUdabiouy56tB3aZ1PjdH2Kxc1g3geoeBL4fnW2q6F4USJm6hNuRAd4i92NBeBkxldWeIlOCeNkE12ptuda678ptR7PhwDqEWtCSN9b7XvXneHK/Xt+32y0/YFqr0dvOyeFQ3qkM7I4XkZttuWiy3rQFzEg1HbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763677914; c=relaxed/simple;
	bh=e57mJErIUGkB+Rnjan1nF0nAr8eR38iR8HFm3O59Ogw=;
	h=To:Subject:From:Message-Id:Date; b=ZdTesnEXzvLIkQecx31hSSqiJoHNIiWbr8oLHLqYEubT1XUdhG194hQz3HsfXVa56mX7vpzaeIzCMjL0tx6VdoyUeFFVtwZ1d2MiSqYjO1z402as1K1HfBIxej42hiBsux6rABWWmnjQyKaYRCKA7zVPtWzZ4tdzPXzWx7u30qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptF7f7sg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptF7f7sg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC588C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763677913;
	bh=e57mJErIUGkB+Rnjan1nF0nAr8eR38iR8HFm3O59Ogw=;
	h=To:Subject:From:Date:From;
	b=ptF7f7sgndWmrqXLayDSPgWygfejqdVF0+7Wz3B6TUAHePrzWiGifbyaieItgt0tO
	 9cd53F8zbnQ/SbtvaL8i2wj3ImqLEWpkJpxMsC+kP9JT274CTjGxBdPFge6IR+Vvqy
	 z0u3MnKVzdeDAEy65d7jxwJlZWEkH2luHhVAjJSnm+nMEDfMCAO7ED0eMuLDUXG6FL
	 WQLV4Vf+9f9xG4IOrpb/wysJrj3gDotRHoG3U5B2EZxqZZhcUhbbAXripoGjByNSx9
	 0NzY8Kwy8G5SrIjFhTq1m7uMdf82gTDqf9z8mAAHnyJ+csYWl3FELP53nPH19pYZIm
	 cKoDrXcz4htyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B1CCFA441
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367791358.18585.5276975873545295916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0eb7c25fd500217015e5bc50d75cf323692c50dc8a9183b5187645d943da58f
Date: Thu, 20 Nov 2025 22:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763677913
