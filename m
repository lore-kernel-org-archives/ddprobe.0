Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E99F2EFD98
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760999994; cv=none; b=KaDuyx8wjSIoXrMM2ReGY1eLj+cpKG73VCObumDPyTWKSqobrxaQXn1SD0QgzfY5spT3fGhiOxuzBpQW9URKh2TjANsgxxtfIxBaHbE93xeG0agX/zRGC/tLzyKe2ZBlF46NBE2FbxNbjpGevnwdLHn1n2u1TrQfXuF70kqHBu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760999994; c=relaxed/simple;
	bh=1Q7pfp9M7/eQQ8aNE7ca8DOprIJBbVUB0DigyHZROu0=;
	h=To:Subject:From:Message-Id:Date; b=l/goI56Ht9B7nkvpHSZ6JMt4qLb+HCyu7rCGzjcy0awulWwRejqQY54rwlV69ODpNZQBICTeDR94HmXLEs2J7oRHakH0/+wmh7ULh5HlMG5speryXB01ufx1KJ5XVlDVZM5VFGiuNyIBJfdoBQ6pOlEsVtIr4dCz2C6JV9Uc6/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jk6Mxqxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jk6Mxqxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B045EC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760999993;
	bh=1Q7pfp9M7/eQQ8aNE7ca8DOprIJBbVUB0DigyHZROu0=;
	h=To:Subject:From:Date:From;
	b=Jk6MxqxjCMVCKC8RcZ7F8eNw7ukVk3QvxEPZgmsXIU62CLliwl5jwAZbD2W6xr4zz
	 K/vwAHVE8mwTuh1tIqiKE9EK8H4fIT+b99yygyfqPAodZcH0oHqOpuPqqsMbj+P7qZ
	 aSGkzlFWZkwZaZpY4d23Ka0zdEZfwmuJOKkARvr9c0CthEuFJrIs4i4/juqtG4lp9X
	 HN7hhm8HGlcNcTRYjM4qCVUNk3kOMwgNj6yovxcWxKQ1qvjIjmc/SwZhrWU06LbvRm
	 8LQfAW2taSd+Q/u8R9TJizSuts1EceudV8xbtxan/IbNWKtWcyHjSRIDDQfsuaOx3O
	 mK+SHjKrDJUcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA31CCD19F
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099999359.2985.8662588950926989005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbbbdb73a0a0dfbf2a01e0dd3ac8a10b55aebae427ba3c60319c3a43f81c6ad
Date: Mon, 20 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760999993
