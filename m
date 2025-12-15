Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE5B329C59
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765789974; cv=none; b=ZnoMLF/9hQqogCclHEzXiJePPRI56olFMW7hc36s8iHGEreZ25Mg0Aoxrxf5JlaILR6uNAwLjDwz70CWe3V3Xh4UXV1mVRMp43+M+Dp74qKruUPVOjJW+WyLksywIKZdeXsZKp1fNzRBBB7TmnUvWsBq4dr+GEtM9SlNTO98Pjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765789974; c=relaxed/simple;
	bh=/dAJrDrHESO0vmlIiVZewWdpYqNLZLllzzPRP0mKU1A=;
	h=To:Subject:From:Message-Id:Date; b=M57cpwNWU6YzVqG34CUA8iOQNFy2UvstcN9BlZZJ+hU4e+nssxf8AtWMCgljwGeHScYBw1MPdaz2YnTgFtCOg4GOIm0gaS0TGTt1iZZLL8WVZhf+WoV/UtQlN90FZ7+EnkqZlhPVX3sNrWVMZw5An8ZPYjD9Z2Ey5+7xvEWzhsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmuuGdmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmuuGdmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A038FC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765789973;
	bh=/dAJrDrHESO0vmlIiVZewWdpYqNLZLllzzPRP0mKU1A=;
	h=To:Subject:From:Date:From;
	b=UmuuGdmKS7Wi0C1YNor+lhixSApiSj2ekSAIH6YIIy3ZdYlqqVhFRmf1qObeUgnNF
	 fz/ryhxUubfBsFZ8H1qrhnqREXslVUPznkluPHItsxZQiBlnQew4qhvm4xVY4JrAoU
	 w/xaec/8PEDHZMaQhSju59awJNkey/qp3pTiw3En6UNTLxVtirLRw2nd/Ge9WLQZF7
	 HKUtYmR2fMCuaihCnZ5sp33EMZnTkQTVxQN1Q4jGXLTnVt9ioWkz8LPfLDO7L+VdEn
	 UP6iYELfFcqjN4hPDHTJ1KQQPtk0lfoNPMNIeC895aXwO9myxNN1TIkFfEvcnh22QP
	 XcC8BotqFfSPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD5D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578997358.8730.5336400111897825235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bff0dfb54e8e4a812c194fb0dabefd8fd0cc4a4ee5eff0ed7146df4153749ed
Date: Mon, 15 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765789973
