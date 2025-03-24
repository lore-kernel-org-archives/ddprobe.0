Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B7B1990AF
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742845194; cv=none; b=roMl8bcBirwb7HNjQ/hcyMF9qhiNrMB3GrTWNAYxaNeyzHhUlnDK1m5Dt/650YmBiftmEAL/PxiaOnwyjXzxNNIqIpMGLYbr+fWQGdZc9VZIH19Jl7a/M5AB14MZioB/ZcPoLJ6zWpG1Czjg0goM3u/fLiGCc+MngBzJ7Ic5Ukc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742845194; c=relaxed/simple;
	bh=xbbmeerCt/uPwH9A+GpCdR9HUHOqlYSX/4rw1RwEL0k=;
	h=To:Subject:From:Message-Id:Date; b=qsBQk84CywapL7AJyICcaEz3HfX2+PvHD9e3IGfR037I5EqsuOet5KTBcE+NSzAouNRDcUA26aCGLyUOWk31UXwXEG5+EURvLaJGa84kztdX7cD3AXLy6wTeAC1Kza35k2q7D9mS5tiAaZA5D9ffRANsvYrfvB9V0moc2q8R23M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwDLPCSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwDLPCSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10E2C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742845193;
	bh=xbbmeerCt/uPwH9A+GpCdR9HUHOqlYSX/4rw1RwEL0k=;
	h=To:Subject:From:Date:From;
	b=fwDLPCSDCHLktVam47Ja1naNlAuIcpffizSk44ANRktbseFSKihbZZ33a9oRzu4hT
	 y3/RfMyd/rGwVgKpoAiGl05SMDH+B1nC25ofBXwsKqVuMz7eixC/xJPZJjbZLcYpBZ
	 SP05BIhI+yYHRSeA/nccOE68LZUtHYWBleVt+9vCb4VrnqvD/2RXTyQDSDfUslzdsx
	 xbN9ZC2taDlTIGcBbL0RWmsgY8bU712QbcCE6PvIc1hYpBHmG8abJF9B9yOyWyixfh
	 9DBRGzvQZoCoiqAHxomBRKu9k3djFn5uaUikYq4OjjgkSUSAbQjWYECMIbjH6VbE6T
	 ew2cKj1NeHfpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F915C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174284519357.25642.8912039995082620245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d3998e85bad4ee25fffb72a03cdad9470be40602d6f5b4546224ec0db4512c3
Date: Mon, 24 Mar 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742845193
