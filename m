Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193AF1392
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736666154; cv=none; b=J+pi+iZC9T2dOJjqz5AeZayWzlLUj53oSSxt91aOBygXMG6OhD0y7JrCCoNfMr3X2zwJt2Ma6+me0v+1jy2maNVjkjTI24xLBvMb8DCXNhPh+0a3vveqo6SXyJ3dCG4ba94n/gT+FZkFDvfs1EsaBI+6ImWL56IH/10fiP+6mAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736666154; c=relaxed/simple;
	bh=378/Bg/AxvbIjn0XbQTvo/xnJp9QHkGdNMDrS5AK36o=;
	h=To:Subject:From:Message-Id:Date; b=kigJzz9b9SOOP6Xto8i9Vnl5prFNwH0Z+bBaJ5MavQ8lVthzkSBrKPYprR+4oanyqpsUQcrVvKpT1BakgucI7bVa4gEO+oKS7+8usuucTErG8R9GYbS7Qbeypo2D0RUtjnC1va8U7TQCMplrT4pJV92Fd3NP51DJ4R5527v67o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1jn8jL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1jn8jL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDBCC4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736666153;
	bh=378/Bg/AxvbIjn0XbQTvo/xnJp9QHkGdNMDrS5AK36o=;
	h=To:Subject:From:Date:From;
	b=T1jn8jL/ngkfXkd5z3T+V0w3UHav8zOuvjYYnZiYb50e8GD6+zCKOdO409u2lknPk
	 d03b2OpPSITknVqKwuG/ALp8pUIC3ftVYofjOi/4Hgb/AztYy6CxzmDNG95WjUerHt
	 X3PkO26psnXDvSIxyz7rLbBU0Mmkes02LE9bTpsp5zxbVN1Ep/1791pIvcGPVNmXHs
	 LcnLm5fpdvzXwoLB2TwcBi/z2thHIN5ShLMxaFgKSrgtkFyDyVp0Dcef5E72yk2nGe
	 boGestik1fgIrX0mw5K9saJjokvH1IZKZWcRTK89BVg4Qq1z6dOUAIyCsidAF/PEKW
	 wBDtsJIRH1JZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987E1E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666615359.1617.5534827197186420704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5fdd325a2a825b7ddc2a7c4f1ea0e3d45f354b016656939785a6add1675033
Date: Sun, 12 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736666153
