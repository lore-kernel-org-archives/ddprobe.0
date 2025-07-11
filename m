Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109881FFC49
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752246594; cv=none; b=P/KW7k40G7Gi6MfebDfmk9daFcIMHN9pXfKlI761slzbgxO8dqj0ldPpTPkJLbB073rUBETtc7Bpt3ZPQGDcAIWcntDzYNrCLX1BVKXRQ4QdvuvKIqYOizeDRWD0wQ/WtVDASXNC+MhBcYk5q3BuqTPNETxPAAH23PwTMALz9lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752246594; c=relaxed/simple;
	bh=7KGAH4dCPPlwvQGN23GEVtJU3Sr+1UgrQeFrmV/dE/k=;
	h=To:Subject:From:Message-Id:Date; b=kXQ/XRvJdUjFNw92jJPj3wxVnV5fS8mhxxVVcwNJ5K6ZdiZbA41rvX5J/z6XsLkIp1ndAaO95KgNcaCLz39f/MZ56CJibUTTFgBRBVPnNcKK0Myul6UU4Lv8CFzX3/2GUi+gp/6OO/Sw4AmU4psyHQ290RC0PMJuFvnuBHO3LrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JF4yLUXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JF4yLUXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEF0C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752246593;
	bh=7KGAH4dCPPlwvQGN23GEVtJU3Sr+1UgrQeFrmV/dE/k=;
	h=To:Subject:From:Date:From;
	b=JF4yLUXaNYiqKnG1JpzNWizyLV3pNHSnc7184aXBX1fzUZ20uxpGp652wFcsFn6S6
	 mo9Yl25dLBfItbq8gI9IYySXBewNd7pRDkiedwWst/65EHs+4WoNzELnZu+6FGjaH+
	 XSFCQOlb+EvhWjAwcGAWvBd4ezi1LGX5cU+BaeWu4x5qgkY/0dkKz5yjYy6T2/RzQf
	 Wf8BKSWZt9bcjMzbqYbjGiJNkMDp8dkABW62KVQtGOHWLGlb6p8dbdmD0tmuAUPwv1
	 MvZg/1o79ODND+2OpF9vEuyBd7nsi+GgoSda40vwz49LKvITk5QPjwaJ3xMGsm9SkC
	 VpZgYRiN9h/yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD4C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224659358.16405.12527778200203537253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41dfd31ae2412263922f215fbb0ecd2d5282627032da14f0d8edc2a42a39f697
Date: Fri, 11 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752246593
