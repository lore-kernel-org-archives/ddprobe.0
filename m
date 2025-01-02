Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5112663D
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735778754; cv=none; b=NsXhx/0lTh6cIbQ46t9IFcPBXH3JOKsL54u0N1KxxV0sns+4r94H3B+DxaH0q2jPHSWJxA9FfrqyvQw08L7EiUFpkvj6gRbusxD9sJinSCrDV5uXT8DE5rwctljqbyywUvrAynFqF2rapfd7uk5H8uItzpwk6VpNqnjQMza5+nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735778754; c=relaxed/simple;
	bh=gToS1nGA/0id9nQSanL1j3IqVPg7cWcuWwrMo8JV9lg=;
	h=To:Subject:From:Message-Id:Date; b=UyXyhX/ig+PXskYpR/xMqMAJuqTkPDjRup/Mb5Ee72xJ8AGxYtauF5rGMeD9NrnzAKK7fxYpWfou1ft/ofgm+iyi0ROVP9i2RzG0Xa/veuF2yjNsfCMT/m96ifZwpMQcSjUIaMGe3+xwcVkTuo4xkCVnN9HVBGd6yV4ModXaYtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sf+MD8+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sf+MD8+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2F5C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735778753;
	bh=gToS1nGA/0id9nQSanL1j3IqVPg7cWcuWwrMo8JV9lg=;
	h=To:Subject:From:Date:From;
	b=sf+MD8+gw0yRfAh5TrzN2k6tGRRt6guRbFhFLoJKp71jryEXGQdWMgTB1U79Qrnu5
	 6ESEWXQGxFI4dtfeMGJ1BChf3sc+iIPqmDFsQLjN2OwNAAloWiuQ82g+tmv3X+esCW
	 93hR1WZMHXfVg33PjFTeeK6a6ajOZm+YC9O50Vm53OAtXSOiNTWgRC/j77011KmNUK
	 6mGwsegpDpxiRQenjQYZCp69cbMwTqsn1dr8J6x85BP4RHwu6IIT2u6+fBjgzgWjEr
	 LOnwOvR6Q5metCNxmkmjm8IhEWMShqkBHRxhBFlRBtDDlFj+mwhGLbxFDaiu6DX6OR
	 37z+DoZIz6qmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACA3E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173577875359.15496.16446168134913502449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23136e89384ac7be502aa03a268dcc0794e9ee8367bd6db9802c4207a5decf3
Date: Thu, 02 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735778753
