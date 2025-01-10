Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CE420C026
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736504754; cv=none; b=IdsXWJ9QRPfNWni7548lKdT0NlB7w3VKVzQt7r7Z74JyunJv6PEfTcW+9ygektfZXhdB95TBWrAfpzwtcvVCRLaJKKbh3pqVz1XdEFBWz3e2f9ex0GB/6lTZgWgZ2Gf2fnlQeazu0tVAglfBFoDJI8BmIpAxnwztIMgk8BwLGhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736504754; c=relaxed/simple;
	bh=NoeNMB7FJtXHnspUIn2fsB76vsS3spWKxRzHqTVh9iA=;
	h=To:Subject:From:Message-Id:Date; b=KOKXbGqL+n6KYP5iQa/x1Rl5CmSx7iFKPzcEfZ4kioB9au1XpY8rG6aqP9libs2nWUJSCBk481mpYnZTNH3AYtOmSEbq5KMxjbQLQWrzbQwYe2pufNpk7B6JzKvjtC5BtUbyMJgvlys4F+o5UvEpC+T23xa6iUhOOxDzzNRH5BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOn28tGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOn28tGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E71C4CEE1
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736504753;
	bh=NoeNMB7FJtXHnspUIn2fsB76vsS3spWKxRzHqTVh9iA=;
	h=To:Subject:From:Date:From;
	b=EOn28tGqXGGh2CdnVjOMTR8cU8oPvRoFVetqUONTIPDMgQ6SvrhKhrocofs9Sqe2V
	 nTVKZl7CkJTM2wOkhdw95MI6m6ZkuzTp1gf/XsoPzDk0mSPXc2OlPRwVzOAyXSxIS7
	 QRHAjCA2t3yS+KoIk9VQ23lDAIr5avX229uQuTjpYyRckVAUB0yIFNsE1lYk9rSPWr
	 dgOC1uxnI6wm7QytsUtej33hvU1H5cV59ZladSgaTXOmWouCMfBzmCdEYV7qsJAmNR
	 dWyh/os7PefozAyF9if4vBu9ufLSoU3SeIhij1ZP6dDC2bJKKZ4LS8giboeyKMCt4Y
	 F7UzOXsRQROFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC8E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650475358.19827.2751677783158107571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef1a7b545583af86c0f72e796fba8c5b74fd537e3bca89d272133935512cfa2
Date: Fri, 10 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736504753
