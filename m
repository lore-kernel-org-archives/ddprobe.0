Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4091F224D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782854914; cv=none; b=TejTqXMlBhSgNfK+oN0cQYfzoA8zgxLJzigV7vbA0ZeUevg8GJVQmymn6mrgaesH1ea6t/RyIoeHq4gFbpQ8DxcviEdL8Bht+3ZjDN2uznyuHr/r2DIMD60x3Kd6ImENhzdlQ7X9Nc5A0F6DKIa0A/gv+8KY/u08DAVXj7osHF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782854914; c=relaxed/simple;
	bh=lKAQS1JGH5pXofFeK2LFZILRWno6zmkcj6PlxqleeS4=;
	h=To:Subject:From:Message-Id:Date; b=bTAslXwfOqnKJgDJ3feVqB0oqhANuDrPuGly6Pl4NaXrVs7y/NCWdfOmWXgVtTXTE+OtPBqA/HFDE+ovr+Mf4ZztFpR79j06Ccgf5iv2DQUoW7LAoCZ7HO6UsOQV6PRNfNCKixRniC1MV/YRSgo95hVbCQ4pah7fH8zm8b42SbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/tp3hb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/tp3hb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4042C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782854913;
	bh=lKAQS1JGH5pXofFeK2LFZILRWno6zmkcj6PlxqleeS4=;
	h=To:Subject:From:Date:From;
	b=l/tp3hb9uwdc6ruKf+N5U7QIH4cUOWXpe4yYqcQt7Y0462qUmVtOpMAcNZsZ7HLsD
	 E6rHBdxZXnSzZXrRQ6By7NVkzj2DduGEnxNYn9bUQlajS2bRSQLsDd+T5EQH5D0CZH
	 mNE+OvxJX6TMdoD/NJVUMt+hiDY3hQZDv1AB6IEBnu7KDSjGU28q97/I2oq+5v9C+R
	 b/RtQR+4AjJnjeAvcHT0vmqsUfiVEmlvaQc0m4drPjIELAbcT+adhzQsPgGv3Njim4
	 OUjwrViNg8sVHbzQZMi7Fdj1EPptRte5xru1jJ+7fO9eHz+6otlcvogexnUwYHlI4M
	 AWp5AhL+g8iuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EB0C43327
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285491368.29919.15451289177932982453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9492562a42156108c24937372c48ae8214fdfa8d08fbf6476b694b199f871b5c
Date: Tue, 30 Jun 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782854913
