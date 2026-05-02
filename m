Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3B31A9B24
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777747654; cv=none; b=dRyBLg8fi8MbXgO8r+JFKkUw+qAFGxd7MIigarycKSmW+cHxB7eY9EyaQvrEZY6BDpNkK7xjCW6QS69kwl8uuhiJY/Dm4iX+DamWFtG82Jbbf71khBvr7F+tUgXorfIxcaHxTlGYuSl735DMBLcugcU3gq0n6HpegYLGKhI5SYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777747654; c=relaxed/simple;
	bh=XanPa7a7mN61H/T8MIcNYCNcNi/SKmg7yE/NVwFe5EM=;
	h=To:Subject:From:Message-Id:Date; b=cT3TPAeV4Zz+Ff0s8qJOO3BJ+PBYHfPqszukNKKvdhr6EjJ7i5qBmoWVSG9hn+19WSdfu0l0LkLigFkUInkM1Jj5UQZtGDMOOFEyhj85TGJ73TN6RG42tD7ymsexQiKbIKfjeBhIVJDVF53juf1i0ig4HElaoexZEV8pcuz5VuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyJmvi9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyJmvi9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA0BC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777747653;
	bh=XanPa7a7mN61H/T8MIcNYCNcNi/SKmg7yE/NVwFe5EM=;
	h=To:Subject:From:Date:From;
	b=nyJmvi9lg3YYp2alsIJaThaU3x/DeVe+w06ZsuoZc4envkj5rUEISvYzjS+tJ/WhU
	 3xceiR3HcEiGvKwqy7cmpG3i+sdL7ELleI1bXFbD5nn7OMmP2J4GuDnheCbSsrDcuk
	 0pwjqCiubn/k5PPrAxwT0mWVx0+/+mbgSWH+n7pKtBJdE7JfrkXuZ76PpPJuAAvkKS
	 +/QFfqbBhMmJn86K5/m5clEGo4jeQO+i9aPQHj/hA4+13zeQrWzYs+ajAw7VSqxNvt
	 b2hb/yJ+OKAcvSOuWoyH/HX1Lq1bsLSqNm7FdDd1Pa+nInikDaZkqE3esoq0iatC6Z
	 TEZjAFmfNsIJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC730CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774765368.4623.740325506309189061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746129b207fb6b550afc03c482c4d4381f6235ac9da6e9fac4c74c64f0866bf3
Date: Sat, 02 May 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777747653
