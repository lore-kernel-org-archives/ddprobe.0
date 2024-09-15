Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172E4381AD
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726439754; cv=none; b=PxGkFC8u37L+mc91zrblm0Ysh7uPku5rxHOUGzlYHgQSsBlrqIuyMDFMS2x2N/Nzfdz52Z4kRULhapyzVXL6OwUEPzNvwzIMYE7jf9lThdaovqnrk9Ge8vEtPD3+yVFTnDQjM/NmCSarv4+ElsvLZ/k9Tvl3nHzh0Gpw1ZG0w/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726439754; c=relaxed/simple;
	bh=WRKEGv//S0HMde1SXyl8AJAa2yEZIyV7gFDumflhDfc=;
	h=To:Subject:From:Message-Id:Date; b=Ze/Kea9K2c2T3PuLtkGYWb7W3upNUS4267gbYPgjhqB0/ietigk8G2WlwRtswpgsToiGe4K5Q0k9fI4MVSn3fBCLdDQqWkF9q5VuSUwdpi8GIz+IHdjz5GZRPZL1Cl0kdqm9Y/CZUSpxV4ZOvV89lpOevdEUogvYaiq+IxmHNgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wu07Cbk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wu07Cbk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE41C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726439753;
	bh=WRKEGv//S0HMde1SXyl8AJAa2yEZIyV7gFDumflhDfc=;
	h=To:Subject:From:Date:From;
	b=Wu07Cbk1spfqM64n8Ch1Z2dtLFRk1norRfd5deuDZawZO74HbXUdbDKkZgHBxyxmA
	 prXZqGd/af5qQfdG3wY2bz2lIavUurR8iM2uLJ2MNpKxEZKPGCfxfTO2racqYaDXXB
	 tRxWpfclUQad76Bauzcro2zlGxWfeMWuezilxGM65tHNGBSJe5vKjVFOUl62mRRuzB
	 E4xYps+G7BZkNn8nFScvxneNs5Lw1hHyJGssghMfwVVHK2Mop68aiUNJCyCXxAgGIE
	 iGvvHZju/fUquQgOY8QoZQ480g3+Qmm7UrxHaWINkoENtC8Exu1p0uJ4z0nTupghKW
	 MVipIvXBjSS9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98416C3ABAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172643975361.28771.5874945938668110249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0179094a4147424052c98a0461ad376579461d35f31695152701cfa7aa479cc
Date: Sun, 15 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726439753
