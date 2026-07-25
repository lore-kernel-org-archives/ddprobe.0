Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CA04908BA
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785022234; cv=none; b=Mtjy8N9YxdazPaqgauHmpUH0u4Yt7AUygqlcdRYW3pHhGCpPCvCkNmsVtNJXKXAyS/niqsFSJD1H1ttIGV62VV4UG41KqFxVVAoa5emizEzjUjrc9OGnhSW/Gc698jctpe2KJNiIz8bMXzy6S8HnWhTSMRvT8UyAK/Ma6OUtTug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785022234; c=relaxed/simple;
	bh=YDZEhw/SeVwi+cloYKipdbYq4jIOdURkLazfJ2KeJpg=;
	h=To:Subject:From:Message-Id:Date; b=W0c/J3bc/dRpZkY9dK0hcHVvs+Fykdam06+8WbWeHPR+/4uRrKYDf89FFSp88qrMJydv9voYINQmxFjEDCTIXpC/gyzKNqhhF64iWWLiVoxNLQ4wtBo4U241KI8D2MThUj2Oa+wHqO0dSBBK+8J6vlm72MTZNJ/pEI5+99MRSiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJZt8Ck/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJZt8Ck/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1145C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785022233;
	bh=YDZEhw/SeVwi+cloYKipdbYq4jIOdURkLazfJ2KeJpg=;
	h=To:Subject:From:Date:From;
	b=NJZt8Ck/94sqn+gtOMjWHMxA4lkcUoXp6bhdr36yXAFQrlld99GEmFiVX1muT+M+g
	 AYAlFLzohzKgDy+aGNzRheVtgbUvksQXumdqkoWw30IY+wBV0au5uRJij+NXsok/jJ
	 /q9tHHjSB4jXvXnuypWHd/RzKWBrCwGFD+uWgeJJ0F9oGQVbX0LreUhrc90YGoEA3M
	 E0Ln494GqTHXYuHGl/15ph4y7swl+cL9u8mPrl/jiwiD+85rJvzcmI5zRqb/wTlEMK
	 P62inQyNvEMANpw7Zxvm7RLu8Ib7XhrIYXPcwM3apTBvXKffWSeh+POAc0LEnp/6IP
	 1KEEavxG8NEYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAB2C531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502223368.15200.11277511063883157897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51f71b5271796eb8c7c4fed511a97842fc8c618c07df358bfcef67e0b152386
Date: Sat, 25 Jul 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785022233
