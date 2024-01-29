Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD53155A52
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706545097; cv=none; b=n0b9pRZo1xxGBigU451aokzz+C+YvQXDtV13yiuNRFGxjcHlSQjKrekJeoSVL2UQPM02+d3ec/iqVYWzsNU7TDlszt2tb+JbEe8ZI8+AH/w0jjAyOpKBaLnIc4BM/ZK/tigqzZvPQC0iJ/oFJx0BLD8jOyUiwXUe8gLuFldxGwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706545097; c=relaxed/simple;
	bh=5HSs9YJ+ZwwRnJil0azyg/T2jLfDnT+cqZ2lNafb74U=;
	h=To:Subject:From:Message-Id:Date; b=Y8QT4eXRpq/KZpueWBQrZ950haw/DTAFUaUsgrYuowHPcSXVH7ZY8LVHd+ylSwRRyJJZI6vVVunMLcTXnObjmjDQirdJ9rFWtsakoKss614CzpOUFHJ2ZZT+rHSE1nbV02xmHGoZNa4d2jXRGYvpex3bScgy/DpWghkZueH4AaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTMDayPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTMDayPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A049C433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706545096;
	bh=5HSs9YJ+ZwwRnJil0azyg/T2jLfDnT+cqZ2lNafb74U=;
	h=To:Subject:From:Date:From;
	b=OTMDayPEQjTbqvZfiVpnNltyEdRRqQTjiY1YXkQzJIcdsfxkOvLFGmkJPOtlDosg8
	 USoYmLqWAHjwNo1ca3LNJ1GF1pS6v5c+2qojj5kG9O1M+nFYcTF9csXtv2N4XIiQrV
	 5Q9FG5bVQxQhqdzrNElbFUxVQNwliPmt3+qd5yCJ4TAzgZPHX/oYVHiRyeLTKA6AIB
	 rdO84D5wpxNFyp/XG031xmYvQlG2+M2sUOINI/iPECMumIynK3N+mPP8XZUGqvOeWI
	 5aH77974F5JR4XR8Dn6W5KmMTSsVUtOHl1OU0Hg2umnKgkzPK2WY9X+GBegcnvmeoO
	 edTu6HFplqI8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E27C47DDB
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170654509639.22516.16725814301394186063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9976f2fb98315be8283ca8b2d7a1b65260393993ccf1befb9b361e5abbe428d
Date: Mon, 29 Jan 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706545096
