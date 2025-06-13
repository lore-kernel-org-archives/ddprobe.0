Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D62266562
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749851394; cv=none; b=a7N5ro1h978/ewd0MoGfBfvdiRObP90t8yZkg9w1Ba2uOfMe9owk79i+IxptSjwtIFUqClu0/zocmDIyL/THPHlwdFR4IVmXH5issk4oGqL1mnTandl1qP/rZtfYeqgFulgsUwFIdYAAEL7xiS6tuoD5ykycbgJrXtTWwyJjGGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749851394; c=relaxed/simple;
	bh=/XGUwZbub4RRNYR/ZJF/9s1Wlzfw8NfPg06pFVF1FXQ=;
	h=To:Subject:From:Message-Id:Date; b=L3hgKa2FFU7ichb2pWAN1Ql9OoAf5oIjCBgWOS8hqDxJY8kx20chZih+V+K8YczaqMxqUI166Szmusf+U014Vf+zij8YGpQpwpsBSGJ41IwQDACM95MCi87zIV60UDhAl+s3ISuC4CUCnzqIqUIa4L2Falvnd37QAVecYAujHxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcnBba1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcnBba1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDDAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749851393;
	bh=/XGUwZbub4RRNYR/ZJF/9s1Wlzfw8NfPg06pFVF1FXQ=;
	h=To:Subject:From:Date:From;
	b=dcnBba1MdIKAnmCu6BLvKNTGIWvTab+K1LGKFe8ez6e7E1HX9fe0QaxpPuZ+Ua4gz
	 Pm9fK1kmxdvNS7PFYvVa1e+qaFGR4fO0Q8Q3JHGNoFjABB023qSUTXhkCrUqkaqIKg
	 Sn9AYPxKObSwEAQ7bKNKWEKH91v4pX2OKTnOP6f/G/m+Menhu4SntFbQxxQ68N57mO
	 CedjY0yy+SHPAulSFEcaT1Py3eIGH/2KMMpQJ62ZAIHzlXsYZdXcA6HAG69iQ9UWV5
	 6nv/yTSH9v6v7gNlHqjzeUDyYCq3JM0BAJ+YJmJZbtM3lbDU7dfErehLBn3JW2/XCd
	 NgK+cLUJFADEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA06C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985139357.26770.3279009136811214173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48f5d18990a713f024fd80f99888d49441627942ffa1e008a9c3349d07b646b6
Date: Fri, 13 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749851393
