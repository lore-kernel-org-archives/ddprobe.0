Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF783A873B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781620594; cv=none; b=sXX7d/0VlathEHFqYwx9wvLkeisTvzMMC50ip1d8ZV869ZXY8xNZlIjKNLtAVIdJzl1BwzUGrGsL96NzwOvsaJqK//nDDTrIgEPViU4XAac3cmdGVFoICQIoBXT7dh4kpNGSn4kUq7BbGVj3mqgjiKMSUevBWBlw/Qg6YvuJF84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781620594; c=relaxed/simple;
	bh=PrGUtM4mmP1JPZEJahy7sU3UlHuf160u7wYbzWizgxE=;
	h=To:Subject:From:Message-Id:Date; b=FyZzOCW2t1/LNZKjp7ov46/9iM9+0Sys+cJfBdgKm+9VaKI47oSn8iQvTzZgg/u4L3wPTfynHoRtrYNEo/ZO0qmvKPnk/ATAbxwXihvLKQyBzPLB9QrurNx5kmiCHcIgnXz4IiM5TX70jxxvubYHRdvodBSZN5DmVbYVcoFjvgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/tVR5dj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/tVR5dj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA3FEC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781620593;
	bh=PrGUtM4mmP1JPZEJahy7sU3UlHuf160u7wYbzWizgxE=;
	h=To:Subject:From:Date:From;
	b=G/tVR5djbsLDdN1UidLELUL06MOBKzzzQn+GHgBUTgKH5aQ4RUN2mBPjRETFBMc3P
	 zLMY8dlXkpm3J9INZp0uqpPMfOzP+pI78rZCCDyiFrSogEBzIIzysL1Z7MENH5mMFL
	 QrprcgiBIy7bX8deWzfzsSaGOr1HdIfV6V5YZ6oStKmI7F90+Zdl+JIZRp2qwE0J46
	 HMwhA2WfeLR3xolkJ/UdufaK3RDcW7w28TWKw90ZVo78bHm6gMWctQpvUd417A/duK
	 pp55nrY/vi2zmLtWKdABwbJX1loXJodvELTE+xuPY9JeNE9aM3/Ju/QeyPFoGlNbxf
	 ubVEw6oTXOtrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1130CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162059371.12662.8358229773864515840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d159f9d9186156e5109d44bc0aa85766eb6208be4692cb6f19fb723629b43ee
Date: Tue, 16 Jun 2026 14:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781620593
