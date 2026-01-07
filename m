Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5A12FC881
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767824034; cv=none; b=Zt+EmTyP3OLqZGhyBGilOT/0jZb0iESLWe7kQ5gKLObGvr9cVXzCwZ/otRHEwcFbyqM5AUm3fz+bopki8bQJRVtRUw0ehgMfRPQJXNofD6YjHxfXU1/EmZb5DVB3F/lPaAX+hECqPnwxjk+FSUSmKiik+z42QiQM3AycvvajW7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767824034; c=relaxed/simple;
	bh=CLRwNY/N90+382roSFHT+oaa+UTMXiZiccj7cQGFlBg=;
	h=To:Subject:From:Message-Id:Date; b=WrqMahvQsNkz3RahwWyZH+Iade+8T/gPF3BJbbA492bh0YujMlnL3Qbx2JK5zps6lQK3t0YryxOR9kNVsAGu5r8iwSZSLFOvjxh/MnFsR0q+d5ZiqEmTw3+VJDhFI9b5+LppniHweiYuLzmN/FUNWel/bROfHN1fYKkbXH8bnO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pC4DcUBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pC4DcUBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B0FDC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767824033;
	bh=CLRwNY/N90+382roSFHT+oaa+UTMXiZiccj7cQGFlBg=;
	h=To:Subject:From:Date:From;
	b=pC4DcUBJrkTiF1T3GG7g1ygo07TyEcPtiH3hg+oP5T6VZfzHo030vMmb0cTepvT6M
	 FdwUee0Ff7plJUwSMqu5oPVowuM7wLLTI7oE8I35G98AJZoQXBbuUxAMfZiM5RDrwj
	 70KD2fMtZNUV9emO/+PbvxxSJAEFAhmwyyiBkX72wwt2nWygmKlC8qNgSLqay3E6n1
	 jWS/e9dO3T/zyzutvc6o5Hl5BZunRQe79stG/hvD2jWzN5wqrHvBBH6yBjHfq4+X8i
	 1YwZXPvog5ovwkJ3HDG1iFn1LT7xo1Hks64UGSa5DeRRhzvW7fhgkW57U8BnkFIVxg
	 ddiGDrfgkgUog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF74D0D171
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782403358.24038.7691721471984764323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768b56aa6e733407dab9140dae8e6411a1bdd5490f07dfdbe8dd9479f8159b42
Date: Wed, 07 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767824033
