Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D43E18EFD0
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727700954; cv=none; b=KLOebx+z+HnBi9earG38d+fyJIjNPyjPzjESBLWhAC/IeLvpAg5On39Jsmb7amzDP5t7JSy7iuH8Ean/Cpp6fi9uILo2zQwbPhuCFMNYXDIGeTvTDiZjbPoesc1GLICTNgQvjYj6CObGCHYAU/0mKOZTzBbZ5TeGyNFCxtcVXQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727700954; c=relaxed/simple;
	bh=yrbZx/DZy3Mm5m2eLCgtbY01dUyhbBFvcRHFVdpngeM=;
	h=To:Subject:From:Message-Id:Date; b=Xrm1lYir3TrTCvc/IpVKyHVk/E/HrS8kizxOqHULbjs7ItI+5OyJQ3iwJzzi0kngJ4rSAqol9u0vlVFiQrFO8zTXdP64sTpwV7wu6bJQ2QxFUJ0EzCR9eWshT9Xv7QITpBP83Ftkx5l9S+mudjvtKxljP8I1rn4fRENw6aIBGEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3Gsc/+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3Gsc/+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC728C4CEDE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727700953;
	bh=yrbZx/DZy3Mm5m2eLCgtbY01dUyhbBFvcRHFVdpngeM=;
	h=To:Subject:From:Date:From;
	b=G3Gsc/+BrPjkRcKZ7oD660XVBz5lRTEJnAimYvIN9/wGULGva64z2i6hwQNJ3mAw3
	 37Qauu7MkppU6JM7Rg3EAV9K7Lty4btkivsbc8hkR7Z2rGcX2ttoeif6uATDPbfYEV
	 AEayXPlEMkijQ97zOtuO9pOEzh/3yzUbXhE0qAWVZo2cMsJ0f5SR6p0X/aGc9wTmEi
	 wCF/hA8raipetpURjOWExDPmIT0z940BfyA9AaXUzTIOnB3q5gMbz3bQA0X4YORkET
	 sd5OMHuOuBiRtuLk1ec7VgVn/SBADmf5LDcpEd/TM+yTvNsDLk1kUSS8xqyUcfzkuH
	 dEf/JSZPbTw4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E206CF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172770095363.2364.9194667686740061481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb14c2e9fa1e521e07938088c64e7c26e231ab86288757a2b373333b43f5f7cf
Date: Mon, 30 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727700953
