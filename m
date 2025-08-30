Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245B04315F
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756547994; cv=none; b=eLXE3cLfQ5C3/wPGPBdpvM5UWsPIwcO+uzvz4SmEtNySXzFnKxCbfUx42XLlTB6NLaqyrRDOMWcsUedcimGdQcVJKc8rtSBdZawU2Mb/ick/B5mDD5zFpJ/PoBkAvyyDg/8K7oCnGWHYzV/FbydAXx5XS/M9HUjDVXsx4EeKs6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756547994; c=relaxed/simple;
	bh=p7zBXPeqHms3kA9EbT6CmbUw1uiXx2HLO0fBmyqjheo=;
	h=To:Subject:From:Message-Id:Date; b=coucGDSLtzVVzokS0qVEVdaAT4cnlz22zmWLGc+q1iXPw0OJvJ2Wtc4daIfqglGlPrgLQoMUaFPqIjC9/Utq+KrbBcOFoTtR5fPRKyPfTSEfg+I1Z6Iw/mJzwA6SqceHmVa32o3XMiBDeAgKGWfqCQmHEDMouLiRknQ6Pu8WCW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfZv0zI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfZv0zI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AD9C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756547993;
	bh=p7zBXPeqHms3kA9EbT6CmbUw1uiXx2HLO0fBmyqjheo=;
	h=To:Subject:From:Date:From;
	b=OfZv0zI+oawTtreqxBx3zAeXC0M85zap0azLm+O0kfRqWb8Ux/Hsb4Wf6fRwrWKGq
	 S/nsEgH41CDL1PtPWRzj/JvJF4E/ZbgvCYcVgUdL7YPyrrXtwXuFIkk9KkggKEt/Vb
	 n8s/sVY3UiHRpZgcHk8yl3OMkcAMLUI+6djogb2O5PJfrc0krBY8UjvDCNa7mfHXn/
	 Pet2KEDmzoWl1p8+yAX4r4d0uCFv5iDb9wEJgdqvbDLsHJnMbwM+dEMKzfrGqKKnU5
	 J21gGy/XyieVPAG4ALrBpUL8knSphmiEE6jMNttuT8yvvZvDhckpe4RaBGtId0pgLg
	 ARvbVqbz0WAnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4ECCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654799357.3861.17971771394114408767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42332996aeeb95d4c7e0f812dc6e316f1366220c057aa88e899a2bd817ce291a
Date: Sat, 30 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756547993
