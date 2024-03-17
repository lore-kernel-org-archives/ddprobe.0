Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41531C2A5
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710687497; cv=none; b=qolkqw221UZdBj8My74o+AFhLXSrUBx9yr+smWLkdblFX5apEbsFH0PDmDAcdxTGdx+Pv2aS7+N7TGe3PpDmNmJ+JZOZ3oixAfwzKuoKkiRqw8sjvEk/QJXYgTZ2pa4aHmEEkFUT+iizK+QXvSpy2/81RxBVM84FBmK9FWdOyQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710687497; c=relaxed/simple;
	bh=1o1qgnnNiY8xqNuqDd0rom3D1uZQ85KMzW9MeoW+KN8=;
	h=To:Subject:From:Message-Id:Date; b=acmfu74PVNHBVnMqGTy/OYB85FEvAQ5eQW6hWzHzpOvUy7NtJDgDmYAerSNBESRL/UptkHELCzE+Im911zToOMd9W/SmmefeHKP25/AS2BeO99RPNVKPClgwUErdSGTaaOQjDVciBBUIkWmzrvwUMhxWL54qXaHCukxWlPdhLcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKfYSSxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKfYSSxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A32C433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710687496;
	bh=1o1qgnnNiY8xqNuqDd0rom3D1uZQ85KMzW9MeoW+KN8=;
	h=To:Subject:From:Date:From;
	b=HKfYSSxh8gU9RAsaKICLU8pjYoB+O0Vekff+57aocBDVTizdm07kriPlOSQPko63E
	 3f8NOZcYwgCTHG2Gn383mqrFAJ4AmZMYNs5Uu5rJIJuZyCCQmQNkk/Zs8sukhMKLgh
	 h4OY7iCYG2f3+dD+tUws2WQONWmQPReuB2/7D8vEt28G/Z01p2VV8jSQhL8SwH11B5
	 SkaWar8ze84D2+3P+xqsjUW/KFx0GXJc4fzPN7harq9UWKjquQ6WV3ZM5z7jRUB4RF
	 QpjM7dusPqawdfNXfzAAKwaLlesJ5pHnDdyF3jFeiNWd1oST3kU+wadHpKmAIZjIKr
	 Zij2r32WOzNVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66F11C54E67
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171068749638.5823.17332994630575505024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a94ef9453d0609a9158cd949ab826c1192bd462b9797706916ebec5e6707ad
Date: Sun, 17 Mar 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710687496
