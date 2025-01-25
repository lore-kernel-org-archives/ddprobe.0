Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B420204C37
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737773754; cv=none; b=mNqqWempdxwUMDvl0Ib5sBg6U8IE+3hb5mKkRpUscKFLh+Fsu01yzmecllDHL7RuXaco0QXYFXvoy3Xg7QRVQqoN11n1iJ6ooNfRq/ASOo/fTbJnqiljjOQX/pMPScyCV7pDjxlIDzslonr1oZix5Nl/XpsEFlSUBALmK/DUN7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737773754; c=relaxed/simple;
	bh=DKwc5LfM6c7gFPxe7KTflK6IAIgQM+sfwZPrebQSoAw=;
	h=To:Subject:From:Message-Id:Date; b=KGIEEy2S1K6sOC4TNZqXsijWM1qgKN5FYAq9wq4xsPg4CAJNxDjBue6eB8QE9sK5f4sXCfegLEVLqF56cENiQBdsPEyveSFD66c5B4L6jfGPe2MOMhb6XicG71Z0Q4I5oj6xKc+yciDFboKV+JW+ofvFe4i/8MenmifAx/GuNng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sM1TA503; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sM1TA503"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4362C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737773753;
	bh=DKwc5LfM6c7gFPxe7KTflK6IAIgQM+sfwZPrebQSoAw=;
	h=To:Subject:From:Date:From;
	b=sM1TA503yvj5uaqvwMnXwiRnAHGlbTKyp1NFz+l1hQKPi9x7UhBUj4ej1qE14uuYi
	 9sE4Bq0XJKdm+BxD093MJ77B6WWMNaDXTeaqs+IPy+XysIn3GBHjdeEVZWBgx/zT4f
	 mTVJyyfDtJmNwencTeDiIkwGXcTPE2yUqgtnqWAx9PJ7IKsNgYXQyQITMlOVY0p1er
	 ZOYvKZ6GyjvHKBvrusqKXKIOxr3AO90hhpzXmR8xszkA8rebVDflQ/bq4M9igyPFpe
	 wSPNRb2lvHnsSYSZyVcYaKo+OPN6+TIAJvQSKqlgPIdMnmm8WqpqKGpavt7kx3+KkL
	 JGTyVY8T68T4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945F9C02181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777375359.25387.12014850843815994803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b1e73171bcca06252da57660f63c9a644c99208443318e8f9f6ac8bce44a3e
Date: Sat, 25 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737773753
