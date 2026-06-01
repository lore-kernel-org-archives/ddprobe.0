Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5C3274FE3
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780287874; cv=none; b=fcTIzPDJk3BFH30s/7G9LuNSHCqbUxBEB0+vONXQxr1LXiE8xaExCtdTGKeApp5lVBN2/JaZcfjTt7Ug8QxGuQchvTxk/Qt+Ub9lIrZnz1je6g4f2L1ofep7ZnkbtjpbwDsaitVzzRycHRC6dHOmvFy+KGk3tyN2INHAXDt+bOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780287874; c=relaxed/simple;
	bh=jXvaY4jND7+L6QkdumjG3YOxH5gh7v7AmTkFbPxT7Qc=;
	h=To:Subject:From:Message-Id:Date; b=bYoi4NGqHIDJtY4zxm781zsxNYDYF27kRGGMkDULSXFbGBBGM2BVV3Lfl552x0l6C2Egi9JEaKvQcOinfUNHJPAqIXZSk1Z8l/K6aV5oawHfK42GEaIrVIxETq7RgSbIHSrSlXwA6ZgaUuwIrpXe7D2n4XaYBqGAAvuPvNpkNNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPYhCTri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPYhCTri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB495C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780287873;
	bh=jXvaY4jND7+L6QkdumjG3YOxH5gh7v7AmTkFbPxT7Qc=;
	h=To:Subject:From:Date:From;
	b=pPYhCTriUjtWXmAU4u/+CprhaVmk8T9Jgvs/y1Ea4Wukb2ZyciL9TqtlozXP3NKqA
	 LcXyDzGo0ocMi96STl/ilZPZxiRhNcigsvtdk4UffN97EntrF2JDQLk1UnfbhK+dxi
	 /w4aPZZaxC3tg3bge/9NiV2Gmc65jEFcALEQEN87ylu79z2BU+zyQ25JOmjQ2FKWq7
	 h6mH0bHVTXNSVOXqVWen487Ti4kFh6nr+dN5rp0P88XX0p86tzgevjhuf4m/PLX2Pf
	 x4TZ32LZ9km6LUIZb3+7b6geg2KyYf0Ok72YaJ0gAlNZL0jcjIclBbNXdTgjpFKdS0
	 riWedh5eQWm+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB138CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028787373.2575.10751607311938672970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140bb7042adc2dfb3af244cc5a5096b7d6eb2ed87555cdb2b58c20fe6d40e32a
Date: Mon, 01 Jun 2026 04:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780287873
