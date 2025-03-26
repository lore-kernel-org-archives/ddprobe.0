Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6143142A8F
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742965794; cv=none; b=JXyIkIceqyIn4U0EeLe6ROETwj3VOpaFODW2kmKzGtSv9QpnZASX6QwyAjFWeTxlbBLjwfTPX2S1w8IEFXzePPp16NJLmH15ypoM6AdtdJQihfhR+2lwYHKiKzsrsGYl41By/p/xT/LgY+d1Y0rYjX0UEKR4Vl8TdhQqxymtlSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742965794; c=relaxed/simple;
	bh=onSmn/cmGi7T4QFyLBnby93t0k/Azefu+NncQwCXZmE=;
	h=To:Subject:From:Message-Id:Date; b=nn9lMruDylnpyYyW7dPnRF5D12uOgGQldgGTvwCzx38bj2FQHVjcpvb3QX1scYQAsPEx9miB0TRLch4slqblYKYzHbTEkF0Rine3Yz66YVOLJ1woExLZ/TiWNrsnizeHLtyWA5hdTGnqv9ae6Tjlc0A+eWbm0MsqdEIKtyEbe9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHeBTLYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHeBTLYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C891BC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742965793;
	bh=onSmn/cmGi7T4QFyLBnby93t0k/Azefu+NncQwCXZmE=;
	h=To:Subject:From:Date:From;
	b=sHeBTLYfy0Z5Rh9pL9VJd+DI91hEIpex8gUTq7jxJxTi2a0mPlqp6N0DQjLi9mJmJ
	 8GXwXhRNE12PQCdy2BTDj0oTMyrGH/Ife6HDTjzOhwx2+ECoh13jzLL9Eklk+CCRYE
	 TBLhGToHuEeHaDEFDbHq4o1fjY3LKw6o8nhcLw/Zj6FwCEa5WAD/mC7lAPARMtU7dM
	 qByAuFwz88TIFW0rJvciADT/kHiVaeqvAf/Lrry5sVy3woLJirwxverRk+pW4m+94Q
	 qYn3k4MqtltTPwHswh7AEs28gwBLDD1SY/ODbxN9E+Mg+u7gzw9dxzNAivRGGIwXyf
	 o3Q6esR7m19cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20C1C28B30
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174296579367.20652.1908640917379591046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12841235cae0d9062ba2155b2f9e736355a85ae95af3b4d5124f9c5e5a53b702
Date: Wed, 26 Mar 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742965793
