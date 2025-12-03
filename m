Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB43299AB3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764755573; cv=none; b=Kqx2VW+Z2frcHNGD4HwCcRAV5EQsUbsfd6YhZ9AfsdMIH3cJhDuS46Qjyg6WLWt7neRTC9Ss9LZveYoQFIknmW9IaOPu7YAkcTYJjbRVW9FYBnL3FSCbPIamRdvULo8S04yGgEmxdD6SePaKxB8GzyuyihI1G/qqBh9FQLa8l3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764755573; c=relaxed/simple;
	bh=L3esXnFMAOsXXlNIX+qXtvGTt7IkYCbr7kcIVfjtxKU=;
	h=To:Subject:From:Message-Id:Date; b=rYN7n4JWqSJhfviG6G3+D1mrGFo0lVYO8lT5X8b8V3A4t9vuh3IkFRQU+c1qZMOPuzs/SnLuyeX2yBZq8h2Pyskt8ocl29mWRoU5dSZgU+m6muBerzBE+TJxHCRLpLdLawBi5cY1PnMG0PVtzM9mNxro6jX7hEhWO9TTmX3aD7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kv5+7in3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kv5+7in3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A192FC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764755573;
	bh=L3esXnFMAOsXXlNIX+qXtvGTt7IkYCbr7kcIVfjtxKU=;
	h=To:Subject:From:Date:From;
	b=kv5+7in3LY9J7bYvfhliGX/fZUCQzrfLfg+jejPOjnENzzYRuH2Ufxg7KlQccz7AV
	 Dk2EAKb3OEJLAlCSpRKRo0h9+LCGYbC698dDOo5RDaUqyGy+pCNHelZcoU9wCBBwOr
	 9mPlVVvWdcMmsPbwTwnSBRQvE9NmT7xpiAy4dMu2EDIl9Bm5+rdWLadW/+9BVQHS8Q
	 8CGyl9EyI4pY0nE/Iv5OgzXCi/FgHkaiy55112ojrwCnGALTMHHo5p15hpzv4QYQwt
	 YqiYNrX+xfDNLL0TXH0xdR5FFlrNvd/cY+CNi1IM9zF3Cf8Z8I5jBFKMvu8sNowkqP
	 qWMU0cZohhnew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FE5D12696
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475557359.14967.15429954947747486819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c95b0f9212ea887b02e296b4ad19879a1cf5c89aa1b3557f3e6828e1d92004
Date: Wed, 03 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764755573
