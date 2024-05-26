Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633ED18B05
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716741863; cv=none; b=pJoVqz/IgFOfjApe8rxXigo35CBfqABVrC1jcY+sQIyaA4/oD6axEk/5FS2hC2o63CIgJuIBOlcYpoGdVewLnTdC/aIYL9avJJU5zcZwTrMEvKmWGV6SQI5bEkSn0yyHlzAQyLjs4yUDtl1YQlHr7jbpvJcGJTkvJ0CqBCXYXt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716741863; c=relaxed/simple;
	bh=Ho8mXQOKGf2mcvroISZIqK/km/NfxFU7T7Y7ErZNZes=;
	h=To:Subject:From:Message-Id:Date; b=CsDX80ydSGY0ZpnMMJ41TWIY/VB63c7usTsk6+t5QE7OW5t9M+7TjxoC9jmh0nMFB57I4NReDauhEd6OS/cbiA8TJuDZh1z0u8KdIaw/tteNTHBonsgZDFM6U3EczCe8oe3b1J1OpnCk1kQkOlmdYVNhWiotpddGbyZqXupmzaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnc724oU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnc724oU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FEDC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716741862;
	bh=Ho8mXQOKGf2mcvroISZIqK/km/NfxFU7T7Y7ErZNZes=;
	h=To:Subject:From:Date:From;
	b=fnc724oUA0joW1B605Jj/IDvnDR+USwgPh1ZU7thse7jPfQ5umkhNDwYpE8pzZ9c2
	 ILzLXqSB3qNGPBbATryDPa7SGa9WeYQ4Uc/o8b1pTW0FG0jzfBQSRDOOVpLsSzZHay
	 3fWIKPY7GK4HR+FsyEbn+jmiJaYLIJcWrnrGg4d0d7ZThVi31Kga3RRgh8+sgalT1z
	 hdRcd+Oi7Yzo1B7l2cIpyyYxmr6gqDAhhaim5AzYjaQLq/fXSGB0VJh7Up8ClyQH7e
	 q2wWyAI4K6ow+5F4SXGxDFshWmWQ5nHoM5KUTi9P66ScMuZb3XPQUHqyiw0i41PZTs
	 Fee3FT7duZ3lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F76C25B7A
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171674186278.23625.1132152962842998464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5f2107443fef9ae5e1ce1fa30593ef9c652dd0cae23ce6c87485b7b2718b52
Date: Sun, 26 May 2024 16:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716741862
