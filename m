Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AFC18308A
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727426154; cv=none; b=ssRllcMlr79ppnGImhIIyUnjY/hEGCb08PoMtFj9AwuA0DQn9tYqjRj1e0jUNsMXhPbDG3EL/TYggzIVVT6foOwjAHAUcf9NDCfpTa7YL1jySjNPPcTrpcDUlpDhsUCeqycbdViyZWGsT0zi4TclRvzZQeE3fBVy4uNgGis0Lw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727426154; c=relaxed/simple;
	bh=GzJcAtIsq4ZT3X8inpH7l7jzVtUM+zALrq7d9lDmUGg=;
	h=To:Subject:From:Message-Id:Date; b=Sb3ECYN2LukQ5z6cP4Plusb4M1/9/sCm9eNJUBt1c09Tr6/W8/+yBo/m7cbBExTeVHKUTzpgu9bs2pimFcGPzeV3TQAbWBFYbNegdkUFLsBit+xrLGNw0gm6S5zsrfu4YVANRkreLhxH6cTDRCfrsp4EUmdf8v5IcoxcWlKLMJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Swlb2Vgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Swlb2Vgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66D6C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727426153;
	bh=GzJcAtIsq4ZT3X8inpH7l7jzVtUM+zALrq7d9lDmUGg=;
	h=To:Subject:From:Date:From;
	b=Swlb2Vgb905tzEV/sG+H/WXy69YnxHOjP/gAVMThMU2VXRnrlcYsPsdOkQQd1CXsR
	 EHEYCNCIcJOsoxUSs15xAL0aACODCwcF4mhO6vn8CLwUuvOjK+PV+PZH025pbMs+XG
	 miiM5dMgvRkxXpTFEDrwdU3n+WTXgbNAtywKD52yYqvxpW6Kqkp2yPJy9eHfzHZ3LY
	 cFVpgK3euqmE3RiduooLBXZ6OAYM0U9uJGpqAJ2w2LLApEr6zXKHwXqeEpfRFmEgCW
	 vXUHXMa3T2jeI83WYoh/2XKUCRkBARKhjs06fNGxdFE+AW/3NLY7e6zhuOPb10DgUB
	 XvsgyX6evsCKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FFFCEBF81
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172742615360.27691.394113356013024585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 352009e35be5910b891e6d7eba3bb1f2e90ee005c62d6843051c341daf14dcef
Date: Fri, 27 Sep 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727426153
