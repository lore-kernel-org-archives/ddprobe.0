Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509EC391
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716596603; cv=none; b=TADQ2uxy5n7TVI+x7/CdYYtjgYmbpV+FWK25aCVY/1f6jDGZ+DQ37a/JYAxlZ/jLWa6IR/iLmYavfcX3OW30dmlz3w3bi8mJf+ty2t3+phwV4AZU4hw0Di5yy1eRayJ7lyVlKtdKeFishKUIjxM8zgVorf8o3FonHQml2ZtUAJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716596603; c=relaxed/simple;
	bh=TO32Slz6b66l92N3UmyQOlDKj7jO2hjavufwp2oTlF8=;
	h=To:Subject:From:Message-Id:Date; b=kYp3/2dm+yVCmL+dBFQ4q9kOMLEaQByGpL64Sy2KwPdtiphqpL2ksoAZEi7uY+FNkn9sHk3mvRC6DM4mdl6vK9EOvZjS9gP1yDclJVqZLSLuo9kaShJXSna/KqeaAU8y2D6tkVV5W22LsQq7WVDxq83e35r7doxge+kNWUU7X6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGX3Dtvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGX3Dtvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADE5C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716596602;
	bh=TO32Slz6b66l92N3UmyQOlDKj7jO2hjavufwp2oTlF8=;
	h=To:Subject:From:Date:From;
	b=VGX3Dtvko9z3fEWtz6Ddwvf+FCKr9aobO4k2Si9VLg5tdpKznMPxOIVLRhqtZhpAq
	 RPHCPQLqfa25KRY27D8yNEqFwFFOkCwz39hnPsUxUjVQw7qYN5+iRDiofFxEw8+fQy
	 p8ZkEwna0sROVFP9NR/CF//5K1USS1+dO4t3jpuebie/DFuFJ5s1FUluRnm3XVtmUx
	 2vUbtFBtHGYgvxvyBuzcMzUQRMARn8QA0Oz+LpnVCWYKFMZ+ZVhrOh6RLbtp8Hwtwp
	 8cfXzBXQuPCzoEs1D0V26c7vYCYIX4f/CNnn+zVIoFuCe4moAXaf/Zh47a7wurYn/I
	 ujqU6i4+b6tOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F72C25B74
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171659660276.9564.7236996410990871138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65fdc7bfffd76ed2f9c4a6bccf319e6ee30ebb871e9beee3b34c79f6b0631ec3
Date: Sat, 25 May 2024 00:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716596602
