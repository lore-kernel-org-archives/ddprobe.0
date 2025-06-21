Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1861D4C79
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750515594; cv=none; b=bOtKV9hhYp2uLhh8Hg1tuIxuIu5vBQU28Nq8B9LGc3LV2mG7eJPLiZ4kzAh3eWv5dUVeWgYkVvAvMhltzWfgjMpidjH+h96HgAUmIRN0gP66TmRQfORG9P/3vatd2ycnhevbaX0or8cEiBeIeXxwwCxh4M4/mDYL7wIfxBTr/38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750515594; c=relaxed/simple;
	bh=flxck+iWG2KxE+owFrgLyx+VkTgk4qQK9WjVCPLE4tM=;
	h=To:Subject:From:Message-Id:Date; b=lX3HAC5AMQ98rL3rj2eZ8lJpBiHJ+UbFc+11IppKaE/KGUMmTnpdDKk3B+jEn3rKZvLhtYCRL4EOSruZWx2C0mcvngB2JA0adL4HnFzSQfsGeUKIpp5Xp4TShChkaflNVVg44duFVm5gkwSqEyl/RVZ8ZWR5mZxSRWK77snwTVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzUWGb2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzUWGb2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E59C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750515593;
	bh=flxck+iWG2KxE+owFrgLyx+VkTgk4qQK9WjVCPLE4tM=;
	h=To:Subject:From:Date:From;
	b=IzUWGb2HE8xb12wF8mqIpdxshmhHpSXK63RzZqcsooBpSI9l9mIk7pChOwiPE1zoo
	 KO7OzFFOl4osvhwTqqUpYrnW4H7fOFxRkFSShzdjgM96NbvCb1cpoF+9Fs9GKec+/l
	 BDlmx7mlxVoOldKQc1SGbPTJC/V0NYMfQYb89AtQEL1888yL4uTcRR7wenHg1RzNRw
	 r0GrioACDbe0KEPZGa7uQoisfLI3tMiDl+VnPudUlYGrfQwvAdmT0GKtHqjPMTW4yT
	 jwGDfHEKuOuTCtlALfGQecLX5YYEgufum3y+mqqR95eLi+ugCICDdKWsP37wA0UMMP
	 I8iOmcuPZ+x3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2BDC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051559357.20455.3018340426094316774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eebd4e307005e2d6f7ed7cb2de88464807b2847f3e8d08bf5eb43ba96ee71eb
Date: Sat, 21 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750515593
