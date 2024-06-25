Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7694315250F
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719317603; cv=none; b=iJY/hsTNLSWOaDNSGJbUgT/IftPEtUOO+0nIfbhL1Zva2Q9iBFzdUJ1hBdv5vdT3uRV0uU3x1rHDADSpWu1ESboDf3YDkE779HwOamn0TIUD+5tlJQ64e1vZwSVMPu4ybjlynVZ/UYhfZwR3LwWX+53ysixF5dSJ3hASE7kCzbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719317603; c=relaxed/simple;
	bh=JDUCfbaIT16eFONmXA/c/FZEFknPt4HDbu+XYIWYvNA=;
	h=To:Subject:From:Message-Id:Date; b=dj2rnieIdoaBFHs+y9mMmHK9RMNd7yoGO59FA+RQ7LIJsVbnoeK8WkJM/q6H3ViThFqAsjigBP9M4WE19QQBHJVqi+Jidj0UXmaBcfMArUuUNOetSUzbJUN9b86G0r4P9DgdKwNhOcD8F0qpzwZ62GK1/T+63JfbW2X/UWuBt/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSfVjxIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSfVjxIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3F2DC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719317603;
	bh=JDUCfbaIT16eFONmXA/c/FZEFknPt4HDbu+XYIWYvNA=;
	h=To:Subject:From:Date:From;
	b=bSfVjxIYriZBorHCV0KGCcn7vWL1XZBcfttbmYUnAKsfFt/SGPBba5aTRfxXHSL0N
	 qdnnuSFX4c8d0UGIPAe6hTxUyNk7HqES6opFFSqNcANThSt3YWIJwB1BlYia+buNhv
	 BKyzzfSQQ/9r+5qYc98rI8HNRaa0Cu0BAitVvI+WFht2OBerWoyipoGDcIVoXBkylM
	 6uGiU6kNP9KHaWLpUtY6EUUcgAaaUpO/HbHEbGrWpFGOxDzpH9hloRoNAvKZf9waoG
	 3ecvDh2M8VhvvOdJ87llYo7f4ssc9FiAQTzvsNQibbMOyoEuNZOUZZzQKiMqjO1Ei8
	 9HQv+SGdXSmHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D057CC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171931760284.9930.8145411465085296400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa793542f04653c15ec4ff0b03b257774b76ded78352b9c2fe4057b474c4063
Date: Tue, 25 Jun 2024 12:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719317602
