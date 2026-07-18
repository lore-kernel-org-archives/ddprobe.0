Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE901F0E29
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784410714; cv=none; b=EpGBQMD8kc8/bvUzyQ3IUAAx1FiKJ7BeRzFnLwLAHkuDt2Ip6KAVZ9Hu1hqKOW+o9l/yE/zZHk/FWQWv/e9bslmXuM6Aldmb9ZJjuI7iOdhSAeZ6gxm+fcnqmYqIhDp1QAk1j0VPA+zJkwfxZrcbmCB6Xmp01w7jFSXT84OhvsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784410714; c=relaxed/simple;
	bh=ggbiQXoiOLIgzzlTv6nF+VPFJjwCPRDyRmssK3iXwvY=;
	h=To:Subject:From:Message-Id:Date; b=pYBMyHCs72WtirV3/kGRDz/pJws0EW6MlZjXQboWoJ9UhpVtbrVP6T+7oLLXATMvRSkizfcw0OyRVKGhuZd0yfa4i89ObtCFqdN6E9ENfaytKbUbXmnbIUKNRHsiOTGllPTvxbfy9hTUr8gaQm/CiNB8IYcnYkTBP+zAoJQ/b5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0Xp38hs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0Xp38hs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6081C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784410713;
	bh=ggbiQXoiOLIgzzlTv6nF+VPFJjwCPRDyRmssK3iXwvY=;
	h=To:Subject:From:Date:From;
	b=F0Xp38hsdTtvQabfggBU3gRj5L6w5//h12KMug3JrbgoQdDNB+Gl2i9B36OwP59om
	 L/BOFptgerChMMdR3Bb12EhzocSPZ6T9CNy8Is0TC5slX2Rc2PLcfau/3wi9tlPSig
	 VNNaHSEaSTvndJviaQzWMMaPs2PRhghzByAJHzNfPANmrZydHzF8qBx03RMoMPU4VA
	 RZVHU9z0GWvntehq5XvCKNBhhcKOISQSH7OOFJ+KMenQriEwVNwJTE3q907XwAzc6g
	 QPNJdmP7r8QGUCOnciGWITCDh1SGFiyYYvirS0dXEmbRVuuM1ExqWGAPnKkZ4rgr6p
	 Ms7u2P0MIAy4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BACC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441071371.23091.4550187306712688295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70795a54c44f4d69a3c52b243e0602d613222c494899c1b40b92b6fe92ba0633
Date: Sat, 18 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784410713
