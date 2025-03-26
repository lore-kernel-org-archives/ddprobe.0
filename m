Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D7B3597E
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742963394; cv=none; b=fgzpQr59IHE/JTyZ7XLqcndlVuyHjqNsnKEouTd1K4FffY6xqIoXCZJecd8RUVZ1UPzf6quQQ5/i3bMyAjWG7lzXVqKAUjFPPdbQlYiXA/dZzpSKc/8tCzF4xbLahmEOeaitqqmcdDY1eHaLtNBWP3FGhCByuXRACM1Y3VDyxUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742963394; c=relaxed/simple;
	bh=2ekxfR4fcnJ6y9WpojbB+QBKSxQ4Fg7ZYhsfwctj8/U=;
	h=To:Subject:From:Message-Id:Date; b=P4q2Y/bRjRvLePTV2LRcfJRjf8MxVvFZ+C+dWqhWMx7a34/g4QVwt6Rqn9zQbUb3gflI0Hxg2KkjIFWW21vCH3ycTBpU8OC/Q4MpuCRwomVKC7rR++0obeFtAt6Lz41G/+Dj1SNfgooIUhXADyt/iaZZVyBVwxVCKb9w1rlRf3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4AW7X4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4AW7X4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE6AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742963393;
	bh=2ekxfR4fcnJ6y9WpojbB+QBKSxQ4Fg7ZYhsfwctj8/U=;
	h=To:Subject:From:Date:From;
	b=P4AW7X4EQG9606bRtMTKt83AJziKrAjxstCRUPs3cTQniOMJBxkSx/nTm2KKq0qUh
	 61Q8okedWuSp/uxkOg1Uy3roNxiEw3Q27e7vyMfPLRmp/UjmwVxBeUx1YVoAlrt309
	 oFvIw8lrPoyEMZm7GyQUQ81zNxvlKYPIUNpGXCxPeKG1q1YUMJqP9B3gGBtv+VhaFi
	 qC+fzuXorg1hrPAX9Sxrwzj4TsUJTulXQjHGDANsn7+9wxryJ1TijD6201bQ48UcCT
	 AGlZdC7gpeiM9Cs04Dnoqh1HzbRbpbPTe9ZInw96EH+fE8ZIfkC+rk0qtUqNtcUq+X
	 nh8P7WzQiGUUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9448AC3600B
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174296339359.25876.12856130716951799617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9e7f1a6901c6f28e90506abd7bfbda1673d5b6793ca9e8218a7205f1ecf603
Date: Wed, 26 Mar 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742963393
