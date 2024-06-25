Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDFF1DFFD
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719300803; cv=none; b=UfelIRztOACFcZM5gPoVNNzFc9B5IXft6PW9QgCQXNmTFw7O9626gNSr43ijP9Qg4F7hgMdQJ6wsuZDVrkoiq9gOazTV4D4/SHD6TiuADX7mZu+16aK3JTLPgkvdSZzPBCK7ajn0b06qFT6ItIkGkdrRDUnzPCnX0FFMLSA7x2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719300803; c=relaxed/simple;
	bh=RUzZleeo4n1fBwRGHo4nnewf8lZDoKq/Th6k5DQnLuI=;
	h=To:Subject:From:Message-Id:Date; b=GOqAj+FqZW4sZJTR/pHy8sl5jpPHuH5zYtYuemseqlHEy0kmP60v6HWbOPhZ4SNjYcp+ZuTsQ3MC32oa83Fs5F/rrUvc5QXkRqNYZpoStUqNVucSiF3XF0hsEdRZwKv3/CeqOXNIo69yd+jiSkIGPdOFpr6vYH7/CDxitSzadlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfAH+YTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfAH+YTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D1EC32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719300802;
	bh=RUzZleeo4n1fBwRGHo4nnewf8lZDoKq/Th6k5DQnLuI=;
	h=To:Subject:From:Date:From;
	b=CfAH+YTw4qmNVkcjuL2C2fupexmh+oelmjShTCpLJlWLSEGYICJbJjZRAVxVAGYc+
	 3Xv4Y8N/A3bP6eNoSP/ljMoB6rp2+FnzGk+3g2HiAYpDzLywcI57kgTBalsDRecjda
	 Y1aDA4sHr4KeAlUm6loquu/65sEav9R0aRRYz3U3djJs6e1ArobIO/voKDpZ9L9iNj
	 g3PJt3KuLhmMKThwAM64wwFXzzDOcfc2txWs5oTbEvKrH3yqeSapX9FR4KWa1BHAmG
	 UmFMVFg0z4Qa2qZFTOypN591zxh/7pJ4+8evj6724hPYpjU1I/yDJZ6Rhs73wwMe4M
	 mnOgWP5F8fKVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD531C30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171930080283.4051.17070922559375566215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e09e5acbfd0cbd62aa0068207caabcb44ffd61c16f693cfdfbf42d92d9b5703
Date: Tue, 25 Jun 2024 07:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719300802
