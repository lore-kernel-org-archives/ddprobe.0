Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2642A2CCDB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756622994; cv=none; b=WIfqW9Tij1VT98tXsHeXLbQNQ2fbHQ7Iu0tYCzobDyP8KQ6bwDp/0LOQIdujb5TKv+R5D+qCeZCJ4NXVRSYwjGELtVOesLqI7g/zWx9qJf5N15DdSgHDz1Lis69nlT2ziZLhjPGzy08BG4Sp5T3ogfU0GzuCD0Lpr0c5lLkRFyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756622994; c=relaxed/simple;
	bh=G98jxObJadLwhe9xHX+gpmn3FAEIcnrkNq8vxrBbiu0=;
	h=To:Subject:From:Message-Id:Date; b=KclFJT8khKWOVSSZPVvRsj69W77xtVfUYH4pJ0X370iX7MEeA6m/YxElaR2CpfeY6gA1MEnm9MqTBteIjITwcYjCLcva8fwo6b7C1wvPxqYhB0ps48quKEcoAXOqGP9xhUzIAxZhVCz0jqges85EBkgNoZibtPSz50OPoqMWdpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utLedcoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utLedcoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6FFC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756622993;
	bh=G98jxObJadLwhe9xHX+gpmn3FAEIcnrkNq8vxrBbiu0=;
	h=To:Subject:From:Date:From;
	b=utLedcoQJFjHdmJ9jDssqzewOGglEM7PGDHg3mhBODPAAT4RShnfW2V+pZGKkRh4o
	 0MiR6TCyM64plw54Lwocyv6oq+o1wf/Om0BBfBow6Rc31GD8dJhGu2m3BfP6NtOPHY
	 k8jegEpN8yg+WvEWg837GL1LryhRJiew9ocHQ+MlAuV5mY40NNzZY1D8YAPyHcEUlq
	 JkUOuEM2QfI1cfnNrte+g9uAL29wZJenh7q7XTZabjlT5cmWnqyJmHNuJYONFp2WZC
	 HPIvTZj+b3oq768/NfitHOEMsYx+GcgiKcMy+G5aM82IJctPb48aXKJBKUf7x9Uz/G
	 H9Evzv9CCCZjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C12BCA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662299361.31649.17154925205782588554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3268c95e72e7a02f0698c2eafa9d811542f551c4efdcbe9810eb1188be9ee23
Date: Sun, 31 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756622993
