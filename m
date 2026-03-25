Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0602E3D75C3
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774447494; cv=none; b=Wx1HLjRD2x8MNcUbG8dfg0W8eyQqDJDi5EmXtwmEjflnW/lP4SCG/Trb62Wc9eJKJr6OqzoMemIb8uc0mCIF0KUNS8WUU01OtJMP9br3PJ0DcRvK+ItqetW0syuX3I/9p2XRs5dtTYDdQacZQPDuRy8fCeKoXT41asv1+/p9CIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774447494; c=relaxed/simple;
	bh=gFvfs3YDdAlW3M70IpcoxL20UXEkyQvgUUe6BadKB90=;
	h=To:Subject:From:Message-Id:Date; b=sUnM/whoTQNHHizd6ppwzu5H7Pa5P00PNzP27Ue4DBBETAov5K5V88BPIhkVVHqAP3TmDBSIkZlFdDCFkYSQQ5Ob99VQFYD6d61L8EJzbjhc7/ai1WA2w4kqeQOQwNrmsSRhja9IZblI6B5A/ay59DsopzU4eOhJNu4x6Y5LuHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvarDesE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvarDesE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58A3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774447493;
	bh=gFvfs3YDdAlW3M70IpcoxL20UXEkyQvgUUe6BadKB90=;
	h=To:Subject:From:Date:From;
	b=qvarDesEbeFSrGhS6jrqALreNDU3kQlL3em2WPDHOgLebftzxedTzU6f+urd5mKpy
	 Wmj9SC2dDEh8BKFTTIMvC2QCjx5T13DTGfHETTF139Z5bh+IWrXhhSP7mtFM5Ekhyx
	 bO7YZ7dJ32ze/HxxWVHjY41GRMe0VsAR4DFRrgsAqDPCukE65HpdlZdOwuBfxl7Qho
	 E8vCtX7b67bR1qpzloHOwnMjyliq8pAZjpsquPrqMYT7BarfDn0Ac3+1vkYaV0dFKM
	 Xm2lXr5G6ScqT2xgqoBbsHtWrD7R2jr3waY7jlI/lQ/5oNLVU2ktEqFhspAGMvPzCS
	 TOVIWDbo+XnHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F37106B53F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444749360.11808.3549213216469397831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4161342ef22d095b5999d48fd9c224b2f129f33497e9b9522b61dc23760786
Date: Wed, 25 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774447493
