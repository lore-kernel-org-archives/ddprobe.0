Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A4720E310
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751052594; cv=none; b=cxrzpJyjKMaNpzPaoCLRoYN8hlbZ0QBI+yU2Kq/1B+iS3Svd26nXT0oswEeFpSf25CaSxV6MF4MX7tM/5T1XIbCdQa2FXzFzehNPhD0tkBT26sZO+ps85aPurCD7CzfNCdamqHoy1seaC/LSd7gUhL10yLJ4eE/SPq4+cOB6qGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751052594; c=relaxed/simple;
	bh=UG+a+gUvjVdbkSgShcGhLIKhtb6xEdhbwawbR0JQdiI=;
	h=To:Subject:From:Message-Id:Date; b=ESD23QpZKt3gJT7S/kiRmsT3QZ8n6ANWT3+5wNpuEVNjDCHJ+Ebe6dHklyoChcIETtQ4fP5vCiQuiow9OM1Dw1/F2dufCqoIkCp2kyn9prjahRAGbHdUiLH7DnUYF4Mm1EPlga+TEcd4iqCX+isQT6boBjekqD3/hxhNunDK8cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=js/tjpE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="js/tjpE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CE4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751052593;
	bh=UG+a+gUvjVdbkSgShcGhLIKhtb6xEdhbwawbR0JQdiI=;
	h=To:Subject:From:Date:From;
	b=js/tjpE5Fg3M/Vqfh6nJCbKP4lvpsboJsKx6frDbUQ8L7M2UMFXBZJitDT+oFMAH1
	 PXi+U1feM8utMdV5Tac+8ggT+lWO/TzAanxtW4m39ups8J8DE5QrdxEs7GETnHqQMr
	 D3yFgPkkTTNRSs0RDGLJ/Q9InvsGnc4DnhhtDskGyJatGYgdnnZrWgGq2+5pa3KzgX
	 dB9VNIYKuV70H7VHd09RO6EKGQbEuERDrqHi5J/5CDraxgT+8bo/nIUbdbkMTgioBv
	 GDTU3UFM8Dnlh7w71YOBLU2e9SbNB+3onMuMTevvnMDy70dD1SqGIkyF7S6Fzn8OG+
	 LxkOwK7H1k+Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9303DC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105259359.28840.8435134701523242156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50214434e4f78f567aa71a37130b72c4feebfeb97a5afce85931d2a0d7406a71
Date: Fri, 27 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751052593
