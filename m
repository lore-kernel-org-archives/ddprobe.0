Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556D34A2C
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718238503; cv=none; b=rbP1yu4a9eSIN/aML5ZPUFJ8TDCEWT3pXAcM8fRJYEs7KZBzgSAFkv0IggRkRdxXM5sYU8ZdzNfhOx8MkQCWnLAwFiCUtGb6UA8j0DHOe8B7c1xGB43Magy8WDoSpFCe7vQ2dDnbMAdOKJj7JT36CgZ1eK0sKFQEmbz4TszrzKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718238503; c=relaxed/simple;
	bh=u7Q/XYEeJOu/8pQks/HKVgjxSQB/cu7+xvsuTPs/pdc=;
	h=To:Subject:From:Message-Id:Date; b=KKicMCxo42kIX6mgl+uoSokTYA5WbyrNkoZYukMV/49MS3uolxHcY/cDkPmBtfQDmwZNr0UIHs3aS7tdd1wPNVcGvk48J6GDScT9/0DQJ4OiAsJtzFR+Plo/7vUTRKn9yvrjQhKQqDCWZ9jRr6+TmnxXBn+dgyhoS+jjrJKBNI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBpYUaLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBpYUaLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D912EC116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718238502;
	bh=u7Q/XYEeJOu/8pQks/HKVgjxSQB/cu7+xvsuTPs/pdc=;
	h=To:Subject:From:Date:From;
	b=QBpYUaLipDLctFzZK2uCSB2apHpcsWj5UjRunT7YsOml7VR2aT5NQAtVxNTjEYR3t
	 bETG4lqBzlpN1s1gqfw7RmUm+cpdZdgLps+vMeyJE2TWb9+RSxpNZJfCR1+LdsDeSi
	 tPKUA8zKE7bIlf8q+7gYJ+f+i0A9CeHh5kj3bNCmgGch/GneJPk0CRshwbeTD0QhYe
	 hKlwQtIpz1/4oXOh536cbic+G9j3tJecaF7D13CWuKDK1g8UKxjma6XFF7cwDmL2g+
	 XwUwxCzYUBjPaur/O9jRpKpEAzsVGf+Xhf+RcloZ4WhB3o1Qe437AdbVYfx1SCvklA
	 ZmT+iIkxZnmYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1903C27C53
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171823850276.27442.3351328313809425731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee54fc99313b6f94a95d9dfad7944cb53186de08e9731b68cf2abe3d4ce840c9
Date: Thu, 13 Jun 2024 00:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718238502
