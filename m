Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9A37263E
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761434994; cv=none; b=EO7QbYtXehrKzdSMzeaWw09AcS/tGtNB0cI/je4hYh3cKCtfXAQDKjaK4KN60+kMALO+0pgGipLNH9fOqKFavX1FVNedZvPs3m6+BAXJpkq3MtqvcHS6MNoXt7HN2pwnapeQBhhxt2EQaLibrY/4Dj0yBcqL5yFatCICSepQFX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761434994; c=relaxed/simple;
	bh=yzgBHA3v6JaLSuYIlhixDZE1W21n5ZK3WH3ms10siK4=;
	h=To:Subject:From:Message-Id:Date; b=fkipHWOJZJuEx05l+N7ny8Ih/5z57uRcWfXDpANiDe8yQzgglDrdqsgtH1X5ZAbNKT8JXZ4ftLot49NzRKTGrvNb/+mqQTYAhM3mdTdBV0RJiefRxjIUO82d+4AAyESIwBhAjN+5TbegVAHEJZNVJBNe398O7IsJKqROqYOzZ9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjPweVi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjPweVi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69C2C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761434993;
	bh=yzgBHA3v6JaLSuYIlhixDZE1W21n5ZK3WH3ms10siK4=;
	h=To:Subject:From:Date:From;
	b=pjPweVi/sL3i9HPzZhhx0ZMqyjejLvOICxYE9qw97MozQObQSe77r+Z6Jjq9eROST
	 fmfcVShDGOA/keXDcSxku4ATiO3BJ31hQAERzS5/nKPSj2IAqw19iSVnzV6oWzP1X2
	 Gwmj0fAuv7rVRtwdWiqJYzrp6+lOZJW7/ZM8KRyE4j/I0/dym24Kfxwx65/qXAvUUP
	 lMmN3YNB8bnd2RnNigfQnBWRdFyiV0ipQEmVwgBdM3j/klMY/62p2Ff74EVzm+vt05
	 DYVNeU4LlwepN4Ry0OCjmXtWOFgzdCkCQXd+/WU3+skIaQ3yx41D4qFJ04gm9fD2d1
	 j3AMz1HPpR1YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937B2CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143499358.11543.670525384166708241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b87b8ef15042d3c279cb3bf6c19232fca726772093eb573af1c6f7892f6447
Date: Sat, 25 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761434993
