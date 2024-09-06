Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69598158D96
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725662154; cv=none; b=qazBURGIu0zC0rzQ5F91H0+HlF8RisXbG4BbZ+emiqU0j7yg5NlPOTkbdulL7S+cckVUA+vrwFHDtOkF1UYhojkbqTHmd+lFqe1LMW5CXXvJjuBo262lpDAgmzx+ajSk4are2OKOveAH2yGO3xZbbuakoXbe41H/5Ng7r0WYTlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725662154; c=relaxed/simple;
	bh=bmq0EPPwpglvuQ5WX4K1ozRCxYtTaBJVJkOb/PybdKk=;
	h=To:Subject:From:Message-Id:Date; b=m34D++fxBn5uW2Q6LH0n2oTCTQGyEkbOShNw5CVbFuOcZiLu7Pa96JFspqqy5Gxcd0/2/IXfOQvPAJ1xnEP7GFeHgYZCYPTf5ZhoS8IODRRfsk/aLy1KGBq55wUQZypZmufDnX2yOE3X08t0lIHzcHt+he3ROtszx/M1Ta2n9aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaempeU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaempeU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F07C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725662153;
	bh=bmq0EPPwpglvuQ5WX4K1ozRCxYtTaBJVJkOb/PybdKk=;
	h=To:Subject:From:Date:From;
	b=FaempeU1JazL6QWX56MkGBhBnak0vxHVToeR2NXCCIWyRYBHEDrwUtNhBtQ9X6bea
	 xaaP1Qzo5y8ikPgW8vbl3TkW96A0IIR+Lt1F0U7q/bwmcuPb9demnnOmUYCBVua65p
	 QvRFQr1WuFfLiSHjAW/cXyuNbrma903pUqVSBdvq9uBzUYTGdk8wt9EOhs3CqXxYpg
	 WNNuG/bN7cErvBlKA8nhIKwk+5PJKFflMxz05W2eQAiQjjBS2c21O/BiLHFJ8Iu1qq
	 L0GsZKVwhhLBoYxHZDPSZ9KQd/baVTGtVlavBTBijafowDi2w3o4de8XSmNorE89/U
	 2uFxXCrjBt2vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A07FE6FE49
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172566215359.13918.2160560899345295661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d573aea59daa512acd92014d3441a22539858bb9f7d57263607d631b2d16201d
Date: Fri, 06 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725662153
