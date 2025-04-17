Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F66E199947
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744919994; cv=none; b=add7Q2OmDZYAG0t636psb2rHD06fRu0pcaQvP+CHiIhGoTuxMfJ6/t+RsMiHPLj/k4h5vAWdGqJcxwVE7UkY2LSXUZIa7lXz+sXkVB9JJWzVozKzM2yFJAoMBQ1qCXkBiuj62nO7291Lyv4HPgkzrvWU9cgLSYSNphUOR271tvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744919994; c=relaxed/simple;
	bh=MFeHQNL1VrP63TN1eq44hfR1uhZeohGym32YGjcp98E=;
	h=To:Subject:From:Message-Id:Date; b=aUl7qyh9zVQVCvIyZpWhXCEYWoIkJNXYhiSdMJWi7Mv1GHfXPT/haZkOmt+S4XWTCr3MV7gLp32Vmt2lefUdVYvUDAzuQrO3arMn9n5w2MuAxFx2DEcNgqK2twjtSG+x43057HnO1htQFbLQt3lEZMQ6KhvvFtq9P2pvikFNjGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Os6J4aI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Os6J4aI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4F2C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744919993;
	bh=MFeHQNL1VrP63TN1eq44hfR1uhZeohGym32YGjcp98E=;
	h=To:Subject:From:Date:From;
	b=Os6J4aI1EioPtz+8MxxbwVFUbaGPMBk3pWn49e3yd1aiRXP04bDjoGOERZnmR4VT8
	 gqzs9xr57hsSAjs7g8SP36nBgvJRON0lNIwXjFERxb+ZGfb9HV4YHT/noIj2RQ9wtZ
	 3GoUqOQQ42hKU9BXYd3KpYOI+OIc66NeJqdl14hKN98PkGdbe5Jbf4U8TjztuMDcCq
	 i7kvU/o1zjFWTEjkhFKY3BXlwulm5Q9ikPs8Fb8FE0NMkZhJPhiIZz63RC3QNatOW1
	 tGoLs0p0LE3aohm51JRtwQO2awjQwfp+1Gn7Lqjjj4eCgsqwgJTj3GfysvKcH/iiTh
	 X0Bk7lW6K0dWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDD8C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491999363.28334.14529502667678506031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c72f977f0bdce96a0149fa38ff3739e92ecea1d13709aaa70a96a21111707b5
Date: Thu, 17 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744919993
