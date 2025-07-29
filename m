Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F68B22ACF3
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753780195; cv=none; b=ZuJ9a4PCe9ubuTRTIEmUB02mXR01kt79xMj3q8MjUi7VZfFSxzy2o4FOokMUCZI6YtpbbGf16sJT1O/uSfOgYDomDM01JXLeFwCSKQe4xIn0lDpXT491kZpNXf1Sn8t5uZ4LbeD74qoAIx2eh3+P/632dTtxc6PJNq7L76Q/go4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753780195; c=relaxed/simple;
	bh=hTw3vAxylsKZg0uRGrR+IlWsmOpCXk/HzlqLenPC/fg=;
	h=To:Subject:From:Message-Id:Date; b=er8imMjtHV990KW+xoZMRXTamcolHWlEyq9rMP6Ze0O/BmRIV/BLfzbYDA8zGVxyYLXFPbyUzTGSIlb1SAgDBI3RSRFr65Nd/GX4jNq6EZ4qboMgzRWTet02dY2186jDcHX5fjmuWn7JNrIwtXdg1LFmH9qqf6IdkWraEWY9K9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shG5I6az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shG5I6az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A604DC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753780193;
	bh=hTw3vAxylsKZg0uRGrR+IlWsmOpCXk/HzlqLenPC/fg=;
	h=To:Subject:From:Date:From;
	b=shG5I6azYkiBbbEjlZf+7ZQ25iPdujmQvYU0C0Kr1R5m38MGrAfkF8ssHkf5IiEGE
	 4G2eetHCIR42uAG08nOPW7L2/9uwXDUtjNjgXq6u8LkevYgDEEvPfYE7yX5UiBGNDQ
	 1zZ/ECmWoUUYYc12aDvr9gJY0ogwlNeMOcJK6ch7EOlQri4E6JKznneMd6pJw4NYGZ
	 3WlLI+CP9wOag77r9ns9bIne2X6qBco+ZfdSPtYfLynuR+4Rv5LDtqc5OiZymWrg6+
	 CbFXI4VCklLKa8tVmMW/PF4g1xMvwYiR6q7Nw4GQMtpvOq1Jab8twlf3qWnxOlkrov
	 e6Gq08MJ2wtiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91076C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378019358.32591.3817346139029206636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68bf7ccff8be58966406788622f5ee1d63d2a5c5d3fb9fba653d4a82860eb7c1
Date: Tue, 29 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753780193
