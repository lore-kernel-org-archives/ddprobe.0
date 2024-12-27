Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318BA8821
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735269954; cv=none; b=h30ejShn31+OZEgN8S+me8ld3iMBjVlVBDRLYNR+cr5JYs5xoLV4//B78QN55+hmDAd62DcK4GqS+a8PhxCXCjOt8ehfwDW6CyBzlZNH+BFOUn4ZmTs5Y5Lsx81ec+f+SnOX4KIhsbs+JcmjDLuNt84j6zxT+fssRoDsz/lAH/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735269954; c=relaxed/simple;
	bh=WAYfpv0rtUJ9LhNPij33ZTtp0nqTSSZRUJ1xaGrXtVE=;
	h=To:Subject:From:Message-Id:Date; b=CPa0t/+HLR97fzF7s/iKIaQQnW1zRTRUJdOgZJBZ7OrsFx4vnNYLLdonUATQpJKKu9/clojkwHs8z+OK6g8QHK40S35QZZCU9OE8RjN9o7VzyUsF1WSBX2BKbWyJb7I2CoMtxV+lmJEFD6ozhyiH1Y3SvUly3BZlJq5/FXjIfVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcWZP83e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcWZP83e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7268C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735269953;
	bh=WAYfpv0rtUJ9LhNPij33ZTtp0nqTSSZRUJ1xaGrXtVE=;
	h=To:Subject:From:Date:From;
	b=YcWZP83eJVzulGBX4RsQgIuPDxe1fcjSCdJRJS5eD5E4JvKTVx3XuiYIFFgF5/XUH
	 87i4GhBzB0dzrq3EBpzE//OklOJrVgcqLVe38BauZnzbz1AjpfjL2CfgGus+surpVQ
	 G70IANJLrologlT6g4NKkn/fUzFRq4DPs+lMUxI9Uxh712eVUfeIFGLk593jP1y2EC
	 096iwABQyyqYW4TGKmGvQUHYTo3HIFY/Mdw3V95MhJBNx5I10wh5MQVhqU0vg2hyqH
	 e3qg/SfYhZ0vCNHrPoa/EYIY7sXq9lp18FkWwhWaRZeSBYL4WI30cLy3DWSttz1rwy
	 X28P2G1dM5XPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937F1E77188
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173526995359.3801.10079891704547689081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d2fb696d8155342fa910c8648e0ba206d91381ec11a3fa615f6ae1f84671a1
Date: Fri, 27 Dec 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735269953
