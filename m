Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E361426B
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707247697; cv=none; b=DWA90YIgYoukZju8MhZLVBpw8ShAsCUou6S2PDohK8g3Bqfca6NWb+WwlbxtvbPVRUXoKp9SrG6j/njrG/8VcY2bMTUBCWY3P4bAwTFmUMwmoWAtsgvwC5uN0LFIuqazfKGirP1heDQ/hjU7vVPLhmqbJighXFurPDk3LSkQEzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707247697; c=relaxed/simple;
	bh=9JP8zlBvGhbr6kpXXkmvPJe/Jn75TEUJycxWoFxMVHc=;
	h=To:Subject:From:Message-Id:Date; b=VTxBmzZzE2eF/S4nkLEOK8QZroJLEcuVKuvd41smdrjFKwsNOX5SAvnB1QnjMFJOSMiFjTdgtwtFANwgbM+kbZ8pCh+7slO0MR5G8GHq1zXJLc+eQDU1tAXKfyESRsiC4gsKaSUanRw50qIf9/ThXTPv1VaE9bIgtu34VKmXFQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mq7fu7Sp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mq7fu7Sp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 980A6C433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707247696;
	bh=9JP8zlBvGhbr6kpXXkmvPJe/Jn75TEUJycxWoFxMVHc=;
	h=To:Subject:From:Date:From;
	b=mq7fu7SpYtvq5bg0N1jjuZHa/YXzj2/XqSb5yID9mBIp4+b/AbU1VHWnnAgN06Lxi
	 MT7f4//OTqINnxr5u1eM4XpijRFDGOtFlX9BaOYUCwEhWWrWHOJ+nHkJ4/5A/L2FFX
	 dhJQDeX2iv1cJB4ysFem5G6V3s3A5Zyx7HLjnlU7gH48wSy2ULYnqWzVumtdYei7vc
	 UbHaLqem2Z5dhT2MkhIeiKStoyFwS486XWI+QXyAH/Q/L6TA6iQcwhJbq5ls9oRX3X
	 AfeGX1uikmCFJikQH5G8B9gAZ0uPQxW0/X8ov/GuTXzvYWpV/r7io2Jt1jj535Kd6o
	 fKxqfAtgFgDVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70EF5C4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170724769644.13243.6979495734346952925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9573419044509d4e19a18b7bd47d30bf5cab3dc2d2c3ca964d2347f541e68a
Date: Tue, 06 Feb 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707247696
