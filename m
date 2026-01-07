Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3053939D3
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767806034; cv=none; b=b6AjrBUCL55uxmUpi4rtsq1UlvN1ruKwhQusUX/Gy+WbkpxvS+zrMfmVH22DjTi5lU6fTMwm5J/Ltjv/KjU4R3mfF3+QHjKMYHcdrNLn4HGJCoRcFzMydIJbSRo4HgeJiGODsWDIife1eZnq/xohvGOHI+w78KZiLFGrGje6BiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767806034; c=relaxed/simple;
	bh=XbhXo5xD3w1FFXJOuFRp8NWBr0Z8VYpMebItUqGvvQ8=;
	h=To:Subject:From:Message-Id:Date; b=NDtVuJeaK2DAWDEPsbBY9sGZf6bxfVaP2Ac59BxqdXP9QTGXWYU18Z6ImN20tZ9F6pHl6lP8Ev+fT3B0hCGEzw+Mwx20dBOQqkx7bU/QfDdutQHvdP4ZNiDP/iDimkHDje4OUjUCJMN7gIM+DcQ9Ds+NlksY1yUh9wL4Yxb8pzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVC93cvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVC93cvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD6CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767806033;
	bh=XbhXo5xD3w1FFXJOuFRp8NWBr0Z8VYpMebItUqGvvQ8=;
	h=To:Subject:From:Date:From;
	b=CVC93cvL/GgZRIVcpVW5GcFrvRyz8h6K/uUQHEKp1By/rYAq94xNYgpjtOQaTL/cZ
	 9HEmhMBJfVEcP6Nq2KpgQ2sUZLKZc2uvSJm9EGNM973rtDPSWdHxmWAZAzQDErRaPe
	 K4xfx9wQ31SSU7p1oggAe5jbVwP6NbD7xEF3mAuNbx4ssHh+Psl5djYRetICu9ENhL
	 19+3xXpzVxSvUixjE9DAyU9G8q8FM1hmLD/Z86xn80Qy+xgolX2L1z3l9DUsb4064+
	 pneatdqV6yRQATQ/q3F0NxY+ean9JJ7MSv2p9U1q+Zqb1rMSZzCrXH0nZ0DNFqKyFX
	 uXvdWkQ6+v08A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA05D0D145
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780603358.31885.11966588594004175684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba56ddc35583deafa41b17693dcc23d62bfa11ba52d91873295ef49fbbb63d2
Date: Wed, 07 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767806033
