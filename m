Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2373749F0
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784674714; cv=none; b=TLEnF1WF/p7GI9MxtjI37tiVls8G5LpVKliuHrPB1XnPt3cgkdglYjv+0cGWyvIUh8bKvV4GU18A8SeDnCPXbpvNLkOLAsgBKrbHsZRBCRyWowgifieLqeC0FK+UMSHbG/aaA8H79Xb0J5mEaoVRcQxwQbO2cyuN/aSHPF6MLFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784674714; c=relaxed/simple;
	bh=4pCKEQZXeGX+rXT9Mr4viwCXr/nAAAlxlyPblwqXbtI=;
	h=To:Subject:From:Message-Id:Date; b=rc6bH4F61cQ7A/HYZkzyn1gQ/SMmO8LXlK6q5XUpKn1spjH9ilA6Ae6Ff5GWI4m0i1aGOTZ/7DxIyojx/3EH+jrTiDqnKBTH/3J1Iw5CpB2POql4pMUor0NN5QnRwe7somTpGQ0S3tGvHpEQIkRCt2mC616najQIfDz0/Bx0/kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yt4khU7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yt4khU7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE32CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784674713;
	bh=4pCKEQZXeGX+rXT9Mr4viwCXr/nAAAlxlyPblwqXbtI=;
	h=To:Subject:From:Date:From;
	b=Yt4khU7QKFOBTQgSdX0+bbzwlw51FvMDzfUib5uJlS9ofeZG553WxfFlMMY5n0QGY
	 Ni8oas/3gtJ0OR4QZG1EI0KzK3ocjxsvkmD0B0MKqaBDXqa1+hTH4V21p1dwNlcT9P
	 EmetSs8I7/fpwLrGJfkEQ9MNf0RcQE9zQiFpdw/7R5cXr5QLvEwiro4jkef0H41CHz
	 uReLfbXmAY53oJxYzFe2Mj61JCUfgknSUIxTC9r81fy+SFKVsxH/yPx0GIPFpXRd07
	 wJqRiwWfSKv3U6Q7oPm/+DV3za6YWeLOFGvlSNftnwSeeFBQAq2yqyd/5xzu5LQjNT
	 ZOAmK4IwQpfAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA03C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467471369.14754.5851339116976190095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebb8893520ccfe9eabb756fec56ef40a1e10c912b59ff88c2a25f140ffd67f7
Date: Tue, 21 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784674713
