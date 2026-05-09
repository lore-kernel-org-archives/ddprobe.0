Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68D7208D0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778321254; cv=none; b=nWhJ9C8bTzrnmdIOo7X8js/LPjOGrHxPPWODwEihJzNkGvx8E+LoXwmA1scoYQWz5+e/f5iXWoZusYlfNZaNDHIqk2cta/NHlCoJNF8XKSHuSLQnHULuj3+C8xPd1/p7hWGdGL8xHjTQ3/rzQtuqRj7MLklGQLbJnktsU21Skoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778321254; c=relaxed/simple;
	bh=z1w0tRt2sUnI5fgbmCLCq5j41rl9060aQOPJHHxwwsg=;
	h=To:Subject:From:Message-Id:Date; b=dPwfN4bbCVMcXR4eICJVdWB3awp1p8AWtQeqFr0mpfyf80dx/rTMQaofnAFPRzgv1e2Gfu+lkcJfm0K1KRVlwk3SiPZS0BlZFJGyS6BmyoCbJ5Jq6K9nJZHLTdOaiGf8Qwf4Q/X8BpNC+1xm2InT52U7eRkKR/YNNT34QDG0PVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KP8Vgk/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KP8Vgk/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 54CEBC2BCC9
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778321254;
	bh=z1w0tRt2sUnI5fgbmCLCq5j41rl9060aQOPJHHxwwsg=;
	h=To:Subject:From:Date:From;
	b=KP8Vgk/bExL52v93qO3pr43v6daG1CjixHU5+YzZSu2U2gjmHQSTTm0yN107ZwaaN
	 oshPNc5bR8Ni1SgXwBLgNvXzqC6nynZcKCDbznYJ0hWUXDei9atDufOWVeuYZMOTnU
	 U+U/wOTRphkjPp8oi3RB8EUPvWh6z5Md/4EaZq+e7Dsg1TMEqQu/NjpRCPVR9DY0/Q
	 TB+TMua0kPSI+sJXYf9SHEwg2nvR1InxhU6RJVXD/4Dj+3YfPnDBkC+b2vqr+QdbCc
	 UxqUmpdgxIzCbpXgmsfsvrxDgbCOY0WI+YgYqPkZA6En6UKypetXsyJOFaGX6R9J26
	 Awit9kMCnpOHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14DCECD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:07:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832125393.25178.9567431841674511310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f66365ebf7bd19e5534d234617a4f683f50b80c7439b5f5ed3312d318a0d9b8
Date: Sat, 09 May 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778321253
