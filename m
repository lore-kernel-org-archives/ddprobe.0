Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DB033F9
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750121994; cv=none; b=aHKFDd3foGLCTWwFZczYFCYEsgMrJwVaQYX8764vYZHAyy+KxXu+GEeXvRUHfQcSZIM//3+UFiKaxsVSWmBNXjKasD0MvJiaJ746fyQ/IOhwYuTIcM3FSSeuRviBPp8pu85TJLm8+JMV1D35zSquhjyIXuggY+lJz75EqCZMW6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750121994; c=relaxed/simple;
	bh=1tzXAHzqblIJRjlTFK0dgBhWWm1rvjmpNZEvX3i1Xbo=;
	h=To:Subject:From:Message-Id:Date; b=DFLblUMj+HlOHvDoKBB2xOKsBXzkLE/k16vqrHuSC3hxTAH5GDlKxlRba2TGpOcKOrEnK7wmK9bUdJBXizIKV1dYTZLXV4Hj6Z7/5WR2il8hBD7vjWSJtK064t3LBuuLw5eB6iRz7tiRcy5/xsa+Ac9g0lXg641zl9oYDLzvOkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgWxzcyh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgWxzcyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B4AC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750121993;
	bh=1tzXAHzqblIJRjlTFK0dgBhWWm1rvjmpNZEvX3i1Xbo=;
	h=To:Subject:From:Date:From;
	b=rgWxzcyhZqyvnWDlTpbVjmWsD7/0QqKrQZdauGuBJnEPoESzA75P+0AJpbZVLOYO2
	 9zP6tui3+t4bQqc90DWpSuWrQZmjbFCsHyVJKUCuZ0HoNKk8w5yk0wIzcf1pR94XjJ
	 44JODOiws+SMYvSdhZmqRmo0iJw2dBWrEo7ISKRmUlB6A3/HGZMo6ANWRvBUqayAEV
	 7NJsQcsvf3PNlK/hydEvZukmpH9ox+qnq4vu10FCuFfWLk/p2KCV1dJ0m47NsQAC6W
	 W+QwSkscijcQi1hq6PP0Yz9rrlQ2mxFs1q4t+jJ4WmkhcdiDrcS3sAnCv1rs7bwkry
	 N+LbbzbkxOewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBC5C71159
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012199357.24505.2671444454414598629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb672835a7fdc9e1aac5ebfc867293fcedbee0ae78d5553ba30e301b540fddda
Date: Tue, 17 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750121993
