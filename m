Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8421FECAF
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748264994; cv=none; b=AD9VKK5ZflEH9u93Nxdp4l3MNSg1DHriE/cJUrWEFODg71KWTVDwlMgJ3mfgwLFfYAAOV3dUzyhyDg6ym147zcRcOdfoa5g+4r+ZClsIdpTtoW9gD/nIuCAFiltTmFl4a9sDlWa0uIzIDg2C8eRGYOcW13E6/AXyPAcGxLfK3VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748264994; c=relaxed/simple;
	bh=c1TcX0Zxu/GTXruSh+aLDt2OQaptrPOWDYGZ3v7Li+8=;
	h=To:Subject:From:Message-Id:Date; b=s//sTOYN9lw0IhQwEuwXyKkkxHi3qAZatrocskce//IoX6NyrvG4Pg+DmM2RzFzfZGscWfgpJxhJYdMGZJB9pj915jG4NuvoJ58OFpNSZSGf/bWrgKdfcXi+NQjxQzJkgiuRrk4Iitj+U+t/mC7Hg7wM0s18vBJuThcdUTc8E+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SG7710UZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SG7710UZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D84C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748264993;
	bh=c1TcX0Zxu/GTXruSh+aLDt2OQaptrPOWDYGZ3v7Li+8=;
	h=To:Subject:From:Date:From;
	b=SG7710UZ+v5HKflkFpAx8EkYzAdJ9NpbTK4myZ/rAoNWhYA+KKR7FQ07+nqXs/Eow
	 dx773iFUdvdnlVGEL2jMlIgQ7UUMVo6RKLGs+Xoad6GMQJC83DCW4GDZ7cfwA7Zrzy
	 fdHZB9PfXQShY5+gqVgWUBmudXc2+XMr527Ku1HVHXO5kVdqxA9fIYlRIgJjpmLQ9e
	 7S31krVOn8q4Z8UwbZ0Iqpyx5QKX0rjY98XJfAsvIQbVt7EqRXSM7islhGqO8cs7XL
	 d5gWIqku9yIYMWc9bZqywwWhV2qolM0/P6eNkHdyb5KcWS45Ozr6AMvpWwVqEH3kpV
	 iIInvzfdf7HdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFDBC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826499357.25560.6126762044068337380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf8a108555292842e041f9c1a5227fec1681c6fcd9f2f1d8fff8e636d6d9990f
Date: Mon, 26 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748264993
