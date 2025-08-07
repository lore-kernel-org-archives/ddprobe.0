Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB1A225413
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754549995; cv=none; b=FhTn+DjA9mtM6iqnAcMf8eOslMTbhnjXmp9xWNaSPlHWStYW8bL8iLGhMMWiHGRMASrJFrg3n79GBjecHaQL+FtR8RA4BUfe1JQ8b9Bc5PItZvSOPMg37qm31TJEZjK3EK2jxq3GAFCebXQxWaNayzqwQmAL6psjPkwx1ZS6+kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754549995; c=relaxed/simple;
	bh=fzI+tBFddER6KGMqBKgkp5qV4IVb6PepZhUDFEkW7wM=;
	h=To:Subject:From:Message-Id:Date; b=eGUgqBb0fwKdC3dRq5rJkMvRJiaYYTK55PSwFg7gKIHGHnQeaEQvDbCnDc/x6pln8gBDcOJKFo7Spw7yN50kq77RqFnU/RvQZmaGB69b33FJoljrJwobDlhE8spLaQ2tutUPz7DlCohvDVGNqWmN5PZpvj+O7NVQ6xrUSANuHKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rH4ZsCZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rH4ZsCZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9CEC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754549993;
	bh=fzI+tBFddER6KGMqBKgkp5qV4IVb6PepZhUDFEkW7wM=;
	h=To:Subject:From:Date:From;
	b=rH4ZsCZt5MfvS4L8LfvthHhftwyUD/fXvaqGOQoNxGz2OzQtaXMXlSl0kBj1mVCHr
	 N2ANZeRD4ww/TGptqKlYRL0pYf4/M506HUclRWbPeRUbBJ9NkrJTdp7zzme6zJXv4l
	 YM/0Dv/jhPjKsry+vVq26pz18/KYBsqg6cLrqPRUGty1/HJPBM1cZxldA8YRtjiRbQ
	 IibTc98KU8NxFV2GxYc6PA/UFQDBRwQMRMZFLRddYtb+SyNZXvpKmx4SIE0zloNmnP
	 MlKFxQyq/C+nLPrrpN+xeMDowLKpD0QTJhuGtldpGbhqXEk5P88yMpATTlRiQR2HRP
	 3pIM0OSEd2sZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E948C87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454999357.9832.4268960008258250554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75f955df8b3ea6ac7212a0ad69867adbe043e7911c218b312272f4f89a9de2f
Date: Thu, 07 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754549993
