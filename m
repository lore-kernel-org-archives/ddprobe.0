Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2441917ED
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758318595; cv=none; b=PxCeaxbBrd5IK2+Ks8OcbVwkeY4bJTN4C8rUGf+FEunZUobCHNQXNYK5DPQXaijRt1HQ+jrOJ6hJAfZHOW+s5ZXzPuJdw6V5X6V/G5qFRAL7dh4LT5eYEYgXXpN27oRAZ7fDY2rGbdnQz1v0oNpiPN8bp8fuNkFgwG/b3j+VYzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758318595; c=relaxed/simple;
	bh=5W/xaVFKUuWd8lCU/r9OwHGEv7nDAal4dA33hphW1ng=;
	h=To:Subject:From:Message-Id:Date; b=cRbKzt7QQo/M1xjV47VYg3Lih8W+HQ/yCmCo4NQ2cbJpgW9/lhwyiFbTyez7EeJHCp/Uk5/KIxHKtUTbfNO+hQ2NV+urqaodoFzdhw0/ddKJa1YDJFah98z260l0FuLaMaVTMhds3T4gHJk4CeLXzXxAsuVdPQ8VCXbkQUQWiYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDlDrYch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDlDrYch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E72CC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758318593;
	bh=5W/xaVFKUuWd8lCU/r9OwHGEv7nDAal4dA33hphW1ng=;
	h=To:Subject:From:Date:From;
	b=JDlDrYchsvasNahnFqLMaCoGal1uf8xpFP2OGt70D4dFp5t9OcW207ZnQSFdfe2d0
	 6a3ZbVIE4s0r5QM9dicZCOUF1o9DLtpAfPA3KESYYA8B/yJ0krb4aEPtq/rdLX6pnP
	 D3uLFd49QMyUrNbYax4hP8Yx7HmRVnPeooVxKlCmnQq7a5qQIQWzujpIt7MIqdLsor
	 guqA7ZURWIww3PbC5bBpsxhAsiq+OUgeqTON932qLh1qRRFmeSYyvxpbJKkRG9SioI
	 imsU5LBfOWjhPli62IjEIkENoeSVYl461HoH4uymPzh4wXO9O3dptRLgggRvb90j2t
	 rjSqyOfoUKuSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE37CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831859357.12705.134296398951316111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7c0efc234667c18b4d2d614d4deac7c7f86e986b4438e57cac10ffa6641f47
Date: Fri, 19 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758318593
