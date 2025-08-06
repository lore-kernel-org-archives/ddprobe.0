Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0621A7253
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754448594; cv=none; b=EQ7inlhgZp9ZuWfC+wHNWrL1QxzAqrK1c8X6rtpufC5Qrhu23llScAjeDjHv+ks01JEC0ST2TVMuXYUk+nUhXiPByNpHV3xYt2gjYqYtSYEej2PXeOxIPhs7gZV03XvfjFMcxH2kzOh/hrwo6PFwoubAfEgKApZa6JE1YU/4PtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754448594; c=relaxed/simple;
	bh=k4UF7z8+S+/8tVytbb4SlOP32MEGTt26rrOp14vmhdM=;
	h=To:Subject:From:Message-Id:Date; b=e7SGIOWYz5TcX+XHV00bekHmfkvRX0+Ix6gi6O4nZpVrjS37C7bJANMHuImXZqfI2iYaxFQcCGJiMO6i+qW1CgP4eQ3WoJCI+i2H+CLCEFYCfTy9prUI/4TCwVDLzGlDeuOP7e6eaqF2I1+Z9YuOwDMjq7RtIWzSAAvTPzpTU3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkksYJUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkksYJUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B66EC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754448593;
	bh=k4UF7z8+S+/8tVytbb4SlOP32MEGTt26rrOp14vmhdM=;
	h=To:Subject:From:Date:From;
	b=rkksYJUH+PbenSogoSUGvVfBMs1JKpkN5JwfhhueRZtFP+8tSl761GQXBw6eny17P
	 iGjvq35KzZkVHbqoBccsjrfo/ZipnkXIzotUtDYI690lw8/mLp/vJ3WUC9LLHPXqiz
	 jS990AUPLdf/Ys9MCIaAfqB2yTpUJns4OecXG1fg/L2TlxtNZoBeeB3pVHlSKzlTmB
	 rONNkVI61bPz9RUn3G7pS09NzsfOagb2ggx5bCoCEObbR2ehahbl7QTjVz757Z2o4R
	 Q1he2fCKlt+TolzMp2ZyZUaL22vsXpjmzge0bCPcT/2Du3XuEo/v4y7XYJ4DOQMWcd
	 KVhCat8OdVy8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D67EC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444859357.1442.17508326265805650075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c3a443f1d22eaeab981a09174dba4390781884831c15a47d5013c2988948996
Date: Wed, 06 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754448593
