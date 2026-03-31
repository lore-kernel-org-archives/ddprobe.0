Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5E229C35A
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774928094; cv=none; b=cf1nZgolaKqQIpJXcYZwiEc0O+KQG7D18ziFAo8UVCp8gLqqpWaw3SR/FA+53+ZeNXRK0GLAuBO0sSjU4R5Wcjfn4APj7gi4Gok208FtYf6MkZl89pse8/TkN0CYrBzFkV9zgCg/lIsSvuz5HB0DUWdlhSihteuRE0g8h37jQ1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774928094; c=relaxed/simple;
	bh=hus2q3qdVBBgks6FC+z1dAeE8eyYDyGl+Vq1VyOe3wg=;
	h=To:Subject:From:Message-Id:Date; b=sMJR/bJUBqvbudeHbkvUQLgRLB9FhYWRgl/OF+1PN2ine48PgUTMMvheVlKS5jhBXeBzECPmBJy91vKs68ZLoN7Q7tcTrJCKXolsPwvkhXc+GLeiIwCJPrvTkk40J+IYXAojZVARUtarXgwZqQCuqSU6+9QQyqXIZKCxU1H7u6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoHAnqE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoHAnqE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24B9C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774928093;
	bh=hus2q3qdVBBgks6FC+z1dAeE8eyYDyGl+Vq1VyOe3wg=;
	h=To:Subject:From:Date:From;
	b=hoHAnqE5LVTB5BLspCEzRSzC9g7soL5Ee6aDNTgXXrXT/HfYRfG1UEsU3X0bvIEyp
	 YMaKWod0hDz2pwNmBsS1yhCxCseIhXcbB2c5hRRrgxq9DCyFp8qjR6TLqahu3+sXbN
	 egIbdTNOwmDjI7esNX/FQojm7/I1uHeEWAJ13ojN4i+8F+0mjbzxdCnwrWS0EI6WuN
	 DMY1/HMDtsS1bbr2PfsZyFJtW728mr4wREtodBoBp3bWAtw2TvwZRuEr2hNIM8G11+
	 P/fJagp558bRB0ENgAgrelqC4OjX/LEFFpJuB10ZyuX95DH1B/OBBVNwxG9RS5H3L+
	 mWlYbRQ+DjhSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C151061B2F
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492809358.25846.16485053063401443370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980e054169387695a3f11b5fdf6a37f0b916cfe858fd4c8b9728e5a7ff9714e1
Date: Tue, 31 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774928093
