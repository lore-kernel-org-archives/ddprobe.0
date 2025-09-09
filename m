Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2163E35CEA7
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757439594; cv=none; b=sXlkiG4DV1SwpB5fy+CGCm2k0o6Gy0cdblO5T89c/MzupDS9oBA7p/Mdj5q0UqQBT6FX2s5oIaKk1ByGHTyvc1h2yczQGcw9lpjaNWv8iKM/9jIf0iITmNT/CkKVs9MQ7ZD6OecmjfhuNSiGp0kEkbsiqH3HJsH60U4FxXKu9XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757439594; c=relaxed/simple;
	bh=QA7/h1+qxA4g+WJutX2F/KSbp8hHLd4zXbpUGJzJrG0=;
	h=To:Subject:From:Message-Id:Date; b=OTedlEHXw5RfOuLN5An3negErc8YiF06nQbI2vu4fF7DcVwx3UAV9I7OIPTYBvWG45WTwGPbsK7UkWWBC8kyLlekYxpGQ64TThNdJ78CUznteIPv0h7t+3W9rA5Fnxijhgl/MsBGew3Z/blMKXV/K9gH/bPOEeexyaoq6lVML1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCIFFARk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCIFFARk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C22C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757439593;
	bh=QA7/h1+qxA4g+WJutX2F/KSbp8hHLd4zXbpUGJzJrG0=;
	h=To:Subject:From:Date:From;
	b=ZCIFFARkklHUrTLgaw4JBSlxMxaRPIdXvrdla5p1tDVTPJnFk+j7VTeFonptuhqwx
	 qs/9GDm+LxX+E2DoseI/L3C1jO+TTCt2Nn5mywuMJFMIEwbCDTjjQ5drewMo5f9S52
	 COaDlrdyUGvIBPQX1tzN3Rt8gzNGrk8zL7gl68BgqmKvqw4Gkcz4cJDhnPq/cz/pOk
	 IqlUFRHnfyLZ9pmJ7RcyKitI41vHxI3C1j46jivikH+etPia7Ua37d0fzWeH9EKxMD
	 wWgSQ1TBGnaFCNtMPRtDUMePMF7E536RHNEDBDFNZu+pfTf7pJb8BdXegHzFNGvqT8
	 TkeUT+DPmg8nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F422CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743959357.6196.9401285536098267701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c798708fb1f1af50f95fbbd502b7e56faab79fab56bd5c6bd057b46357c5e308
Date: Tue, 09 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757439593
