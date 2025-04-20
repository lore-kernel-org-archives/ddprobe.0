Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504F315D1
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745173794; cv=none; b=DoqZK2FitlSYe6bh+DBTP9EtAscr6iXrvPn3uFqJPNwnVS9HYf0PCarBRWFsR+yLBCLW6+CCT0CfD4aRfexfadodz1NIEekzSZx7g/Pj8Bdv+134ZhsSVbaBZEr+CZty+qJ2EGsIoY3KXOGpphYJ0o5m972ZxZ375uE9JbloypY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745173794; c=relaxed/simple;
	bh=qLNCBrD3hOBNj0UEm8ipPMcThqUeWIqCSyaolokrVZc=;
	h=To:Subject:From:Message-Id:Date; b=qC+LGR+7uwWjUnB+ENgR5uV7mTZ1v2ehFqNkMjsz9b8SK1XJuI8B7+NQT9YV+Csd7R70LP5m7vQ0JqOI5S/HoTGHYMW/2ZaEoPmWVicVGq6wcngTUDCBM5EE7FJ6ULHKkVxo5pHMYRKG4NlGZ3Fd7puHwr3fxV34Mpt+yc4sMhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzG1nRCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzG1nRCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72A7C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745173793;
	bh=qLNCBrD3hOBNj0UEm8ipPMcThqUeWIqCSyaolokrVZc=;
	h=To:Subject:From:Date:From;
	b=uzG1nRCV03PbMZekzn3cgT6KPoYaqMrWbafNvZ3BPI3J5LyZjvN5+A6oIlYdUlWZ2
	 IpMQ9jJ/kaIwtT5WgKGKwOxT7nuE3g/Qoh0nVyDfLLx+lDesX8MDxYRaz+0HppwOh9
	 7xYLLn8WEQnVt/fnCpfX8HsjmMFNl9+fLIOzlW0PEUaqZSMfc4ATlhUPjC3tMUAcCP
	 K6MSO7Ai6Ns8JplI2WaQpEvgSkvdniNp4a05WBdZ4r2oq6krW+6RvgMcf9TpDmmbsw
	 4Q5a+yHC2nN8c7vbJH4v0WBfWIMW8PcK6XAaR8GahXGRu/Ns7CvyW7ZAS+UCVe7h6B
	 VNTMd0Gj/MIoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1222C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517379360.20871.1585010330395838981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc1b56a57bcc5126feb99dc2d11d300e58bf34e394c55f86d444391033b84b4
Date: Sun, 20 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745173793
