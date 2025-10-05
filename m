Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D7186348
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759679994; cv=none; b=bM8IwIkBzPtF9Sbv82I0MaX3Q/g76KusD73/SwC2C0kof8+nFhJOEKbvv6q2an732AkAPK3PoRrgFwMWA5amidIsew/PYHtjHpVdv7DhXk0ix7ET/8SUT+L+cruFgevhIMjNtTtNYAhTy/DdrUK0ColK29Jzr1lIRChBRPfBw5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759679994; c=relaxed/simple;
	bh=RKnhRKf0kfhe2EFjaLt3+uiJczeXZcVN6DUhJQBDx94=;
	h=To:Subject:From:Message-Id:Date; b=qpRSX/E1/GeajfDfSk8DKn3rS5WylOOmD7LiHy4ntTJhGMM9PhmZLlrc6TSgvpvvk24srHH5++pxNj++SY+Zq2CHYkl3arF7fE9Del7iMEC7m5OvJeQsZJLiKzGDSxhZ4ztTBMnNF5ROoS+rDtk6gjUC3aIEc7PwG3qJiMXVHPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4stIria; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4stIria"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72D9C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759679993;
	bh=RKnhRKf0kfhe2EFjaLt3+uiJczeXZcVN6DUhJQBDx94=;
	h=To:Subject:From:Date:From;
	b=K4stIriaduuHEZ3foTlk8YNUXSVR1Vz86uyyNlNWG/qiCqmAS7iFNSDW6gYxVsTlU
	 USGtToR1AQ0AozA+JAyk/0ek4Zyi9UQLqSPR7zAfZVH8rYpsYeABMZeoewwlMHlQpL
	 CvIO30mZOkdURXxUhKjzxZJ9GtPvEsfbT83LsPJuZWoQb7AcImd59aXgY1f9x1MVnV
	 s6mPI+WYQ9R6vPvs67ttoXLlGXd1S2MyXPXu98K3Nz7VJvMlh0z2e3zf//PpMdxOqX
	 7IGH93Vod3pjvAQI0R44AfHA6vBkkeHciZMDWJNpc3r/oT0oemoULgKnpWEgEGwGD7
	 HLtYhqcr0eHOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93662CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967999358.29823.17030828997149399468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0644573500f5dd5eb001facb1067f3e1d80265234ada9a80e5b9b802ca4c2130
Date: Sun, 05 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759679993
