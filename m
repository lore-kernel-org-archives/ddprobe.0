Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5B734104B
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771585494; cv=none; b=LivORBS+hkOwTnmmhd5yay51RC79PA0bn+jHVW5bjSvofQmSHg9tIvsNpnNhI6YqEj0Qes5FCxmU36hOq//RO3sZ5diqNbtJlDcJEfWTuK/5+yWWeGG4lkI56xSzlCrSscIdI8rFAlAXyKT2IOZZm5vcYUOnj6dspjQpCSILVho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771585494; c=relaxed/simple;
	bh=G7lkMgLAG4xvUSTb6V9oxhgBgxBg7JzcXWTl/GmoSs0=;
	h=To:Subject:From:Message-Id:Date; b=KjbH+2Md/3TQKPSkiLFFS3W9gYRgP7kTf3dihnLt9BhzmH+25E/yAQ8syrIhcapeUmB14tAwCgfeGK+2vRItDP2CwtunyvJlJCjMNClEo0b98G9elGbqGY9nXZJfFMp9xZOOz13SENwxjKRnLBguP5fY9pkW1ikkntqRV0eqzIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHHtKsSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHHtKsSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E91C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771585493;
	bh=G7lkMgLAG4xvUSTb6V9oxhgBgxBg7JzcXWTl/GmoSs0=;
	h=To:Subject:From:Date:From;
	b=jHHtKsSPjEk4jgWtGakIbE/xfYdyoIKSu0GkuvVVz6Bo4SrYBWVkrF9kutIOCEh5A
	 vj5vjsNxpAvcT6IV741n4jubkDH7vjE7tl5vjU9Mv0sOmIOQg4390KL/qoJtmQEVYJ
	 mvbcA/lN1rEkAMB+MzK6yejNjS6qsj/dIyAJysS/fi7qJn2Z2IDR5EJJAadXCdXnNg
	 ecsHsx3w/C2VAc+SBIy6v+9/WZvsZzQBflTWzTd+5njNGdIF2aOjP1nu+uSCFuJ1ti
	 ceESfNFDMXUjF4r5wKpSm88oWMwzS7mMeeu52akPsicp4miYV5/ykeDJQN0qY42wC3
	 Q7O7L8Z9Zv5bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9399BC55190
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158549359.3228.7297433374885326390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3935a63a066f1d5bf17f7e030f5f3324d5d01a665ff12ed24aa37f6bc32cafe2
Date: Fri, 20 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771585493
