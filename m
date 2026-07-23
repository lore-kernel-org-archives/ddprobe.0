Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F3343C054
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784811634; cv=none; b=KsxdIULjXgSWm9eWbwnZr4b3vvH/aykk2lAFyEu/jTkuePnMbEd4Il6dsgOe+Wqxy8NOPFvor0bqTVpqRYjvxUca2Gfk4e1KF44KFJCHbm6T/7uu256iquhfqSVN1oYVPi6p1mtpMrgJ4nGtmPIS86jvNQq4p4Q/cxfw+UxOEFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784811634; c=relaxed/simple;
	bh=wRpXRmNSS6NdnFM3Fn778EeFgnf6wBdzCUwiDo/m5U8=;
	h=To:Subject:From:Message-Id:Date; b=fwfqAiMhlqpNLmk9H0NOyPPTjCZJ1qlrcfs/8jQyqsTAwy3wkIdV/Sj+H9ZV5Ya0CKNPrOR5CM7257cOnx0uQOqzq4S1Q+4nw/IP7nJTwgw+CX4SjSIs52NQts5bfKKPxiil2i9knRXkDJIZjFIX88AecDmKSptHAlWO5O1eGYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLyUS99B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLyUS99B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE430C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784811633;
	bh=wRpXRmNSS6NdnFM3Fn778EeFgnf6wBdzCUwiDo/m5U8=;
	h=To:Subject:From:Date:From;
	b=uLyUS99Bb0BhY+UE+BFMRYAtLb/MrEeBL1FvKlrQBcid3v4a/p2C4NunqAV82OXRs
	 KkRLXBImhgMIJvwW4LmyQLf5au0c2s6t15uxs4NlQIa+k5QAro8kZL2XFjK1ptowmL
	 oV3u+2mcWPFm35mNgpTCZQIdwwrE0GXOVzwsGblh+6uA9Mejj+G2LJ+BWtfKhOnopy
	 ly6WQgf4NRuNhaL8/dU44tmtClhk79CvWRAEM/eiBmtINTCshXEUavwIQqquRcNZyo
	 /XYNuu8vVVWjkbC0TSsu7latb9qrDOKiBUlnSEek3Zk8AqqL7nsn5EnfQqZ2HDMmkv
	 8sxgf/AkxCYqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0050C531CA
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481163371.587.16359684470731414012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26bff7ce3bc85692aa0269ddb39662afc2b474abe2401e5abebf633a1287107c
Date: Thu, 23 Jul 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784811633
