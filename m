Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3761A625
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722902754; cv=none; b=T3SgPJzO81tJh+Srhlh9hbgQVABZIvjUIpkJ+o0L9JqYOEP9K7XLE1sqAJ8q7it5X9nv7SikfkAfwrG8TGsxr47QzqGbKBd3sJQqqfvuJY4OYjqsjacImjPrpjlZT90iQb5664woB8XYieurxpnOaUahMWUxBHnOH5J6ASiA+00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722902754; c=relaxed/simple;
	bh=0j9ohyAvRO9DGJX6lNV3huaN0NNvuZgJEGBXih8JgY8=;
	h=To:Subject:From:Message-Id:Date; b=HW/FCw29TkgKsTI4iP7nUqPVBZcPsVtzSjKtcir8z7enwN/M7hK+Y0Ei2w59IyqdSzrAkTweYhlhdHY+qg+BiYdGSocoZ4CjoUJh01VMvHXmBIfbt5tOS6RveGjPCxiZzNxwdm9//3kd7hnudduIy0PbvDeKhFzqIkf69aXUAh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kx11GXL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kx11GXL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FBBC32782
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722902753;
	bh=0j9ohyAvRO9DGJX6lNV3huaN0NNvuZgJEGBXih8JgY8=;
	h=To:Subject:From:Date:From;
	b=kx11GXL/wylW94HElkvsbkW9N/YGjxVvLE1HY3MdpbXE4NtCE0+sSPWSeKIfPn9Tt
	 ICjRwILymDM0lm+dnBTJUf3ck5W98X5MzK0ZVyx5cS2X2qzr3k1UOs9iDg+3IunaFb
	 3oWgeLXyZdQjCBBxhrcbqiIBkMUV73v3ehHARCZoRZltJHB2NIJM5TLRv03X1hXlbi
	 n6HqfgwIl6OdMxnnFuvskK5p5XJjQZClYO5ENGhpB8+5PuynE+S8ogXpRzozhKe+Vw
	 xxxCkzBZylK9A82Qx+DF9vQwBebIF5Nhq4MfuOkBtbYNcMjiEyWxZatamZbEKYvUqI
	 nyvPx1SBV35qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959FFC3DA7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172290275360.18037.15411708901949795337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d646035d81749cd701a2c9a7dbaa381474f2d4a9e9c4cb74d1ec49a2489933a9
Date: Tue, 06 Aug 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722902753
