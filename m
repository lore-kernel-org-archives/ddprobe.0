Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC23427A06
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781604994; cv=none; b=kwGsLmKwjWKgwdHqPltdtxURXvfy4b57meXIOI9US5Eq24ULJH/Q1P4kYJ2s5yO7qJLtMuZzjgoBAWvHp39BkublbsoYe2VVRfwR6ZV5HzACDX5aGcTH2tkzlqBsk8mpufXD0o3JTiHJhpjhlfodpHdzTY6F2rMF+N83txTunS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781604994; c=relaxed/simple;
	bh=7Aq9OZxrTwYOqyGxVvvFe/M1Ci+NpdwN7yNfLhvbyYk=;
	h=To:Subject:From:Message-Id:Date; b=CO+lh3XZn10wMDvIFo88Ma25Bs5NpO4HuciOpQeEppTDwzKldc+vTUd4XpU/Vx+8UVRIW8esNDJrzGJXXLfERSNgwpK26DZpssQJzIjmD6UmjfNBy/+vSED5e/0vV3eQkKMKJvgGpcKCeUvUtdM2ebWj+XkGrCOFq9fcyf42VSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GV0AHMf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GV0AHMf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8959C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781604993;
	bh=7Aq9OZxrTwYOqyGxVvvFe/M1Ci+NpdwN7yNfLhvbyYk=;
	h=To:Subject:From:Date:From;
	b=GV0AHMf8ZP06d3sy0CTGwPzKVHFs+YtO8FfVvfyJK/iIA9iZ1uYzEZCXTSobWp06S
	 iPqfnn8Qb3utY3zW2JV19p23MX7+U4ySbDoEuRBBjpqTfeBRE+QDv7bz3flwg1/2KW
	 E5QvAujTxr1XIHLu8/pyLxCHuieJXUGdrSUOw4MijP2GQNyxU5PfaG2tNvOW15m+HR
	 PPKpJchekkFqSyOcyKSeVDm/HXQJi4mXGZXtDENT6VDzVtW0D5jU+aGdYHzWFDUc6l
	 mnAK5+chwGIl9Rl6AljTUQlYLZ89+GGs14jtKvWALTVAtwC0TsRMY851F1+1399D1n
	 1bk1wfcZWwF+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC1BCD98CF
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160499369.4770.5460465535532927548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9359cfbccf1a466ab22fce0c4f9c9a69e715df7062bf3de5c3f6e653a63a931c
Date: Tue, 16 Jun 2026 10:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781604993
