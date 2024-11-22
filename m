Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4015822075
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732259754; cv=none; b=TZZ+t7HnSzgJBWO++4VJpnVRG1W+8EqpSn7okikwzK2QAr3c2++K2Esc9Apps33esEREH+mx3ZlsE4orztogSRnrSNd19PUz+9Wa/OH3FFtxiS+tu1H+zwBZHIPRiSvp89tvI0daDOonywT6ESF5l84HlW7w4vRb5kwOITj3GUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732259754; c=relaxed/simple;
	bh=ircb4Qf+5fMxqzTXyZW6Eqm2J0lc6DwQDi7WdTYqjhQ=;
	h=To:Subject:From:Message-Id:Date; b=k8WYImgU6lHQ21jyobWOHMiWH46v9n90bH/3m1I+j5n8+hxIQg62c67ADQ0LG6V4/CmZlkXgT+UVOIff8w7aVwbQnK8rf+N9L5sJ6VkWjKV2Her35WnSdgiipiQen4SmglDinjC3fQ0Jz524EVAkRuG0/CU+MXD/EZ8JAvDWiWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDoPvyCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDoPvyCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2883C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732259753;
	bh=ircb4Qf+5fMxqzTXyZW6Eqm2J0lc6DwQDi7WdTYqjhQ=;
	h=To:Subject:From:Date:From;
	b=ZDoPvyCouUjxjW14BH+lVmgr+G/LH0b1JOaZLDqmhyUYwVhuSsfgge5c+cNL26yvA
	 yJTCeQxQWlqGQLa6X4Onhmd1QfJ8ggSdNj+ebNCtySQdzpZAqVmnFJNH2Tw/Dtvw/O
	 pod6tPy89zayRZLwo+uquqBWMUpWxIUZVV0xwu2lhFvxzJMpCZnmif2S+ddQEeVVkG
	 gqbjqeiFynwSCOHwwwYQUso4T+2wN/0vZJm+fVkttwfV+dRdGu5s+/qdmNPqkHcjtv
	 AwhQqNY2qMX7ZCUz0CKVmTTnXayzvvUcTcdda0jFUoSrO0sPm8Tl7QrkctEaWG9UxX
	 xmesznHcaJegA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E600E65D29
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173225975359.1318.2052921178033587766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7768d219a09eb99adbf867bd2a80812260333a5543b78153c7a09bd911bf09c4
Date: Fri, 22 Nov 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732259753
