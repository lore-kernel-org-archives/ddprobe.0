Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14402DF51
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724805954; cv=none; b=LXUL6sMOXIAD4FBoOom3kUCEzbwxsTiAMKlONPOhGx3GV91+munCRTbXkp5n5rqWYm1O9EdDxI41I21HGSqv2v7HMi+LsHukH0HC8LPUykTpSopzrqSv/iOQk7XmbwlZH3fPWm1jNkZFRlNb5PKq4Yjczis5WxRI1vX5vFa1TE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724805954; c=relaxed/simple;
	bh=ZfGOOD/gccL3wIuDr1pX9Q8Z1s6+wz84igpZWwlxF3c=;
	h=To:Subject:From:Message-Id:Date; b=cEOQmODrKdzT1RbT4HuZ97Ov3BxvBRzJYDm0SOnV5lNtLRzVNf0IJN9+8KLLnlApFI8YwT3ur028IkbPVRjh+hRmAGiCT3FGbJeWlUsFFiM/oHmiK25Q30Hq/w8xYnh9W7c/Gr4/eTZyo1gPBfxPTlkrOM+8kTDZX57vvVkgvLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dD6UyWKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dD6UyWKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1061C4AF54
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724805953;
	bh=ZfGOOD/gccL3wIuDr1pX9Q8Z1s6+wz84igpZWwlxF3c=;
	h=To:Subject:From:Date:From;
	b=dD6UyWKoGX2ghVjimKHS2h39dvtZxvmDf5CwS403ByqtXDPjzPYbCh+TOlp6uyjlZ
	 hKXxGrqPXva5m222O7tJ7B0onf9jv7hFtH5lZHCrOkf4yv+rsUs2C5OQ62C7LH5B8b
	 F5u4ovQKQOlKvcj29JXyZzLC65VVcgbaUBs+zurvocganO5I5IDT69O031zcDqUfQk
	 pTgmNo+GdDGM8UmA/KntohzKG6jt8D/6YfbDrCSwoSt6vfZo6bc5hiZbyibBkoVKX9
	 YjvHim96afgKi3zOR2pzXomJmNEEvQKMvJxpsEZb++qbVgcBNlfwQ3RM3hVFpoD6OF
	 juauWxJiSxy4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925BBC54746
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172480595359.29571.12078492751824286778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef897baf68d690cf41c207d501bea28e8cdf8f9bdeba56d0ad6fdf87ff060935
Date: Wed, 28 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724805953
