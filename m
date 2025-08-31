Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C09800
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756613394; cv=none; b=nLqstkovDgpZqoE3+225AVenSvlxsmdYub8oSlU2/MTpgT1Hlaxn0koYrU2xhtv874k81nczbjSpedb8bCmnT7Zu8Y1jIv2cLGiazGlZSQGoj3OLClsByNHWfaTWqBl9JLREX65VU/E2e2PI/6XWCuYDri9ds361eCe+b+QGXyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756613394; c=relaxed/simple;
	bh=UUp9a+jdo2TMJGr0l/FNfkKNkg+xvpBPXrinKkYT30c=;
	h=To:Subject:From:Message-Id:Date; b=e79Tb/KfBB/2AE575N72Zo3uFCFQMOSYDrMqcEPgWG9Rb6X7uauXMAMJoK9QAydx0qlVMVM8sZ+EhW+SrhnBNVq2Y+TwL65isYEX40WFcMbrbVLn+SubBZ/t9X7Z1IKEn3hpOifS1lZigO7ZzTpwErZ53LR406u5XKMDqw95sBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsaNgWBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsaNgWBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F959C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756613393;
	bh=UUp9a+jdo2TMJGr0l/FNfkKNkg+xvpBPXrinKkYT30c=;
	h=To:Subject:From:Date:From;
	b=DsaNgWBNi8O9fqqomNhdXVGbd36cfalyp9FXRAjWqIVEscKjFQGWwzGharzI9iwcX
	 lhpjzgx7iOmDQML8yYfhPrlhi4wX3o2lj3CnU4/3aYcpLnQLGzKfbhA8Venz27MzwD
	 ztqwim6IeAx5K43s8rdfrJsVjeGCW7gT/s2rCWDPO5k0iUTnNb3r3SxzPC0Vg3ovW4
	 x9tRIoL4YrmPps/CVJsO3W6cvqWYY8o0vuW1xhvBdqbSc8RbsmTkeoi6+IsQiT179s
	 YlJ5sIgMzPflO0Qio7WKj92CfoQzmbtZrH443INuasI8oIVTBQPF8PVLG91eVbXTxn
	 PdCswrU9i0pAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3F8CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661339357.6785.4492896771251745409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a82559c20c5abddfb0e01412250c8041db6d7b2b549f9b3fd51ba1955c3779
Date: Sun, 31 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756613393
