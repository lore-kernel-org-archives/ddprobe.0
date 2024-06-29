Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D4D1DA5F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719667463; cv=none; b=HLrFQkPdkiuoEntiBuuiFm0ZooraH7TXH79UN/KIzJpngCq9qbprKF9fu9NLdRhiZPA3ElTGtD73Op+GzT7oRH6Zf+7r1oG5z/TmEDq+rpboY22vGZ06HlQTUDg5mTO1VdArRrpMy2pdAU8qe54GBFmVZUXsdtq6ruW8e7edz+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719667463; c=relaxed/simple;
	bh=hFfKQagEkJjvQYRCqaZPI1NJ/UEp+r8F2SbsMnCHt/E=;
	h=To:Subject:From:Message-Id:Date; b=fIHsV+iQufj/gR/O6znx+2EOCJzx8B8J763i40Xn8GqZyV30z+ZhGU9j8hgk/COwJJqfBffhR9Wu9ltGDVzxxMTjI8+DiPHfy4hw5EUTcL5vzlpnuIgM4KFDljAMJCPsHNyK6s5qAgZiZyrsK2ys5OFsrb3/xNjaurxvqokqjmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2JdjCd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2JdjCd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6A6C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719667462;
	bh=hFfKQagEkJjvQYRCqaZPI1NJ/UEp+r8F2SbsMnCHt/E=;
	h=To:Subject:From:Date:From;
	b=A2JdjCd667EbIEjSAZZK/KLtzZwbBmrx56F8vAZyehCKwUFktEjdtP3sT8xUn9HEn
	 3PP06KWOxgICuFf8ZmrEnLpOS+eRsKfrg1tq4poIuZgZgvr1KXHrFk8WeFEsMVf+qJ
	 K1YC3NGDRsxdUytEFNLWbOhsgSiPYdwduyu7VX1GeUR9bLCDN847LbFbsMbVB529GY
	 n2MitbgVK4xc7WLfMlMYb6NhcCyvD8SW657iDHo1GJRzhk5/9LOnuLTRsAgScVGH7b
	 ZsPTGIBbywlnM+/sPH1tZDCSE/PBApO8SrB2oDh2+o4so6fBxM11S5N3qX2558AOtg
	 8FYENvDqHtTKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C637AC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966746278.22134.3953387071095147621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ec4c6fe2121b66d83df2330ee2fa144600af005800f3e3035526d1e938ded5
Date: Sat, 29 Jun 2024 13:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719667462
