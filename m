Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D025D2DF122
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764315773; cv=none; b=CQkBmWX6X8lD3j0Rv3ys62vqoB078twYOaNosvyZHE5xkh83LCoX4P1NssMquvVQaaJMCk7Eb0uqxfnSt9PSE7PwPh8gEO6v6Zm8dR/3EJyZ1Af8rXUiCYWwOsOyp4J2xNP+60iUnnKxPH/O5mZ1c3ZJbb2K+TO5CMRFa14+t9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764315773; c=relaxed/simple;
	bh=w1F7/Wb4ppFCxpLIuAakA3AZM/5B1roMBQx2Brl9hVM=;
	h=To:Subject:From:Message-Id:Date; b=DhcJ7enQ9r32sTyUggG3pqtOG5I6RtQpiNq57PN1vlgy0nKLQCY8GeGwePdOIuZL7VeTl866zJsRdBsGGnOsR6ysiq5BOD30lWQpKXfGN4CvLIIOAScaKuhyPaffPHCVxiPn184APlJOgPFkwbvBnCFTJ0yX2W7R3QVPcMBKxXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSw8b8i+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSw8b8i+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1F5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764315773;
	bh=w1F7/Wb4ppFCxpLIuAakA3AZM/5B1roMBQx2Brl9hVM=;
	h=To:Subject:From:Date:From;
	b=sSw8b8i+pV8j5PbkGaxsT9vbuhouewn4kFzVuJES++wdG4k1CM/ndHSfOhuDW1Ect
	 mwhi/hHXCVSo0ijrYbLZm18Y8Q6jFU0+N9ykCPkq0AuXpIRQ7AKDCi+EHm1lJGaAgh
	 YdzE6B0i/gL3TJTR9NwHB6omnabGMLT4MR49gQ+YHdz9oprvSmOCmOAIr8w0iOz8kG
	 2PlIq08a9jKX5WHMTFCbP4Eg4cp9GX9wafx+80dEvHIBfPfOZgvphMKh/J7Wyum/Y0
	 LvYnAHgKLbx+R7vjngc7U9TuTx+U/3czUgJjFT8ynsa1NDOs3RbeXFxdzyGnNMKPe3
	 Jcvrh1ST0Kotg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A927CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431577359.23647.14405289115386049691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28904d94bd609b1b11de91f7493b50f1edc5e61ea479b239850f8833701744dd
Date: Fri, 28 Nov 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764315773
