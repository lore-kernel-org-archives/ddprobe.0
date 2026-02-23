Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401D337A49C
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771884894; cv=none; b=P6oX4Ks21XLDkeDMLFksBVfeCIVtPeaxr6QfNBJs7fmTkAPZTg6vw7gfA+XsSOrt8yOpy8LRT8MmgIYaGJM7WVhnF1yVDIzaKwcSiseCtcxVM49Dzqr0S/f0AAGfOdL6Gxi55ToVNym/vlXpRPKy0XoTJj/i538JGXNKTkxbIKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771884894; c=relaxed/simple;
	bh=rg8vGJ4VeVX2OmHlldJLMkElmdxPi3MrWrQrE950qZM=;
	h=To:Subject:From:Message-Id:Date; b=hYJ8TgTIKWGQ0FlfdzApBMjLTeb6CYyaHgQ8jsly/bO6UFiYDNqWB6gHqmRJj8OdStZwalCr9q44mXMR8rlKWqXaGijr01QKjO8jkjbSaKBcJ54sOCa0F/KO+4bN58LbyY8WD+PK9UiCJVR/a0l8mtz6Xmr/RqjjMI1LgIRQw/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSYw48Z/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSYw48Z/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4E2C19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771884893;
	bh=rg8vGJ4VeVX2OmHlldJLMkElmdxPi3MrWrQrE950qZM=;
	h=To:Subject:From:Date:From;
	b=GSYw48Z//c59dkPb47SsTzYJMCgZL6sYq6v2VAKA2zC111jTmPpF3J1KUouAHuFYM
	 HPz0bgTRmEHIPEd6na3Dq0RqAmcTVsrTr1pt+MgwkmiW2yoblzudYrJvEFmeAMUMhJ
	 zDbYIbcwig6oAvazCIvYrtNbshAiswb5b/+kd2tlznIctLM2QWuKniLxbwxJpdkbz5
	 6/LijpodPQjFx+Wxd/EyQ7p6bna6OgzV+t+kZqL7rXuDs3LGnye4W2Lg2UIUejnGig
	 2A0XY23eyGNGZz2bnOIhYBBvaCA7HXvqb0IpBJDB5GGOvlRZO2LWFgUYNSXjjvpaov
	 NGEriAFjOnNeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D04EEC29E
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188489360.7705.14716752715450915958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 801c8115fd5e6c3ca36892df1f7205e7956a7f637a7a73881331c05345c9c14d
Date: Mon, 23 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771884893
