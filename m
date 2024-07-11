Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6038D37169
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 05:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720674443; cv=none; b=U6cuh2BGlAXmf+Llv34SuqaJR/6QWXc3izZgN4pUp4ebbVVBFRrP+LUCkVKS9QKqa4+lpK2x3n+Ub3wsYTCyzDu9dRw6W8hcx+mA9MlkcET/CA+VeopHgi3SstDa1xgEZ1tQ50KOCeJhfLKSlKJpXT1M4Y2T5L4Ks+GVS96Wd6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720674443; c=relaxed/simple;
	bh=BoC/1vkmc/hgBU2Em3OMs1D32/+S2geDuKjB4yppaXI=;
	h=To:Subject:From:Message-Id:Date; b=hRAONswUC73aRSRJVxe5HxiODmrpS2CP5msUHZLiODkMiqgrBcObbMZUxdMTxBNW6vdKGyKDBFhR0PSFDy/Pvmcn3sxd09sEj+Pb+WI5bciZ84HrykKl1oQFkbLAZPg/hjPFf9UuNVHc4/Pf6uERwVeo1LOv4sxsXzhYwzUmB0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGlnxH5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGlnxH5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D609DC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 05:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720674442;
	bh=BoC/1vkmc/hgBU2Em3OMs1D32/+S2geDuKjB4yppaXI=;
	h=To:Subject:From:Date:From;
	b=mGlnxH5dMa2saqWnDMbmMfm2CYDEiGgbVGmVMC0UpREXYg1/yJxWFmw1lzYEYhWw7
	 7o39dr3VRN5Omhr764gO0fbX08+SRqtgRAwFoLMZ0VOdd69bkEmZwhz9svPdIan+U+
	 yz8KI83mtl+UsCjmPczW9GrP0VQ+Eyzv04MWOXtSqd9FcGPiCGhhaHJUqc8Ab1xy9n
	 nY4vLcZ5NHLwwWDVBdwvgWwtBb8ErC0HFYBDWueS9LI9CLzu03EtfJ+z3XyQ4BdS1o
	 CMfRNmsWR1MQDoUUk4AdKodZFSpLBEmKi/1382zB7LzHTXf3Jn2OJfmUEaSLaxyns6
	 BRe2bJy0ntKmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08B0C3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 05:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172067444276.9845.15107548502918798463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1bf56ab173fbc4f3db25a5b9fee256945ab4ea171b8fcf6c699c9ffa504e5ba
Date: Thu, 11 Jul 2024 05:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720674442
