Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F10145355
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741816134; cv=none; b=bBTh9aJzsQku2AxyAHKlAPG8f5n1uYG/H/gzTrQTrBZwEmLEvg8gku7a+rW5E/HidmKFBJwmIu7Sybam7RezI0Nd/d1geXJoWX4uDjn3joqJZLzaHcz0OPsErs4SMyOY8uVnLSw8Fg6cYVHQdgk67yoFdqqhRey8COiLAY/mTh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741816134; c=relaxed/simple;
	bh=o6pCChKUrltSeldxO1JXUR5pC469dd7ZYEVGFUrNRlo=;
	h=To:Subject:From:Message-Id:Date; b=oaedKYwNGhhRoq+ONzVI4mxGOs7b+pe8IlbOijKVWjy3vm7qMjGQ0vkXz1JVuB7fehGdMl6QXFqxWxHBw5JWnOKd1xm+RRqeSI0ZUHX9OzUAs7BxYhO37zNkZSwDoK29QLPjXtWvxyA89mhdSEoXz81YIdnbaHYvSHNWm7zq+cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcuMcsVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcuMcsVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A74C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741816133;
	bh=o6pCChKUrltSeldxO1JXUR5pC469dd7ZYEVGFUrNRlo=;
	h=To:Subject:From:Date:From;
	b=gcuMcsVBW/q/Bs4blrjFzck8diBue1TGUlmeEqdlG5O1+oWfF7ipVYG/JIkhIYXmt
	 qh/c7k1pM7S1BmiBXzAJFLFUkMGHqdwCWfAH2Ytn65x5NPstZETZNjmh06K6GZNwcP
	 vcGs74x+kOhdZDXBWdExnT7xYmg/yLNXUS6dYyaqxZHiPmcjRDrWmElvHSkNMAMmvF
	 EKJJvEMpWplwFNO6U3jfRzYuHxFwV9pCjSWFJWeN2Jm8dn8MVgNKuf3EzNsBk+oBGs
	 KgB4xBb6j0zSZtooUUxY5qMWr2ArucJFxClYmP4yukrHY+k6fHYwcNQoyIaNoAvk7G
	 zlDjERSixbi1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA15DC2BA1B
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174181613368.30222.14844947933285207409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2105bda5a1dbc0ea726c7f3f82ab27ca45447dc3253194f5ed8380282c9890b8
Date: Wed, 12 Mar 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741816133
