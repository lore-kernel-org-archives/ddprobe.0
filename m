Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C383EBF08
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770879294; cv=none; b=cUzz6DPxvoeLEHWvZ3Drko0h/jh5Hze+4TQKzUSQEzh5j1/ZPU8vi94aXpDh8yMPCdKvKtv1v8cKBDvoVpdXLYnA6D0se9UvAA8Vgxs4EZx3u1xxL8TBYRvYr2JPDW3pPRQk5EdIOlouLoetOwCji+aNiNaVHE8lZ3c8/bQDmNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770879294; c=relaxed/simple;
	bh=ZSxQzPsJysKgpGfbR9dT8c7NmYMlnzL3OvMQGWPqXcY=;
	h=To:Subject:From:Message-Id:Date; b=rcAiwGKDybpz5mJ00NwxxeGg241FBzUUgf2lqFcTq7Ar4k6oXOb7X5kLwvBNcMfDMD6J9D26EVk6zXnrNXvUMeAz7hmT8sHCWsATV49AADjgUlkEifC0E6n9Hu8W2ZqOlq+Sr1hTAm7ghffVuqi33S6Tyu5731Ge83VwcM+g7jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqM808Sb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqM808Sb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E8FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770879293;
	bh=ZSxQzPsJysKgpGfbR9dT8c7NmYMlnzL3OvMQGWPqXcY=;
	h=To:Subject:From:Date:From;
	b=VqM808SbCKhpC/vh8mnm8d1Ei9kAJW6VGoVRA/onnHg2flvvk+7eYTAS8+isetryp
	 3CsCWHApw+c0nb0KtOYPD57i5dqZdwWqhY+X0MloU+Evu/CJezdatpkMgib2/9gfsj
	 712Eady7JpmHAh87SrMZlGdKhdnJeuU3tdht7ZQucL/rc4sztolEyD02UKtB+z0DMG
	 CvlbYttf58fhytYOV+jl/lGmn3SOAH1qNFlM90lwdiYxEsh0tuYHqgj6K259t3MHpR
	 yXoel1N+pCRaTpCKhExnotSagNMtjhGp263To3q9NKRmFWfGNEidZKfjbSHmw8iGGM
	 Du+WQN8eoNnRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999EFEDF04D
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087929361.12734.10280202892356435411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecedde5b3a40a066c25afd08e23e7a6298b456a2b0c75bd54e5faa749bcc7c63
Date: Thu, 12 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770879293
