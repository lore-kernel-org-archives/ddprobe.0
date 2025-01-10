Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C63020B7F8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736528154; cv=none; b=WdHBqi4tPqRkM9lbwlXsnbgPUDIt/RHzo8nnlo4A3LSBgl6+5djL+U8oEcvYbm8AOc98WhEwQ6/0E6lgk5eWOh3yQS3wEMpMmd8Sn3MS36gs/whPcvPCyR8nsnHWmB8fc/Olr3QvVwtXUh7YHhJ0EVJE7RVj2nkUR75cfL/bwNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736528154; c=relaxed/simple;
	bh=yRp8rlkh4DmO0qLIMfdFqTpAjLwH0vwVVZs7DGqG2K8=;
	h=To:Subject:From:Message-Id:Date; b=MSf8Ttx/Fv+tZibd22SqIKAO6TGuiqftAH3hebZLN8kRkwKJgXF3w6gabWzL3WE4KnzZDhX6Rl368wrZwK7BiZMUpHO9aoEJHKRVdO0CS+CFYs6KJo1q3JXa8tqofWS+FbwHJA/BdgQT+mOwhaUVpvKhUfcIcpAq32sH2aMOWxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFeyVeWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFeyVeWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7895C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736528153;
	bh=yRp8rlkh4DmO0qLIMfdFqTpAjLwH0vwVVZs7DGqG2K8=;
	h=To:Subject:From:Date:From;
	b=vFeyVeWKO6rccEdT98OL8xdupj7Mo1HEmGOoRTSOI958zdtDl8TaS/5QvkvTUTj1j
	 DqCw1hDB9KUyEH2ZqcEjsih2hf7WK55l8m3PSa2my7WlIusqB32vC258babAMz55Ig
	 y3GDVJmJqxDj7CyN4sPN6qwvMLnMiIB4PTGeCpu7A8hO7G/NCQSmBAVJGUuIO/1vR3
	 j/quCSJSd2Cq1XscutxMlSYp/ZjcpCBrZwwe0WpDpO/b7xONOc2RWB1bCbwSpdKytr
	 lDDLMPC+xvvMbvFF0nmwCVH74qX+Bc56MeBC57Vy/hMRNo2w2Y0d/pFiszX9Aic9zU
	 nUCEcOMyyRi3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F8EE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652815360.22730.1325799956372488126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbde01ad396d1f3bd2621c73d3385ebc811c55217d6c0d1289cec7a585b351c4
Date: Fri, 10 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736528153
