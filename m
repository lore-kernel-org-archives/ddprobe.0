Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8532248AF
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768505034; cv=none; b=eX1+Lsa5LpZW0qzkPMh6V9z54VlU/wMC47rradJKbKTfkRXUvWGtJ0XcVZCcnsm3ykwYN4ULLog1/KtWDRk0hvBLNt1iJsk/gWLPxKZeuJkbyytZWKJK6c5R++QH0+yJn6TZSMFx7lAGd0huZvXXiZGOmhBAl3Owp2HZR+oxonk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768505034; c=relaxed/simple;
	bh=GDJ88St8J0vCo+GXUpqkMoeTScwOhn91CNgC+Mi5pog=;
	h=To:Subject:From:Message-Id:Date; b=GpDIQva4SbLV5q1Liu2FmrhwttYocjqY+VsVmyXGzw5tyP9dB2oFVm+do3hPTiTIvsDOlteRbjZH0VMFQ12dvQOeeP6p7qEKerZMOYk8oJ1sYeg8Ugd+42u2cV+9XcVFRFSu1jsMISA+uGIk10bXiJPdt+ylMuUATdocGRIlFIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8936jXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8936jXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC91C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768505033;
	bh=GDJ88St8J0vCo+GXUpqkMoeTScwOhn91CNgC+Mi5pog=;
	h=To:Subject:From:Date:From;
	b=G8936jXcZMx8uBoTZ2Vw+UPuM+HSQu9uOOyb8qn7qtrbfiWTaSz6YxaRC+NPu5mo6
	 wU59sN23ws4u9HvSfZfYqL+XevT+wCXN4peW8WalfaVUoL257OlJ8PGzrIYp5K4Kjn
	 RWCgsQXv48ZBpRpphjAzgbosbtcLaOZVR2QiMirKgba3e8CMuS8hjutpP6LeqSkptC
	 w5fISq4MUboeJBX/f0adgwQnr5rGO7MLg+dKcMTJduWq/0L1Zu2gDl4KQxnWy+KsTL
	 IB4KWFbj2Fb94q/PaTsniKiFm5IP/9nAiixxhVG1DBOjuQjWfix25S4xBTyJonnSVu
	 OaBDOd6js980A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90004D4661A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850503358.25968.8495440347302794915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de10087adc3956e8d528700397a1149dfc04a9002a17b236f3941a27620c1b55
Date: Thu, 15 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768505033
