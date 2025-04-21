Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F4C21C161
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745273394; cv=none; b=MspthKE3r6zgUjlIARKE0wLaNTbjdqPklbai9357zRw6CbHHtdmUXE+n3kAw+eZ3y45lg1NnKESZxPBp1eWRgPOn6E3X0n36U1hpyRZtVFUsRDKuUllTbIm1rUUyo7Q07/Ihi3YVlcVcISaEQMnW7EMUsXko25b+O9hzQyeC8Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745273394; c=relaxed/simple;
	bh=8lb5UTnHLJM3bpLGKU1j0OF6rSO474o0cmCVmsL/awQ=;
	h=To:Subject:From:Message-Id:Date; b=NsQ2ndIoYXWGwtrogaOjpMqf4AOVxOkxPk0axYYvM02z0T920qJN6wWlVaEYExQyeChhf24ByGQs6ShTcRM7KVr7kwn+nHE2cwsVd5PZ+2CFKhXTfdFoy35A9i2TxK2JPel646rjL2RaGNCcudEtd8DPZAArW8lrL1seOIrAq7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6NYj4Tn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6NYj4Tn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A459CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745273393;
	bh=8lb5UTnHLJM3bpLGKU1j0OF6rSO474o0cmCVmsL/awQ=;
	h=To:Subject:From:Date:From;
	b=S6NYj4TnpehNUN9wGnDXD1/afXqvdAgjgQD06CGcszrX8dhx/jZF7JBOcAkIXSLFd
	 Qxk7G8jJyQJMARsJcn6eR6rWlyJKttiXJjwH1UNgmFpPBsAVaQEpmLRWY/uYhvFLaE
	 Z22Uhj1bdPkjmF4pzwoJt46IuZww9Kzb1LGUof4tIO+fJtOLZPjOUp+KZ61rKZMCKH
	 /oFBdLyFG+mbtOTbYa1cDBiKg2bTWwcjLIzNra7jLSLitDdqGChpmbrF2ignkn9f0V
	 ZI6VpjMAJBHQbT/3HkayUGGdJd2J/Cm/1xO0f7fFi75EwikazCzMefw2RbjK7lMWS8
	 bIAMRHZKVpCUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F60AC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527339358.20692.14100603561489576581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9262c4980d24b02d79f00a0578414dbfa4d23e0c591e641f5fd8bf3ef4fd5a50
Date: Mon, 21 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745273393
