Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C81228F5
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733604354; cv=none; b=QCeYG2tImcJBFxIyOBCV3rNJ8ZFRydp66MjNSPzhP712pdbOQcIPHk9LMaORjqmVa231zJz4DY7qxwfRRULeejx3ZMbZ58OMKmMLk48jkvXDpAWXRhVqpPoXvAdjEdZa8Vz+ASiOUlcSIqfn5XRYBY21iR9dmqITcrzPIhfR9VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733604354; c=relaxed/simple;
	bh=LoPNDCyoQEXjg6C+hSzL+jivf0Mi/5phztKj5KtLm9c=;
	h=To:Subject:From:Message-Id:Date; b=ChnWCEA+lVdZLWl1mc8j49X0UUd+gWGxFQyj0coKyS/HcrHgTvosCr3nhFgSG/+B8/bvs+QzfNwWfMnpXcL6c2Om9VNSLPzvNlh6WryrFJRG9GvmkIKarXFz6HkWYu5C004ia5D/13MX0+oO+dTOTN0uq6QQTPerkAvxG/qg0t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLKXp9QS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLKXp9QS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2013C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733604353;
	bh=LoPNDCyoQEXjg6C+hSzL+jivf0Mi/5phztKj5KtLm9c=;
	h=To:Subject:From:Date:From;
	b=YLKXp9QSgtMTzbjKoIyVKYOMhSJ8or2yGy0TJSGe+wCCCP3ZQwqyl1R9RGhH6LnnT
	 2/nw6nwnRPc32PyWPwqwGHxlfugpGixH4F8ylA2sXQ9CX1UIZKIc63HcOef9ei3oV0
	 h5g9V6H5PXzD9n3ll4oJ89yiIm+DiafJYivcjtnqPQBNuyQSGsWbMkmfSotGecq2bH
	 HYTvmGFXK+o5rW6h2SzGAISDh+SyERSZwYBls351aZnZI5Ht0N2oe6d2sb7etsYqQp
	 xClYmdrF08dwUZh3iqjRAOod4eNZwx85wGrjDn9oxDs0vALYZryUJw8/k08poRnUSE
	 UNYAI9nx4E+8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9745EE7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173360435361.20823.14265304435962473598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1820333f9044745b669266f4db51a230e1ab23fa7981472a7c811d062dce2d51
Date: Sat, 07 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733604353
