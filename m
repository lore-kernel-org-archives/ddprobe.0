Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245D8500962
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768742034; cv=none; b=I96fnX2dCDwB1Ox5jxCtd3BlNsATqkrwoYxLk7YWSSSP6ZuzyQNqbC3vE/9e41ZK2hZNhVM1G/TyMuNRxY/fRiTvLCrKhkimT8PHg2LlMP0pHH844pAbINSUhI6LTtgePgGbRyAqgjlnEwaSkPZRkiIlpip1Sr+a0uxCC198H3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768742034; c=relaxed/simple;
	bh=EMc5xR0kAU8KigAzuAFFE7IdxEEGoAexh02SPcBMd4g=;
	h=To:Subject:From:Message-Id:Date; b=H7xGO81KHGDvKY9mYDCGL4+WQW7Tx4SbOyYP6B4+hTruTJL2KwriZD3G6VUFZR7EkIxMFeVkWoIREDVNJMt1WIsmwxH3olsGWbpU5/QD6rNICUgSt0QQZdiOx6xo27jedSgOhHAE+CCpY35HBEjGISFpuavf17zAMAOGy87/Yy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQn2kFrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQn2kFrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D64C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768742033;
	bh=EMc5xR0kAU8KigAzuAFFE7IdxEEGoAexh02SPcBMd4g=;
	h=To:Subject:From:Date:From;
	b=JQn2kFrToloVpvGyiwZaGpLLG39UhYmZI8RrwOM1tFcdt+9uItpVt5cGG2YbZqTtb
	 CCLySKkIYZ/Csl4NS6PWr7q6ETXIYEt/tAuZF6XdU83KDAoOnwhH/vV/vxw1yz1g80
	 1x1PRF0p1icPe8MgROcfOPjJu8yF9lL9ObkJRc5n0x58KseMCbD1TAWN2jJpoDfyGR
	 8s74OY/AMd6Ha9IUbukQvBFPNKJHxMpwbnVQl0p2xEzvlZOdvggjJfRZbSsVzH8gZL
	 /6SuK9o+Pc+4QoDdB3juL0HUE6ZQFciAC7wRpE2nBGtXvSL5xyjMl5sRCX2HK+bjHM
	 kerckOfCloi+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2ED4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874203358.16953.3415699877767480388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70734c8bd4205824584740a583a2facd46d037e7c663a3e636e7b37d7b68cea8
Date: Sun, 18 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768742033
