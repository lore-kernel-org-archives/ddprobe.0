Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180D719755B
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754242194; cv=none; b=Upa5vzPDVs+ZEraCfr1VbCNDAIyFMyb1F8BxnZ7gl9KryKd1quxCpCKzcVBfhW88aWoyncP0XDVLaubp8S1SHmQI9OzO/VLjmX9qe+v/9+nyoJYeklz7v5rh1JYfi1Fv3OKyhNK2RecSXTPJEaNrt48Tgtnpz+Qw2HOAUjy9cnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754242194; c=relaxed/simple;
	bh=zrLWOsLyZ2wMdcVhw5syokgcONDJRRYHnkAlw/EWKM4=;
	h=To:Subject:From:Message-Id:Date; b=qWMN3xVPjyH4FvD/Q9SS26DMzTMxZ4kzKSlI866UYzTQVAxhg9pL8NtdadNWvwKdzPPA8QW7/2OGXVBryaDCD/M3HQMRa7knaearDoiQ9R1G9oMIOwVm0h0OTD+cBuaelP3/9BNQzssOu0DYEiLDETckLuKMGkmkDXpEe1Um8jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsSLWQmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsSLWQmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CB4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754242193;
	bh=zrLWOsLyZ2wMdcVhw5syokgcONDJRRYHnkAlw/EWKM4=;
	h=To:Subject:From:Date:From;
	b=IsSLWQmErYhz3fVL1bEdkfI8TOWSTu2K6l0PwtCbF/x3k8/PSrzywYWzopjnKFyjf
	 lKALSIDNst8LDXTWHJc4xPQvxoI4Jb6BXjzHwBVa9JvcZcF0zGKpPJcrC9+mlJSPMG
	 kOGYou27BOoKgUZLtfxfVNLMl4BMVrNHrVHc7dbbxblNWTlZrn8mVx7dQJo6qrOaaY
	 W51+T0bUbxNvNTyYUZYcTNhDPJF3CnjATROTgplvu9CIUEbt6dKK6olO1jJsMQwr7P
	 nAFttqdn6gdIQ4q6CVJGtiy8XnsQA3oomrXKoJg2ajqdVY3xE8uVEdY6njEiziMlF2
	 xmQltVZ2QGXwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9580DC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424219357.1881.16581801652755784860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08d02c459ba651b47a2ea641418fad7bb90e09e0ef208c15333e99d665fc8ae
Date: Sun, 03 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754242193
