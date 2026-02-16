Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3112F1F7569
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771285494; cv=none; b=UROo4x76NACxFDHv/EqYMXcSTvpg2QNaNjXKd4lAtcH2AmL1MHk07MNBV/L0qXm1QwUy/RjMZrz/wKY/5Wa7up2uIvzxW1pSNeedbMnMbKNl1D+NuBxdxzNiG0FuqanQLs9l72XH+lbqeB7FaUnAH/MhSSnc60HGdUBZ69wz9sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771285494; c=relaxed/simple;
	bh=FUlWVjvsrBo5UvS5Mz5mbyyu+MWdqJ4Bph3YEUjUs3w=;
	h=To:Subject:From:Message-Id:Date; b=jss4pHTnCF1EKgdkfA2iGTiqlknLzvcRYNXs+37EnRH9y13Y1g7zwNkU0DHugZpqS5J1WYrVfntdfuYgc7x/1OSmjVyeISS7OYr4sIkgohr0kvfg0tCyLYaK5Bqp8CH2naattKqTXYBSdZnltyfRpeUnJd4Vq3zvJXsYyPLKgfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNuak9YU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNuak9YU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD571C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771285493;
	bh=FUlWVjvsrBo5UvS5Mz5mbyyu+MWdqJ4Bph3YEUjUs3w=;
	h=To:Subject:From:Date:From;
	b=pNuak9YUvq+Ks7LRqU9NIdz0bfSgYfnTeJaBRrIur8xsFaUlO+AjT0yCO67LxrlSO
	 2b394haF2L+M6FODlvT3PiKWydNcs+afX4fCqkPjXpnMQ9/zJTlkzGJia+QzbYk6DH
	 1XBQXBAwf1neHnHHpDRFmBJ8y0IC3dXjjOz0FcCu3RY+TlzSMzJJNZyrqmyoxS2Udz
	 XYrMQ8FAnrTxYUGlfp5s8wauVTspz6q2y7lU589ATuy4Hh/CxcPOq/3KRC15qM+XuU
	 hwRkepHudoVfuXfwKnMKP4CXxz3NqXckdCjlwk7R+rJy3mqE4JOTN+J3A+ElalwlkW
	 RQkojcToUmP2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9692BE83847
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128549358.14520.3763211464090069040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b31a534dce47dca8aff0f28268219218eaa255a3912f678a5aab49189c9107c
Date: Mon, 16 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771285493
