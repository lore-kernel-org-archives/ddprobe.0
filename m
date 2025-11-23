Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2503814A91
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763857914; cv=none; b=bC7VR2hTLfHSu73DCe5otxjishrn9gWY1V4iLldTmRoMlAiBg4CxJ7/cfAoqBl3TlnoLETZ0YdJYDRS/+bsrVWpTyOr9AWf0vCn/nkMlxnMVE2Q+gw3WOrXzFTKLPhTEo3eF5tAtQx1jCDimFRTkAgYp7ojEkCcT7C+nwgxj2dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763857914; c=relaxed/simple;
	bh=f/DzLn98GJgHfvppl27Sf6PZRADx8MP4rYyv9xNsBGs=;
	h=To:Subject:From:Message-Id:Date; b=PULSPsCMMpDGcLljVysl8u6u9ignC5tsGrqPQM7mTlFkPL69HxyKcSEjYNNnO5JkFO+70yvGrXa4YzvC0VYk+dCNzGC/sUGUo0rkBvkAgvQ8HwxvC2TS8puHAZbINl/KNT2QvLFAyungFdFpr3eALm7dNXQQUUGTyb9YpHbF4gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DF/feV+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DF/feV+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A62C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763857913;
	bh=f/DzLn98GJgHfvppl27Sf6PZRADx8MP4rYyv9xNsBGs=;
	h=To:Subject:From:Date:From;
	b=DF/feV+CGhSMFB3rrUSlMulJJS02O2lvERlEq8ZG08sAKKASuNYw6pBGdYy60ACGr
	 8wx62FZXsyDYK25DrYZluq3z5PiQqyhc3enRE/7GlQ9EfntuA0Tp9XA6f5R062g00n
	 tOmAegtfDn+Y2Smo1NIjJ2075issjOZJNaKZ0Xy3C6p9QG4REOnhtO1unCf+RhPQ6S
	 XukQBtPzBHSoYp22Xiqdop3J41/fzEQDoRv7/U6FzZ+5UWJUbkdS1mZPakM3MIusky
	 BMcI4VNMzAHJvUePgoaQLQ+r9F+WdIi66KAcBSPE+qu+4fYHVA6LbGiLxH0hSzDOSH
	 POzW92XEfA0jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951BFCFD312
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385791358.19196.5799038241893925513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 488b77f09c81dd71f2b4e1361bf78d029ce319ec12082e3fe2bbe6cff6645fbf
Date: Sun, 23 Nov 2025 00:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763857913
