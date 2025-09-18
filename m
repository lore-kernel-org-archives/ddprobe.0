Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1CD22D7A1
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758227994; cv=none; b=njCNiJUEaUS/W3kzCTLPnYcL3oPTsMzyZlrz49hYlx9ePxMx0tOGqn4xKmCoOYFMRE+ZK7VGNc9a7cnrhyzI4S4PPAp5Qw0llxSsvgzhL/mOy2RQYndUbvLPliyi/EymkjkO6XjMq+D7UzmGBaCwlJS59YiVg79HWXVytcE/fnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758227994; c=relaxed/simple;
	bh=U7jP2yikQsQyNoy/ufC4zobW0GsycqMTlzUBQom5054=;
	h=To:Subject:From:Message-Id:Date; b=EsKzMDE3FsTBqbioKHghCf8zIl0tXz6wgitj5l3QD5rmwVdl7Jj/fbbXTFHWO0SgK94VJ/e3yqjfmUC+RGAQSGRwj2lHS3cW/2yNoO4c3o57UeBtSmGzV0Xzemq78K7CGTTQ5X0KN0+nSmXHnt5aWP3Zum7gprZVxYRNRNLqbrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrbM1P7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrbM1P7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4FBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758227993;
	bh=U7jP2yikQsQyNoy/ufC4zobW0GsycqMTlzUBQom5054=;
	h=To:Subject:From:Date:From;
	b=VrbM1P7wbivY4HYv0Bw6bRKm6thXjAc2D4sUiJYwmPE6+WctcSD8O1TBeqbjlwqV6
	 wpDrFV1iTZ6xH7xjrsBD8d/KPdgt/pYbauaKDio83JZeIUFy9s7xlX4jEHIAI4bh83
	 Xmax2booQk3mUJ5QMGVncrqN2wnDBbSGgeWYcxpzUVo0QBAIz5sM21prmRVCHVcf4Y
	 hP0RF4xUBLm8N9P+YBq/X9K11PVsLzKX5hD6h73IN/ZlLZUH8/V4C2L8goVCrG8n3u
	 1A3DBoc8v6NlJje4ZkriXqxt6+8/7iT/4zyabdIzl3Cq66ZOYczcNBS3ATTgiHL/iC
	 dKQG1wsQfocOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F366CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822799357.16818.4592143784145141110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da685248c45473c41897e96f935d7fe9372dfcb331d76f6f10ead8cf523ecba
Date: Thu, 18 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758227993
