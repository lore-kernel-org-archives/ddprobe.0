Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA6815665C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749876594; cv=none; b=cHuvhq6RpYDqg8TOIYHCgx+6Ae4PDWY1LXo+tRHZYD0Olhhjv75pDXQAH/4WfvtsrpmvNDvWYSe9fjgFQ0n355b/TBtpbjnwjOxkgqA7ic8LJMI1e9H5mpTp2tVX7XlQSFQ5gBu+o9h0+2l2WbBLNsYuG0oevXJU7tKJRw3cUgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749876594; c=relaxed/simple;
	bh=goiAr4IRvk3N84co23j4jJEYgaQ0wzv3/R8oihwdm40=;
	h=To:Subject:From:Message-Id:Date; b=L+nYm/Evtzdgg/rg8BdW4uQ7k7kuBd4SVKmmgMhCTEvBiBli88SI1+vi0V0ATzShiQ4lVs23sqanDfKg/Q7YVYMgOBT+vdKZoMA7WXGvhTToVzNFdEn86e1iY/oR1Rj6o2Qop6IPpzSBuHc8tizk3gl4mG7bN7Sx6GbZJKectdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=am4WhxIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="am4WhxIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A106EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749876593;
	bh=goiAr4IRvk3N84co23j4jJEYgaQ0wzv3/R8oihwdm40=;
	h=To:Subject:From:Date:From;
	b=am4WhxIgWxBwKHm6EvmIVUHjUB9H0ZW+afxJRd19Xy3mFs3OVGBBzF62k/IRCrUlh
	 IwveyBjJx+szIUhA7o2oy5qtaRLN5F3OuZHo9MbBGZA3bE1avaF7whGkpnPQQI5kxs
	 83V7ZG6ttG7IowcmZ7wZS3KOBMhEuHZc2FcmEfn7DnNE5kIcttbn9fBOx/RryuRyXe
	 t2Xk6MZKB7g7T5Q9XeARzByf1JbWaKdwqGWdHxlDx0gS7ySuufkKbp+OVUMAHxhuJE
	 T0FIs9xMZv/TAKKlIX+DxwklY2fc0FsOEF6F9NAyWgiuaXnmVf1p8RngU/5i5LURLj
	 K0R0BFzAWCREA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916BAC71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987659357.4669.17692625104324200767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a663b00c86e45c247f144033a5146b399ffd21fc3a6fdc909576a469a16d5f
Date: Sat, 14 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749876593
