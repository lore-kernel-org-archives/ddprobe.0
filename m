Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACF86FC5
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763700714; cv=none; b=Gc77SBlHpu/HsW7Z5pnEnnk53zkJO4qvZNQUAG87Z5tu2DugS0Kds6dwgGt8928Hg0wdrylSnjQg0xxTerUKy4ndm/aurTfAHj+m6+SjYMTWN1YUOch3ksbl+cj9/ZL0DhYuf+GCxR7yT6ovk7dRf4ql4yo7NUyBAbmmRnOiFJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763700714; c=relaxed/simple;
	bh=iBi2DcS3ZMyRN5Rk+IZthDJKb7hxlLftjwbht/rKLAo=;
	h=To:Subject:From:Message-Id:Date; b=DfIXn9/RkoP+ENiXqwaAK4xvn3ykct7YxDcr6F8J1QMVdWU5tFgiybgqsiKvJXRzUJur6AyJTDVYBvSIiEo4yd1CN/Zs1IJcsvdUfZnoQz6zY5D/eWLn1rG+qB1y2aQamc59zysPrSJQX/g6ajz3gt00rvREh1OSPqSOt/2bUnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/fxlM0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/fxlM0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE017C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763700713;
	bh=iBi2DcS3ZMyRN5Rk+IZthDJKb7hxlLftjwbht/rKLAo=;
	h=To:Subject:From:Date:From;
	b=B/fxlM0iw2eYSDrvbObZA59z+9GVYbfB1LI+PoWL9NVStoMnTgpr+1Zreo86JTKAk
	 frY7FnNQW1+nMEezTHA7hZ3MKLrddz7qmphgKFIdlbxyxtMoOu1mkPxq9bOavgPhyM
	 ulJ/FrgWl8ict4gvP+VHFK/tmEJsQbs43YG8jtUlWRjVqkdzHMU4x5PAEyBGLn2bD7
	 v8l0P3KAC+ozi1pWw7Ww0rS9rKb95VYzGEkozSrctIfrpoSb/9juoTeKJv1NvboHyA
	 1pmTX4PXj0rQoR2R8Tkv0tK6CIo2mfF8jlmbqlphPcL+6EHyfHVPpjWaG4J0ESwz2C
	 XDsrIyTLeDdVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95362CFA46C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370071360.31468.15913639152005817110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f2c5c7ff7cae80594418c9fe44a966fef5bd28758e3de4015a34e0ecef143a
Date: Fri, 21 Nov 2025 04:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763700713
