Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093682566
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752553194; cv=none; b=SOSGmPp/hHEPVUjbi1HeWfcqh9FOvrIqWRB4BveAdYIiA0VgMtnVHPIfnyr6gdDDwv8L6zeDfazuccvvHTty8Z3heIQzxtLF1E9FiQ1XkIhSNx0JTjSAM8htJZsaX9h3KUxyhuqJU8wGyxXQKTjxx2PIgRQO8z+ao3sCR6RlkDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752553194; c=relaxed/simple;
	bh=Q2JrGieWw0ohB1ebDUa4EE2HMCTXe1pQB8OS/pR39o0=;
	h=To:Subject:From:Message-Id:Date; b=m7DnTrVJbMS50FFIjZDR5aqE4H6jZVwsGjQPWdR1WFVsAHYs/n/am4VW39dWUaEEcAhH9yKDV9WPrecMriRIX0ALXUpIaNZi6yF8JDPjDZtH0Hv7XAYEwF4CV4dEzK7Zs6co7pwls5HGQc2Zgy0rJqd6lPekL+pVWdbwhPoiFkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/m5pyex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/m5pyex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D3AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752553193;
	bh=Q2JrGieWw0ohB1ebDUa4EE2HMCTXe1pQB8OS/pR39o0=;
	h=To:Subject:From:Date:From;
	b=f/m5pyexkEZ7/fV7vtSJQD/9U+f/4HQreFUoqKaZoC0N01HgFtmFZVRXU7wrre2Gg
	 SecqW27ZvhWyNZqTPmoVoY+eHdWp43NOn4kPo/svBA57YWwdqkwkEPGpvOXuqM64Zy
	 OkimWkJckXGx9WNm+kiWrC9hFf4Vy4pBsHWR2eRi/ex+hpc7jdvmi+m6v8nkI7QMgb
	 r2OVUWOfapulctlLE57kJbBh6wkcK1fLEn5bDAp7FCJFPwl4JeKhAFNE8ja7mjeZXd
	 OPplW8NBTW9gGc0gzH66KEmz/JuMeIsO68TzWxyqrRr+ud93EbCZhnLR9tC+R7sV2i
	 9E61Kw0PhBLdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90462C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255319358.11640.16748045028090517123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77d45453d1860f8fc4cb4f56cd2ee9190c74332e1479d1b7cd60b0353c8160ab
Date: Tue, 15 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752553193
