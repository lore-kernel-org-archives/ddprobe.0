Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAC1278E42
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746723594; cv=none; b=BXh5dK/p/1A9tGNpvk48bOPblaWRysR3vHv70UvtUMUzSOr01EwKPJ3nEQDBWtY+gFZJ1WLU181ov0aH/MPciMw3+13wy/SsqeJSjXDs7f0sEUoFxetUxWA/U4bUbkNjqFbEv9C1Py6rwcp8iyY0IqWSNG8hY8xiBfYoWScSF7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746723594; c=relaxed/simple;
	bh=+TbVWhdqab6v7Qtg3Kwh51GkFlvdLTcpWeUEyiSEcFM=;
	h=To:Subject:From:Message-Id:Date; b=MHoz1SUIni/7uqGgPw/uCoxFhYPuQMPsyagvg4H4j5p0HGx3JG4P/NXQWU+yBTR/dQ/Z/O+l312toSIG0gQ5Qw5o6IMyAW7Qntrr1JTA1rBxaMBLbjl5AUEYs949R0Jt+OOZXp84ZpKRSlwk/HfhN06MCfgoxHEsI+lM3i67fFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVZ96pq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVZ96pq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA1FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746723593;
	bh=+TbVWhdqab6v7Qtg3Kwh51GkFlvdLTcpWeUEyiSEcFM=;
	h=To:Subject:From:Date:From;
	b=NVZ96pq6eUoRd1CboT6v3PKhPQdF7ezzPvecoRwVye2y4V3zCBFN2v/o3cvKxMWxf
	 RTdR+19pKg23g/zkVX8SqwWiTHD0qLBUJNQZtRMrnh35fE85kq859ZzRabGHZEYE+m
	 xr3Ktr3fG9CC5nMF4QkyLO6JrnLmziRXJaudjXNJb1LrtCWSynLz7wylZK/hej3DJd
	 Q26XApTUPGDvwvYwowCeKClj9xtsyqdc9aAC1ynaXBPxt6FTWCsJ5aYUZxO77Kir62
	 YHpRyRm0I8i0P+sSbO4MEDCIHmhLlfWRJLKtkFds9/BDiEQY7K/eFDsNZs4rLFpWU2
	 9uaCfnvwHrZNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F068C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672359357.27285.11806518062660473177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5daf33b5c9f0298187343494f7d9c8fdf3decf983a4cab58b527e2b04b2ef80
Date: Thu, 08 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746723593
