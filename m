Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2144D1A23BB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755185394; cv=none; b=rCjboO4NukcjfeX0Og7mFAnVmQcHqJxOlFRby5UqGVAO1E1ciV8xPSX8s1wmKxySvBqD608VhchBU87Pulkn64FIZ8taPtR4p8KuR/i/DzYwtZP+1nwmM2N/oLZj/fO+W5Uv1Z2oJDz1WfLa4+KrV7Tp6+zwUnDzJKXscPIl088=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755185394; c=relaxed/simple;
	bh=qHqVZm58Fxg7lmkUC2tKXZmDBYq/0L/vu8BrO4eTzVU=;
	h=To:Subject:From:Message-Id:Date; b=gKjsAcqEjdDuAUS73AXowd1pm5kJ8T2iRvnC5dgO49/v1ijiaYOXvdtU60ZRvKNEsFhcRkELl2f4I7e6bUzfaNKIMW3TfK7UkpKuv/FR9gz6NY4uiL+GEE/YxzY7IQmIaz/CpUwoFwHSe7vQ1i7pAxjKY0qd/dNqdwJFiR1vCbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6ZRrKVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6ZRrKVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D250C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755185393;
	bh=qHqVZm58Fxg7lmkUC2tKXZmDBYq/0L/vu8BrO4eTzVU=;
	h=To:Subject:From:Date:From;
	b=n6ZRrKVuwoSbNR9wdeffiTrMjd3VW4JQEIRFQKEV1r1zWdvD12270F15xsrSsc5IV
	 5KTpFnxtRhkc72W8Y5PoiUVxGtVypnAyJrtMs1rfpBagtV1lI5TMLJ9FZGcOBlLvdj
	 ttq8skBNDSPWpiaEsjInZhd2nlrC4a7XjG6BZrI3NAA9qXeDh5gJiXri7NC70Yg1Fd
	 Q5JJgG6Xz3+8sycHy0bOzlLwTKdMY2HwsjSdJdzJCSbxHF6AwYE2pYEnRfPEZDndNS
	 Xp3RU20l62cBw3sgEANEtBhllV2e95ILIDiB1IkviU3jds998MCqceJs0bt8vujOmB
	 erKzA8ZS/Zj9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F284CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518539357.920.14073179070303044550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a802bf29a9bb8b884de894ed5a20742d2c8667455e201d9fb2523664284f22
Date: Thu, 14 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755185393
