Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E231DDC28
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780121014; cv=none; b=B/9m373SmZ63P1NP5V4p+7OG8NBzwdtFCxRoEkVd7lKeumKWpScnrwl57ynwacSeSOTV1zc63rPDqxioFR+BhCbFwgS7MYqCLNTxWrbvQlcUog0d9U6hPFowMRMCP9+pOCJBGPpiJAjcSqqQ/Z4HISOzJ+uuZ59C7cwOh9X9T44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780121014; c=relaxed/simple;
	bh=FBFpQ7Ew+lRoK4cmjhSTCMoVMlBhA9iXBH8BYyuqItI=;
	h=To:Subject:From:Message-Id:Date; b=jKLTgVsh6dewRYSwNhNUfS/XtOcw3u/tZikRQW1yiWVUJNlQVvrUAwiE/AJ2jugsjh2dLQRm7bPORrt5nlkFuwXEUbz+eJDTPdqd1xQimigLe/Y3dqK3sV+BWY3+a8kRxt4ROsWajrCIta0mTozla8BySE31ljyA+nMAIYZBTqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfV8stnw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfV8stnw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D77C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780121013;
	bh=FBFpQ7Ew+lRoK4cmjhSTCMoVMlBhA9iXBH8BYyuqItI=;
	h=To:Subject:From:Date:From;
	b=mfV8stnwJZukucvkROffbXO8448ZWUTQEceoVEfWS1zRV3IWtuDXZlMx3klxWk7AM
	 RhYsXjDoGB1vMtyxeSPnH1di9CEsoVTbMJSr5iL2HQnTBau3HJQyYb1VufA4PfmbEe
	 zQ90n6wGpId1jD3k8Mwko/aFhUCpDlxAQmVLzIfxU+q+NBMGflP4FMdppF7XmNIrlh
	 Ygv0WKSgNdgJ9iihHuLRCO6AQhT6/92exAAJMJgZ7ILH0JJ5mI9n3V2kfRbLPGiz29
	 3uMVNleyYaTx1OT/5aKmF7B6LyT6hVkXGvUhln/Rw73VDiHMmXQ6CmHAKS0jGfR1bU
	 8YSSI79Cxquiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FBBCD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012101368.13594.17132263775302584384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbbba6bc24ff9b0bb32afc9b40a0f78c8a745025daaa8649b27030480907289f
Date: Sat, 30 May 2026 06:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780121013
