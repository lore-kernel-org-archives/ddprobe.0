Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB592EAE6
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710765497; cv=none; b=FaCMbr9ekOEWX2o19aHRUcUvSNAseUC5o7hAmie0zfJ6WzwMrGxs8A9oiI75jYkFwk84N+7UEF3z0EmAh6hiiKeTDOxl34Kl9GKPLeyZHybR43nR/QwqGxdGojmdehMi8CCPEBNvrpY5owtf1dTB01fk861olzW+0nDjY2crlBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710765497; c=relaxed/simple;
	bh=wBfH07g/1HOCVruHVlAMTuEL+n8JFdycK1mTafGC7SE=;
	h=To:Subject:From:Message-Id:Date; b=TPNk35lg95taq5JnJmWbZw4076g86BntnIcPTCs4y+4/rGqf5m0sL1dxA+0Mn7TBaqbjmK3W1LzDZLZoe3PGigMg5PcJaBiB+W64sniVzQGAj9O4Ut6/Ke4k1yo6Vdc/RY45SmAV82eNAFSxv35tTxbnI7SoH+9VKIwiTs0mtLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLzWqSSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLzWqSSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B3EC43390
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710765496;
	bh=wBfH07g/1HOCVruHVlAMTuEL+n8JFdycK1mTafGC7SE=;
	h=To:Subject:From:Date:From;
	b=fLzWqSSc6vFIgkl00K5YrvIi0xGDZyaZTKWjAxeACEiImGI3L71BBF8ihgAOvfk+2
	 6bCVlR2UkbxxVhIfDKOu9WUAqdwkwqceQGIYDLGDups6CRReN4aoxLRFPUjNmhKgHW
	 k1KtDRTwSq4E1kTrhkUXodBsYH5NtZY+cpMSVaR6YFR5v+fIX51BetmQt4eiu13Etz
	 +OAGUDSKtB9V25njJQKE3hFgTj0MOT6NDzJAwkWC9kDTwMZK4LPvo5VHZx1D7y1hRC
	 znsv3FZtzBLXN4rt4RKSFvu2JuRAKwzuf5dtn33nQYY1oEGzmiBIqFxBkaKNk24T08
	 Z07BG6e/Jx7oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63643C54E58
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171076549637.31598.16895133862609493148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed24f7a9ff032b1d28ae02aaed6e987790ee9e58f2733a37e95aa65060335a2
Date: Mon, 18 Mar 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710765496
