Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8611FBCA1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760114994; cv=none; b=a6c73GvD04aNEGa783Exd6ri/7JsO1hTsHTP7erj0omLoDzEVvgHNQq7n/63LwIHX96cKiSh8a44A52WynN3wo7FQRNHUqf0FeID8h6QqapIpipzDd3CpbQOFTi8nT7KhI7Qd0M9xqzDJpza8k+cIWr+AGV51T35CLuPbm1hh80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760114994; c=relaxed/simple;
	bh=RXVDkPEEL0ZEoIVlUnmTVr9bz92/SMpqfJaT18rN6kw=;
	h=To:Subject:From:Message-Id:Date; b=fI+7IpYcfXjvEcSIvLToaGxbbuU2VwJPMA8ZmL/SCNUuNIHmXdyUAQGyH3NqdMRKi1BQch2nmRKLQZ9pR0omkcvotF9DRRaOgd4jaUkh0AGiF6NIr6BnPuZn+k0pgELADGdEekyNr8qtBh9lBYCPIvNvZGqo8dpHRrGJjdhi5hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtS59GLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtS59GLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD30BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760114993;
	bh=RXVDkPEEL0ZEoIVlUnmTVr9bz92/SMpqfJaT18rN6kw=;
	h=To:Subject:From:Date:From;
	b=RtS59GLtAEqgMEN+2mvGW5HW/cP5keJu+4Kxj0ON7b87P69szxfVjw2EDuV2WhG8Y
	 8wImyDMHIVlZ2p665U2tRYhsmZ1iY6IvViVzmeFcBAq4cLIR/XdQybj3nCcTABYfVj
	 53zD+L6VBGUe/e6c5+uz+LIf9JPakhhYjPO04xlc6b704XIivgcx8sjTk6D8R2d8l0
	 ELF7JPdQswJWPxKwyQ/2YrBKgEoEdH3JLPUv7ByXEdmhpee8Ws6sA/2uTM2uuP8zKo
	 B5FgG52LTELxcAKsJ2/QoipF3ihv6zFz73xgHjDzc/ieMCCeUOoTEtvAOS0R26Inrk
	 7JvU8Pzd4M7zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A27CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011499358.8000.8096086573094688025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0c37865718d23266a9fda0defce4e14a8f401b6dfa827e3e5d3fc975a9f0b1
Date: Fri, 10 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760114993
