Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C68E3054E4
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784842234; cv=none; b=aI7lV9eBBs5l9I5RGLtMbb1rMiYfctM1RjZf+qPc5941WlIXlI6eB3d8yk/YwyiPi7WqccaMAuOQuACshEZbQNK3dFfGmNzskNin9Hsr5448xTHn4Y7vzuxbn1/vovXj1v3P+UY+DouFqtKnalmVuCVkMAu03WrVwTfJo9o9l6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784842234; c=relaxed/simple;
	bh=kIwDbZFNd7xZ/lJ0+0okbJ/QEKNTeNCEUqvf0Iib6BE=;
	h=To:Subject:From:Message-Id:Date; b=p3VP68d2LaA/Yir2Z8KYE8LFugU9oC1MoYfDFbSxzuYciTG9i+vwESINzpI1+4Cz3471xp0/ffOxgwVcwCK6bIzuERyOm5YB4q9e6156gjz9C9S1t5VHzAcgew/OcLIBF3dKU0klJv0toyV+r4w/WXGg2ksNWkHvBlt5W0qc6JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbX56BOn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbX56BOn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E6BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784842233;
	bh=kIwDbZFNd7xZ/lJ0+0okbJ/QEKNTeNCEUqvf0Iib6BE=;
	h=To:Subject:From:Date:From;
	b=AbX56BOnSiWrGMO5OY4Cls+WskimANxyvkkhYp0s7DLy2AYivTvlskK8RSYkIWAV2
	 ris136N5dxJo4IZ25UNToB2BHIkOfjwr3Ykv7JuqFQYrVS3VerjtXbLtw9pADFu9WH
	 C1OW6iSbN42R7FZsA68xz/xA0fTFiIPfGqiubGsnbzM7nAnYcGFayCLlP3SLrcz86K
	 1R9fYW0ntEGZaQDpBiocyZyd1XxY2rZytV255a2p3Oep8ETNnSUicUVXehoVynBgEc
	 uyzoOFjidT7j7PC0kgax4EpXxdWjCvcF/ztAxsMZg9iUfvpjxdM3gHdDzvDTAmonUb
	 03R4UoJg4b//g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB70C531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484223368.23913.17786889181529224983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262da530dc57273af9166f0912b737bf22c45e2df5378fec3c5edd7d3d974e8a
Date: Thu, 23 Jul 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784842233
