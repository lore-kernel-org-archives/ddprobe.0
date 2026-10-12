Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610581A3A80
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791775234; cv=none; b=dLSure2aC15gzn4Lka3ZGbM+2tQlQLNz78NUYN+6MXQ7SKDPumWUeqTor41ELrzVnhvnqk3hkFRGZon/LkZKLTmPOweQPFKRRXReQ+Ko5FdTwcqjOchy5UsnP1YeG5BC8ep4x752dMPylmQqFGZHmilObVaU77M4hmFBWm02YB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791775234; c=relaxed/simple;
	bh=JRfU32pHGpmxp7gm7yYxKqURpZ5wEMPdNOvz6w6yV4M=;
	h=To:Subject:From:Message-Id:Date; b=LXVUmjSmeRZBPrsaMMeY+yi2XMADv7yL/x/C9sWjfD+0PwmTt3j83sWxIOZeHQDU/f405/AVuDwR43xaeELjCHHvA7S9kqSF586F90Si5f2djUwxU027Xgl1hSc+uID10Gp+lUFhgd9g1i5S9ZliIyAzlLhNxdVMFu5IB1jLYus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ej1M6zPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ej1M6zPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA741C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791775233;
	bh=JRfU32pHGpmxp7gm7yYxKqURpZ5wEMPdNOvz6w6yV4M=;
	h=To:Subject:From:Date:From;
	b=ej1M6zPe+U476bvD/y9knUCHY0LAF4OIX6Vlj8EQuDPfKc/0So+rr/fdJ6lZqQ+Tp
	 Ocq5Yd/D8pfxvOeZ5Pi8OXBITOmkh1oTUnNc68F1wHd65Zrm0l+FvaDh1XQvzOyZMo
	 cPgigK1lXoYD4cid/U7rvHWFkiPia+lUnryo1jHixn2KQTBTPOdHDPRJWEWR2RSm8k
	 LnU5RDQD4BS+yDsE5tRSqexG2V4Zovapg38ewB9S8x3qVO/IUq0Ki6aIwPignCovtP
	 3cKb5uyH2wzXKTvBrCTcyW/Bd0h5FsZV7Pn33hEzavYYpcH08ueW0L/t2WjiFn1EXg
	 s1Um5mNkHCSbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6921CA9EBB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177523368.6772.6316201793552804555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e119a71bdb12c671cc9798418e9988fac9507da610643c619c31e28a9eb0c0
Date: Mon, 12 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791775233
