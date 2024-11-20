Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289F8161321
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732092354; cv=none; b=l/5+87C/8Vqu5vUcxZ9YJY6keoszKxLhEYAHET5ug//7jpBN5x52ingvPmrcUntD+KQCy4oJXCrd4gToKzzgP9L6GvGXv8DcVNNpZlgYwOLvu4oG7zRjbFJAVh3edzIM0huxC2tICOOWDYnYqqSPnaIC9s1xg4M7RVTbuDl44fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732092354; c=relaxed/simple;
	bh=QVzP++Xy4i643rVylAvFC0ki3MvYXPxF9eVYMTl9xlk=;
	h=To:Subject:From:Message-Id:Date; b=SmqD/VnJRsM+dvrmojamFsNyLt7qZzkSFOQO5m7FApdxhjkI3ocCyIi2cj1jAmfkOUwT9LN4QGSIAqdxLXJu64fXRjswIYy/qhNP5Ja4XeUluLHAhK8J+uvK999JpMAHlNn6Yr8ccAuOmC5O3U93lKWMQqPTg1sxGsyJDsRx0Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVHN73HQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVHN73HQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2870C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732092353;
	bh=QVzP++Xy4i643rVylAvFC0ki3MvYXPxF9eVYMTl9xlk=;
	h=To:Subject:From:Date:From;
	b=NVHN73HQlDRcRZp81eBXTEHUdBo99XW5aXH3Z9VNk7P/D7xyCnpxLaXq+NRIt4/FS
	 GB6O9RTiCfVrKwEVcgoNpvECeev/NE4U0/TcUGinM7tQskRU3/ZKssORikzAjj7RAc
	 ppbX+zGIxGxPwa0M2to/DqTDT8bHBDPqwoAFxz5ag/CbgTnCnh7XPLeXifR02iHke7
	 QBdF+tVXW7eOPmCgMW00lMj5gH022EkRZ9mZeEGPdxwDO1IuIM9OO94M0GvJ6yOB5z
	 KQ59hDKu3tsrLw/cQQBvjtYzDiEutzfqBgfboAbiyGGDstLh6i9mRQeRcAfOsx3xEp
	 YgkkD8Abl+HBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2797D6E2DD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173209235365.12260.1249799651334614215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7552a5d835cfb52e641fece1a780e73a5145902aceda4298600f6da3da92a032
Date: Wed, 20 Nov 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732092353
