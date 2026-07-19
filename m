Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3457261A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784479114; cv=none; b=fkWX6cNaTqrZiR0wrN7qdLI2a3naaK6lxSpRUkpT2fzwwuHVdOWQlw5TFWPNjilLG1jcy2JTX195snN2wlpvqZ/7UxASk5q3Ux0peUyjUXu5nzBxQ5byRUrKpHIQLIrMhqTHHUEjE3afWaOpN1zreVRZCSRaHZ/TnKMGz7eEmpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784479114; c=relaxed/simple;
	bh=qg1SOzuzhiRcIAsxn3D24C0FbyzHZVo6kGAFbbt6QoY=;
	h=To:Subject:From:Message-Id:Date; b=BBhHXGiDP/FwNt8HrIOVJ1oPoQKq4zUqdwZF0bieWUQQiZePbUEAyItQ++xE7UGrEr36K3WYYaSxzZUuryDXf9xoVG93QTmg1iTxauUuXH4f1uEqWoU053+pnszPUpwbzgnVoZVfjUs43Q0SYRuP82+SYu6LqfnTznCPrCQwAiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkTvoqnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkTvoqnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2C2C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784479113;
	bh=qg1SOzuzhiRcIAsxn3D24C0FbyzHZVo6kGAFbbt6QoY=;
	h=To:Subject:From:Date:From;
	b=HkTvoqnPzTgtLOORO4TDp2JWeAPj/yXk4WyzuYmeI3qnspBhcjcY05zzcuudtfkw1
	 ljRidZwcdOcgFJYs7xaZ4rAM20tpXCrfsDeGMB5Zlz+gZhZcp6lBY3nwUBKCW+TISE
	 WrBv/KLObexCWpCEM2ITsAHONitNc/dWXDFaJebakx6AL2goPfg/55IfKmi4cTjfGw
	 wXVQsH3AAkCgsuka6XhQZ9avH0uUp2oKSskB4hkdmH0g4Pxzn/5HjL6bT3wGqckZ4x
	 F1oHE9w0hA5iX2Xhv0j9le4HCXKIKcHrDCTw9mGtfSSUJ3Bd9rEV8RYC/1jkcR1SF8
	 lbRl35JGwLzWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA889C4451B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447911367.800.9838596185770795631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8636ec2baa1f96fd8ef28892a8372b2a272d5fa5b91a469639bd4c64e45dbc5
Date: Sun, 19 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784479113
