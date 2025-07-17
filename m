Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A7F2E371A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752714594; cv=none; b=DmPssLR/HOGC7iGNpqhK/cSf2VH8WfaP4p/VVSF0syV7MnG4ggQxwZ5DF3ODum67kQoRob3cQwUJuMAPo5x2NHtUMJSXTG05ZRfa7xv2gN6cpFDq1b4HgHCEahLpvasW+25t3S4jh9E/xXSjLbJ2x7eOzx/3KmOGX6CFPYvTegg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752714594; c=relaxed/simple;
	bh=tmMTLb07/1yKnTvWccR+99GM46om8xzzHl/rUBseFis=;
	h=To:Subject:From:Message-Id:Date; b=ZcQaWcofgwFFnOzNN0a2m35kQqJYd3JmvWtgr7Zk6xCHrWlxo2sbBA5M+AuYCIX5WUztWTaXcmDIzlIMtOZJt/h2OGkgjqaZksqX/hVn5vvVDGaESevyZ2FBQ5J1Z0F+xkDS29n1q9SGtq7sdbV7lstVSoF59HO68ieMtntdxOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tsrx5osV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tsrx5osV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9ACC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752714593;
	bh=tmMTLb07/1yKnTvWccR+99GM46om8xzzHl/rUBseFis=;
	h=To:Subject:From:Date:From;
	b=Tsrx5osVL3wunw1JJ0vO5r45DVPs3nWNRua46nsMPL+ZHSQZC4ESdse7nh1b2sYL3
	 AVtVMEEhBzQBCsGsFk2vsjd9+8zucAl3vSC5RFh9RnNcOG+/nzrblU4jJFEGOhgK31
	 7/jCjriOg9uM/Pfz5ohpumYpQ7oB9/JklkdZ4QnBY5rhjeZGa6rTN4dpa4tLY5vDmN
	 sfyyRqQsB9K6QFn5SEfIecOvVHT5lMzNkOv2X7SV9Xz/Ss7y0Lp01ZaRLrCZNpmxQc
	 VCbI5GsPcsH1R0gSHqOjGFKwYDno6jx02YzwDsnNJYnDPcr5XWNMgdMr+8NpYxw8ug
	 1TK7SbEpvoZwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA73C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271459358.5380.15968140005921884310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b443b87be2059aed8f05af13900fa0a224a9c88accac7a41fc5ead790597e3a
Date: Thu, 17 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752714593
