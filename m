Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FB47625
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718931624; cv=none; b=K8tsX9lgkG6IXeE8kfwteVFWikFUymVEXlFEA1E5abjGN36cHPZGsmXlW8WPm9ECEbHpViafNrRhdGAAJdhMpauxjNq979T2DyhWP+ef1W87OjuvNgJ8F8KHEQcjrHKdNEVQOLrZJi4H+ezMbmJPISj+p59MhOCexYsr2SPNgRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718931624; c=relaxed/simple;
	bh=AtKpwoGx80ibmqbEiFhTv90GwKd9xAYJqeqwb+tDscI=;
	h=To:Subject:From:Message-Id:Date; b=umgCpRHO6Ajgz8Qw5qouCBJRYvalaGDdJEaFS9ejtM5AceYoRvheEhGntW8WhSNBBBQiv5doid1j9zTg+sEFID/dk0H3F9aGVJKIhSqZl+GS2/eFzwAJJHHShFUFKwqS0Dc1Ewydh0Iwo1453l1FOmC8J+VookRKD+/27NA3jtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geu7G9ym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geu7G9ym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 41ADBC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718931623;
	bh=AtKpwoGx80ibmqbEiFhTv90GwKd9xAYJqeqwb+tDscI=;
	h=To:Subject:From:Date:From;
	b=geu7G9ymuTfCyzOIMo8O+zuvoG5o05b8XYSmuP5BXBCMKLr4qnJwVnGRbKmMEIkHT
	 91rU0ZkIJDo7fsEEyf+ZH3dg2rvNnllZbwxN2EqxXMF//30gy1lpILVIotNl56ifXc
	 aCh7LS+NrCa1FD5kgXyakS+GBNjan6LxNlqIVj+ybXReeILNR7C7LMe+EQ6+riNUOM
	 cjWXGAfKQvwbu69EMto7ZQu+41cNwn5B46HD/mH/DC8tbsjIgZhqUtb4A5+ufeGeMW
	 BfNBrVVW7zyiG5jLhwjbcKtqihd4Ow1TsKjfOxy30P6LqgZVdWvoeAoBHeyiNAoUMQ
	 gzEGalOqTQVRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20BE2C2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:00:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893162301.4375.6883850543010887486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8799ed31f6dfc5b700ad58393106f6d092eb5ca1109761a6716d1e8d18afc4ef
Date: Fri, 21 Jun 2024 01:00:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718931623
