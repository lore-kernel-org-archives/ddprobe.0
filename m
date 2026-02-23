Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1719F45BE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771858494; cv=none; b=BgdSi0wtQbPmcoNLV7p0UPj1bk0JSvWnZMcKFahyQFT2MJIaVbQR8IB1YNNnid+SQBzQC7ErOYiGdQo0Wzt3wE4fAYuI+FraM4+r9olqMb3E5O/fcPZKQsW4U626ieS16LK8/SiuWMfq/ISGJ28qZAX+SscQDGrTTKlskD032M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771858494; c=relaxed/simple;
	bh=vYTStLVb7U4xXJzUloDE/aeMm7j2POCRT6dgJC9Go6I=;
	h=To:Subject:From:Message-Id:Date; b=i8+iaK/Uu67u2j9T16WRBa4bEXYnt9JYKejk/+CzEJJ97VfwSdS+04vw0pWKgGJui6ia+oggYCrgQg4Rg44EIgL9NxzhrGCg8ow3vRgCEZGeJnR1wgLqsBnIEmvfXugXS6Egc9yPyhStS5GbjWV/vhFYbiIw6N9wNC607dLLP7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3MGKbXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3MGKbXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CDBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771858493;
	bh=vYTStLVb7U4xXJzUloDE/aeMm7j2POCRT6dgJC9Go6I=;
	h=To:Subject:From:Date:From;
	b=P3MGKbXMrXxibhWZiABTyqKOywGDhINL8Cfi3e0zWVKX28gXvL65k6Kuc1i9jDr7z
	 twxbr1/U6vq1vZC7RMR/IwrmDhGz/965GSYkTsMYg8TJ8CD4MJMnMLERo0yxMfDJdk
	 9dIc5GBVZ6ZD3WRl38abs5cRmwmgdD3ULpKsE9S/C1Nx5N5GMa6jfHkZJNsFop2zeK
	 QZHdNa0FPGuEjciAhWUtN9c1k0HDLrdEH2t81dEAtYEa8neIajV3o5IzV7Zr+ZpxqI
	 7xnW7Xq4yUwkP7Fg7/93sCDQL2kfn4W7WBnR0kG+7fIreKmNOa9rCFI1yFfaPSvM+9
	 HRHZ/vz53iodA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91274EA4FCB
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185849358.9200.1485946532251275580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230c6c3f9277f3dd036da7a6bf7a0a23764653b5530ed5f3450809a6f5bd2178
Date: Mon, 23 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771858493
