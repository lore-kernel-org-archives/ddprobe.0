Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3047B19CCF5
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748214594; cv=none; b=bkuiRkkoHSCpRb6xg0lnzkWDywOqgjCkkBLNqUUTtCF8yC+64vNNQmMdtoXr/nik6j65Jo3PMcHea8Ako9a8jmrKIhA7+cPQDW0y6rpj2oe8kkn5JtMRtBItsdKLUPoB9mm6VTtZROpHpOziuGQob8DVzqhMwMRq/SGjGEasjGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748214594; c=relaxed/simple;
	bh=jcr2dZCQpeXDuf4078BVJQnPyPq018FhyjYzNXx3qiI=;
	h=To:Subject:From:Message-Id:Date; b=i61a0Ptk/djWVot1zv03OwP95L0Hx9FEMqKx1ZXuKwqGcGYwfKRLIm+oqDX433RNtzTvNhOHrQmekACsilT57AmHO67NmITHZU8llDRK8rqdsl3deIN578Zrgj6qwrE19PYZm7XgClgW54lYv3O9zu1DZ53i7dpMzb0JLxSws/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9MeoCrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9MeoCrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B2FC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748214593;
	bh=jcr2dZCQpeXDuf4078BVJQnPyPq018FhyjYzNXx3qiI=;
	h=To:Subject:From:Date:From;
	b=W9MeoCrxdqgSVIDVqWEulw8P5MqEUNxz5KAjmQ6Y760y0kzfp++LNdMMu1XD06eTm
	 i9oO5UC+QENF/trVwHYbY58lbzH7y7YCZtoHL4zBQHZFNvpdwAr1Odceb7q5+5O4Qy
	 UF08+uaQoD4g2DlE/SsL4jZYM+LVTovfy1q9pBqI84wHUya58Zv5AA0c6wk1A3339w
	 UDsq8yr1etfi4RNbSJbn8a/Mp8ONS1my0IBV96ABgFtcHN3cq0PSvPhP0P50C196mn
	 B1b0vl80K+CWb3MuSnzp8VhsVBx+N3Msk6bXuuMlxFA6qsejL8VxlLYq3iKbpyufu1
	 LxFJKOUuqPR+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9428FC54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821459357.21206.57539732350920692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34aad49098cd3a6fb9efc9995e1552ecae744e5d502920fc9f81181a2a8703e2
Date: Sun, 25 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748214593
