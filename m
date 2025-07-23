Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECDF20DD42
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753302594; cv=none; b=HCZOwYpooVhcF9QsauaIqaKWENbU8cqUr57vx3niG2Ah0Cxzrab3uadk7FZ4bL8EfzH9G3cOcA9neSzHF3w+dgsRHcYskcNcPFKkgLw2GMb5O3MKIki3NQ7k2wIa79sYgVuX7HboS+lHKg12487C5mE4wAmixuAOtAVDOc36Hlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753302594; c=relaxed/simple;
	bh=WPggJc4XBnTKiYXVvb6rp6rI339YWuNW9ST+nAhIEPU=;
	h=To:Subject:From:Message-Id:Date; b=mkVayyM3X1QAJmkEwmMSeScTUx1oqC0cZr89uaV6zwSNUrNOvbmR4Clf+17a5+vtEbz/G0woaekRygjK4NqBo1t94VR3s66Ulmi9Taer5DCMIDJSTWALpxyHp5w9HUjRogMI2tduKNVe8rqy7pgLk5w3C0rMSALPWbVUYu4ZJP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDdWp3Yx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDdWp3Yx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BE7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753302593;
	bh=WPggJc4XBnTKiYXVvb6rp6rI339YWuNW9ST+nAhIEPU=;
	h=To:Subject:From:Date:From;
	b=LDdWp3YxoN1z/Xg0PlJ6LD4IUWyRtGh4zN+stILcS9kuURybaLOtrELocq9R09xxK
	 nJGqKbuJhsTldXcPH2gMsn4fEvAvse+IXVWIA0LABF5k42FTHItQ0toMITLr+HE6G2
	 8hzv0Cfnq3Z8wZlXWhWLEOm+ZSQd1tKj7za5Yh5qPcJfjBuOTT83D3LLmofC7q5wDt
	 C+thv5Eu4YABBZactxaCGLPMQ8LSjpzA1wdW/l9R8J6M+RwgziZTh6mAQ360IC8zD6
	 NO17iEZNrkXqCEse1M8xYkc027GyIiNKMcz/ndzRBwsltvTk5SMF9KW4rUL9qJPEB1
	 uoA+H04i/SdoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F928C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330259357.24318.6822461663111736774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1084e9554d8091c2dc77aead2cc419d38d7e4663c6f4f80f84efda83facfebba
Date: Wed, 23 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753302593
