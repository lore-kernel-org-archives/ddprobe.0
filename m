Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0972D6E4B
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774532094; cv=none; b=mjMcOsrew9GrdpLQAsmweFmN/lV3ASnMh1y96Umd0Riq9U6j1gNJKCrZv7kVa2oWHyaRW+Qy8nn55SYL42GvBuRj0YdXZ5mIa8lVl1g/9isWuBsmKVqtY5wx9fDyzm17Lh2nnYkBhobQydpWVjoXhxIK91y9RAFPc2rbE2nE5B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774532094; c=relaxed/simple;
	bh=PKNo50WLxSx0CTVYjd33ABycd0vfYGjHk18ydyVCE7o=;
	h=To:Subject:From:Message-Id:Date; b=sqNgR/MpcNcHcs0buRpLVrbnfvav+NlOps/z17vBUzuRLgxRMXRtv9Y42wr10d8ZUboy3R1WEfsdgV2NNlrN2ASvqq9OG+sgGb1xcLJvOA7I7HlyJUMUVVoRfOnPWZytbM26892AHLqLw5IIdsLPs4ypCUglUJ/t2YRXnYqhF6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7MK/0vp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7MK/0vp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2775C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774532093;
	bh=PKNo50WLxSx0CTVYjd33ABycd0vfYGjHk18ydyVCE7o=;
	h=To:Subject:From:Date:From;
	b=j7MK/0vpurxWO/WcbdoXzOl1ZcfF/YD6+e9NzaLBwnL50pAySzn1pGOCop7OoFBm9
	 jRzaZiE/Qo9pj5qfK96GskNo+HTqcBJGqP64dY+YFAtfo91egBcYyDXWWXXo5vRyMa
	 jMHciWjwHEMXBPVtQZhy9AM+R5IORiOgsxtFLAwnnujHjMn1XLSTp0/Em6geFJzJ8i
	 xFrRlmT1/ovH0SUYU/UvmReXY+DNEs19TfdIExpY+ly86LNSAtYM3yBtsYSscDp6jj
	 BDGKbmqGk4BDWJKoiE54IK8gN66p0ClY7ivwNB1BJOm26ApeE1q2893IiALQMdwv7A
	 7Jpz6jkY0F3TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907D010A62D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453209358.4173.11200836052454705721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b1f7c72b114ed0fc66db11c1b87ed56ca111f913a758f4d49c0a04e6b9bd53
Date: Thu, 26 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774532093
