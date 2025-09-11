Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B2C35085A
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757604595; cv=none; b=tGrI6itqeoCHZ70dUjxLx+CN+ZkuUWHwlSMT+40+UImNQ4PmHJKbSG1xTCR1qqpfN+bOrhBoDFen7dU38wUSdo8OnYh8KOJ1J+APyWljScn7WXQPzoltFaHePboONhfrDbS70AzAT87bygkn4eE5VzX+VLhfANkQpkHIopex2LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757604595; c=relaxed/simple;
	bh=grpbnf94/1J3OpKExs5xLlJ1u0lnx/OoE1XuTM6uIGc=;
	h=To:Subject:From:Message-Id:Date; b=P60cjlMpjb2k7RNo6PRMS65cFv4P8R9WTJvxl1vacKEj/57YyMP1frNxCxWjeL3a7yM0DpiiymT6IbnWpv0UjAmoBNIzK6H37s6ny2dhUxxKcY9JU2dxdK81iFM5I8rqRKVwO6FUA3ErkBjuSC6cNkdeylI6jprJj+aZPyIwvLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofsksYlv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofsksYlv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E99AC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757604593;
	bh=grpbnf94/1J3OpKExs5xLlJ1u0lnx/OoE1XuTM6uIGc=;
	h=To:Subject:From:Date:From;
	b=ofsksYlvFgihrSFfVx3s9M5NdZL2bfB3bHpIJKSb1Lb4AG742qhQFfpnkfTkcErBS
	 XBOOPE4Pt2FquyCO/Z8DRj0bvZhPWh/zEUc2WtnRqHpP43U6++gnnU1ik1Y3g86Yz1
	 1wlvLWHXYlXcLRGsUjdHezN1FYIRNGODfvz9uSZRd0/AVcdAFCI0dZI5YevhtpiI5x
	 j5k5rcdNIP6qS2FBboYKYCmdoEmfVhwb5MHZ6F3V+NdLRIsKKlrP1tzP1uKMXSvyY3
	 3+0vDyibGdNCZKDFsCBEJ03PXOzEx8+jDJzgb35cyPSSh8mrpSpLi1+jRwGSjX5+GD
	 gndbfX7tTADog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F476CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760459357.12220.6816739432782684700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ae5155943e53c14d814818aec07945f6c0023ec5a2a38ce7e25b93b413fde5
Date: Thu, 11 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757604593
