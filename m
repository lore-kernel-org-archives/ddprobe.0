Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C1B4A24
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752335394; cv=none; b=g7QnzD2ZuZARasS4EXbCOxdrl8e9Q1AeB1Xl1gtszVXMCRDHcHy4jE1vyxcy5dNSjRuKpxsrJ0LfyfHhTzEcJt9C0OecbXPzuE8V3f3HtrCATqIYMRgXaWdhNiJEmj7ZZS15gyF2fgw/dU8+yXNBCzJaYcGo44kuyupsqyG0fc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752335394; c=relaxed/simple;
	bh=+jJxkt+T0JD/8ZDIkFbcMNDcteUJzIcRPeERo+eMgqs=;
	h=To:Subject:From:Message-Id:Date; b=gU3iNUvCQYHu12N+/gWN6iVnYCixuoq4ao48hkrOor60hzFhzQoYvPh1aAtOQCgE+jOWybaPRprmLy2NN8vHjyG8SnQBhDmtUw4AW/PN0WtPVk3KSg5STsasZKWJHwdV3AikLsobR40MveUl7Y7IzbXzgD2QgL3+Afg//9P1uNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2EsTplJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2EsTplJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19FEC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752335393;
	bh=+jJxkt+T0JD/8ZDIkFbcMNDcteUJzIcRPeERo+eMgqs=;
	h=To:Subject:From:Date:From;
	b=J2EsTplJG9CiOMBRjWc5BKntGH+D5lgqusXwCITS0ptYW8JQfKJqwfNtLQMI9DKRc
	 FSRe2zkDHID8MLxbhFX1z9FgaAhOTiLKGmMK67Qc4p2UQiHbcm3fccxKzAdWgWFgvk
	 hlPZJHDsToylFyJjj+b8c1eNqGO7txdxLGXMpyiJws9j7oYdmZ5zMxfsRJ6lEcTvMv
	 SoxqkbnnYyTgREU5rV4sSc6Rt+NuMKQEln5iko5z1Fv2hePSbiQ/Yf0iD1u3MsBYiN
	 ww6l7VUw8u64LiPy5ZHM3uQ254C/gHqcMK0SrMhFYd+2hxSvL4rMzdNOvnAWW167u2
	 q3fSGyLjvcF0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE38C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233539357.23174.3771628272062892795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e97c1903f083d1845db957d90c68a2bdd86aa86decc27971aa4a8c14e7cea58
Date: Sat, 12 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752335393
