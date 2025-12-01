Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E34828725D
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764630774; cv=none; b=KUGHTMLzQFdeSFbWTgx9pB2tLbfwiEnRwrc0mVE/AeBoVwjB+CRMGk9tz4mzcU6d9wi5QoP/7x5qnEI9/u1st+YimdfpKFyAI40GqLya1gJOw9eYHW5IYMnxfnnw8fKZGTc1vNWpXjCAgifk5FaC2+GNRfDXKm8S1v5nvjpOODw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764630774; c=relaxed/simple;
	bh=tDLzoxPOms1CcPUHuTjrDpy3FiMsM9sHy6L/DFuTj9M=;
	h=To:Subject:From:Message-Id:Date; b=QNQ5RFPtQxXDHiGUMUjLc6Jg0GUqqTTLCeoOiy8YPN+mtpvZ31vzg41gyinMyifkvb0eAt3xa6otTLhOa8M9NsFDNcFg5ii36792BBlm5mS4XMUWeHu6uLbMFnn3O0rbgxr24NcxZVu+wKj7xJA+80eDXGP1OJAw1GnTSQie6lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBP207AF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBP207AF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC08C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764630773;
	bh=tDLzoxPOms1CcPUHuTjrDpy3FiMsM9sHy6L/DFuTj9M=;
	h=To:Subject:From:Date:From;
	b=bBP207AF6XfSmC1MkXaUQHN2zvpq+spizMsbvSu1zGUpDl6iXRxaeFk/xviDpJLGE
	 9ikAtbKbyOBJcOyp0+rPS1qqv2nvpZms72HqsgWIaico6EW2mv9S/S7xz+ET+BDUEQ
	 oYNs6C44cDEEYkWic7RF/3ciJBAYbNsipEhSjGBf2KSCDgMcLx9v93ul18a2ETQLyh
	 cIfyBAQ2yHEChhds0OgsKPgg9v5ssH/jheKw3yckDfLIW6frNBpEtuayD/KZRbQSSI
	 xbNB7tbMQ8DOWp3Ms7qB53EW/x5rfazMOQKSPTsFlSwkiofHfe2qQot0bFq0JExvU7
	 qORYqdIB/C+ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2B1D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463077361.3311.5508039978759055988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7e6bb85d2027aafec3f66bfef52b3bec969dad2c76f9e792b25b857470981d
Date: Mon, 01 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764630773
