Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2A9F9C0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771732494; cv=none; b=CJ6ybUNmPAMo5lSRMa7olYduk9ET4LoZ1pj8DW3Rs5+RUuk+ORyEJnfB76KKKSTZAIbb73IKhY7RnPmT790r4MfDV+DVpbL1LHFnmg/JMwI5TqqnVmxMw/yVFkGma0mgAnga3XaMHx/upupf4SBAgEKgne2TCFr9jQwnFoFYWo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771732494; c=relaxed/simple;
	bh=yrJF5vFKnnHOpTSJciihCKgzn/Ctwe9QLxjB6AiaJ0I=;
	h=To:Subject:From:Message-Id:Date; b=pzKhB/kSIPzkYawkt+ClALQcSZ1xbO5LBqNivFSyuV0v9ixxqtiwM1CjMdx4F89s0RPC8R0wLrAO/jOnvcgyyI3jv/xdRFM5vd1MIGblqespg/0pCYVn+zLUJsQMMFcRv3ym6LfJBeu2DoSH0yEEqyNPx0SOfP4SydwZTFueKik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEmbTyVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEmbTyVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B71C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771732493;
	bh=yrJF5vFKnnHOpTSJciihCKgzn/Ctwe9QLxjB6AiaJ0I=;
	h=To:Subject:From:Date:From;
	b=XEmbTyVRhnwTiOcBV3ZBG52nsrRbrmj/903gavhfieJsB/jYErFjHnhX70+a+Lu5n
	 Gx3UtVSsOdPW6F4ItL360qj3O8UytGXe7KbACgZGtEZE2s0e32dehsi3h3XQUaFs8J
	 DEBXjyfLYCxUSXYddcO4DgtwI+ICEla/xA5Wh9OvdwTzSmVHCTB11F3sdsu7qVyaqP
	 bQvVx7vZBt+okmESepbHL0SG57qt98DgqeXwMJD6cNjNONlqa5JQQ48PIEQkEOp2FN
	 l3t7+bOD36za/GGUkc2bU7vpyFBKyDbHs26KaEeOEm50NXUMgG5nUU2/niz/i3GgAF
	 bOX+a/dAL5Eng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BB5E9A02C
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173249359.18686.4986963948074651314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2297751dd2105252f2c03f2fda2ffe0d26730cbd0581c3ddca0d5e7f35f68ce2
Date: Sun, 22 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771732493
