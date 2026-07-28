Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E203CAA3A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785267634; cv=none; b=nFKKmVZdG4be8c7KRxztKaK8Rt/M1fIFe2ZNvmRsUn/Io+ktLhVjbxVE+Zl6wJvZiaNnytfLwe2LdgLCqYqVCWZ/DFNSa4+8F+GW//OMyjbBbeOyZ3z98KkpFZtxoEGfDlcrBUEfIm7Q85bSvVkdl69ZVa7sjCHXZbJvZUtSGiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785267634; c=relaxed/simple;
	bh=iN9AvhDHSw920xKorrN5XLiNeYAXMWPbwBJaCuCsdDE=;
	h=To:Subject:From:Message-Id:Date; b=MS9eFTYfdSawABSIjRcBihca5MC/vg7c5lkpPm8kWPn8InKGKEKQXGGLLeBsCSvh9N6ZUtL2UY4dQd/ycIpskIexI5hDZ6ZIy8v6JJVbZWb3XWS6zC6kmDRq6v542i1ufUylyFwx1Yv29kbenAkLpOE6uIgzDoiVsG+AI7x5K0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkmyZOUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkmyZOUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB960C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785267633;
	bh=iN9AvhDHSw920xKorrN5XLiNeYAXMWPbwBJaCuCsdDE=;
	h=To:Subject:From:Date:From;
	b=UkmyZOUmN/CregzHQD+siOUbHy7MhmzQtFvySHqs2Qspyuz+CAU6uhDsUtXgoQ0Vp
	 4JFsS+gc5loMdzsqUutUna0babpST6H83sK7HvC/0ZNgqWItM/rbRvz2efWiSYlWbU
	 5QQnvjJDrTvfhITfD/xZizW6v8QRONLOvkaOxv4tz+SjHvOfgpVlR4w2qSC9k3FsYj
	 aG6nf7M5oNK4ZHnq4lyY9UsUJeCEm6BtTH7MR9OFGjvcr7KzprYm9Z47XFLmwbNyy4
	 WtnQGrfu8jVIVrq159Ympjr1320rY8hgUx36PcNJn6DrbHRp8peIFIicMv+yfMqe7y
	 SVYWTwW7cKhbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BE9C54F52
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526763368.30159.2021556750645801104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892704239709f4ff9296b946a2392e9f2e707245f465fc9b96f01ae7193a7736
Date: Tue, 28 Jul 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785267633
