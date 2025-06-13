Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C71253B7B
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749792594; cv=none; b=o+zylp8Qc3qsdAagsB0arqbPSOg3s03OXIf4SiLeEB3+I051/rHeB/yvcoXgjp3iobLfsqTetY3EpH2sKivbP8Qi4Y1bty1Nar8xU3CrHd1wgYaAL4kWLtldjo6vC11QOeQN2+uxhMMS1z3U3ag3fsD+Fzx31iymfBavdyr56EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749792594; c=relaxed/simple;
	bh=UJlft41vo3pWG3lNyA+4WpG1vYnesXOF91ZFn96tjCs=;
	h=To:Subject:From:Message-Id:Date; b=J5GYLlZGrbiTAtbEcfwTcvedeDSRSMyBdY3eRWaZ7vahgWQvVW+wHSBri/BFmaSJecgkXfobs62x5RNb8vtWwDUFbzItom371cU+qc/q8p0fCcC02cAacp5Z5H6Uk34V5Hr9XCrm+AePGP+G27/62kScjsIT7MN7ZVjM4bgt5tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQ+6egyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQ+6egyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F40AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749792593;
	bh=UJlft41vo3pWG3lNyA+4WpG1vYnesXOF91ZFn96tjCs=;
	h=To:Subject:From:Date:From;
	b=QQ+6egyJT2mvoYCLXl337ZlVdiXf1uArOeWnjPGr8+737HncKAhSwrmBMoRh7VyCP
	 3gV/hrEzY6XMBYJpBoD77w670mpEnxZIhmJpbL002uSqdpQKWxxey+YjSctXj2ffZ1
	 hFu/lw1wcIUnBU/EYuwfNmoV9ys24xx6eeJ7xybpUb1kLa+3x7UA4VepZFEl5XctNB
	 bZUkafqXTK45pNDORL3sh1O25MCGnG9F/tO5ryF3KXe6WiDrkLyMHTKW1MF9WPO4As
	 MjFDLXeKzO7YFZVGMj8UN5537pKYBNC3v01gHwCSkApfWd3UMdc2upRYMI/+8OwpJV
	 MfM+lZXF0ugTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA98C7114A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979259357.17659.16762220639408342477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc5758095c26637b0234220f2d2859b06b6477fb75d3d9b3683b8096d48ebe0b
Date: Fri, 13 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749792593
