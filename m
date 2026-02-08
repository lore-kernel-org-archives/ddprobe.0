Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C7F286D72
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770559433; cv=none; b=mfYKg04egNW4Eum/3U0y8qt2XKqztid/rrExWLeb5ThJ6vO6rVimukMJMUn+q3zxbIdgAMlnmGtyFntQ1OoB5Jd3o/AqkNmXKukpNWlIfmc7dQAUL0innNafjc/8lNXrqTPz1hHSAYmIaxiPqm7Aua+SNRTnKY8SlgkZLC4X4yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770559433; c=relaxed/simple;
	bh=1kumigaaFbZDCIbav9+pmBOIfOCI4u/8oZqHdBLtQ5c=;
	h=To:Subject:From:Message-Id:Date; b=oa+eZUs8CG7Q8qxyjeSf3ZGUnkE4e61u8SyKimfg9o9E6deZNxeu7feijLU4egGeydUq1XscstLwKd4dn84w56VnjuKkv01r8oAfjZ8XiWujS/0fiiB/pqpOp1XkKxZbpwG4jAgZY1O2n2e4sVW+esW05jHzepMIMTsgz6O2Gbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nl+bWvvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nl+bWvvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8294C19424
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770559433;
	bh=1kumigaaFbZDCIbav9+pmBOIfOCI4u/8oZqHdBLtQ5c=;
	h=To:Subject:From:Date:From;
	b=Nl+bWvvsDjErUOq16Hdc9aaNmvADSC12aOEK4OVKRuLrdwfaaPYHrf9xdh3VSoTm3
	 GGlEY9VWixHlPThMy7d6OCqo4TbSMflunhFHdeRLBUXnrWuahho3NzRrukNYeCsI1x
	 FGzB3Mhc/bKQt3CW80Qu8h6eiKvzbxVBp8+CIoQpiUH/T5ShRQg+aYcZQyBGuMzI54
	 VesNV5hmP70raAyjMTBCHa0adHvgm/wCbkuxEHtYieZpOPZxbIJs1IqDtX2zNlKr4R
	 dpoTd8tVwCbZNOUt99TKD2xt3TClmw2XD5t5u55JY6oj0pLFPyrGYXpof9ySDBffzh
	 1aq8L/a5XUuSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B2EEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055943359.411.11548807488581567873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813843d86ba68a0a04d178c9a3d3c9c6e84b1da51542d1423ee3ec6214ba1ea7
Date: Sun, 08 Feb 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770559433
