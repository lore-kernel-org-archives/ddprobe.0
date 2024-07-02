Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094C415886E
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719916523; cv=none; b=JSpHIi94M7+Fkg9GU78W9/oWAmBCjcKkDCaaqkxgUdwIPb//Vee5G4PNKp/xiVswZPcCltKygPU0S9Ty6zDKEAvDcWZ46zcbVlUtLS6tNjooPEBkYHbIuQWLQl3zRPp02dIVMLMr9pXgfMDAD7IaW1qunTurgKns0aeanfBpUr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719916523; c=relaxed/simple;
	bh=jd/Pat5mKTNt2udJrI82ZXe5Nt0zdK4xbMsLb/kN5/c=;
	h=To:Subject:From:Message-Id:Date; b=Kayizp1qpOeNAvCpWeedgfRfQaa+LCk7PUK8Cj22VE+4i7SZxY9r2bTltGQoIsXgYW5jUm0dACnLXEwWZ/sX5ioy6PR5kKAsp3Aapp1By5UhTiVZIlk4x/vUaIat56ZYaZHqJH4P3qY+wLb1ciet44RfXu1Kr26rSOvmJE/AjJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxzdDGid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxzdDGid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4736C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719916522;
	bh=jd/Pat5mKTNt2udJrI82ZXe5Nt0zdK4xbMsLb/kN5/c=;
	h=To:Subject:From:Date:From;
	b=mxzdDGidGYFs9/SVKP8XmlRc9ITdlXQklq3Owbf9FSSDhwIRzobfR1rEqhw/6yogB
	 wB/ge/B+kTgs2mpAKHqFDumeielVBaw+B+qTGfBMBs3mPBUUjXP5ZPzWep5CiKIOVf
	 nO1BvESlPdAWKu4DDTB2M3yX2wKgg8PDL3fQNDuc5noy0GaUoYenOjm5e/9bYh5NXy
	 CwTufkoqo+s3ljsAKza/yNL9nAf13ynl61NO6wwf0XSPEyX+fUq/3h3KgCC4KbJzDI
	 LiHHh+Xee/pR8FoYzsOQtsNhqEg1qdR2RJY5ArXH+sDKQ5qrea0R1IUQacUWNgqswK
	 bJzwrqJ7n6jSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FE4C3065D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991652279.28124.12717800977086968515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5237f56e68d70d16c2cc351685993bf903708f5153ee14038fe40373bc2a47
Date: Tue, 02 Jul 2024 10:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719916522
