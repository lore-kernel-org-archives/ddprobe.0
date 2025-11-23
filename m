Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5F85CDF1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763906514; cv=none; b=pWZABZ6NOg5Y5zS1AFVXXC05sCld/Gc17aHIKBKol6tjJ+KNX49G2kKrW5oZmUvicUyKODHrzyrKwiZNHUkS8Etd3OzTFDtMK1ipq+PHZRbvty1wIThixSEx2+C8ERplc2PDAJjd7r7FBogVn6D9BTTOogRNcpPc88/2xm1aGGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763906514; c=relaxed/simple;
	bh=qWyfTxTcjvkdznDyVPz6WV1OUaLPnD51bE9ulH7JOLQ=;
	h=To:Subject:From:Message-Id:Date; b=pF+CEsyh7+9iTNguk3fL7cdSgr+Q6/nx70xUtuPJbyII2fUdRqpZSlJIf51Bj523d6kgAxLx/sfWI7/niiE2B+94JJhEg9PSPp8+vXfIL3irxLATf8xyGw2sKgDkHrQLcQkmJbPnRW+foBCT3Jhd82GOjYWxk8HYB+lgGO9Dbvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=og1TQ1pr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="og1TQ1pr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8457C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763906513;
	bh=qWyfTxTcjvkdznDyVPz6WV1OUaLPnD51bE9ulH7JOLQ=;
	h=To:Subject:From:Date:From;
	b=og1TQ1pri+5IrjZC4xKL+qk2JGj79C2j29iNYpb5/LJqiKuyP1NAN7Uc6WTn/vXxR
	 C13dCHi+D/HDf+LA1n8C01qZQO2L7ZFcDsZ0whrpInXXAXMCJHokjoLGflgdGWFFG9
	 xI2bqiC2ugv+3HiXQPUV5kIN+dVNaxsYxR4xTSdiYTEUEeM0lE0sOv3orXbGmvT8m4
	 sZAwoId5hZcF8ckjW406XEj6F0RVTOZoXE0Dv3CWPDLPh1lom4dGHiqgmfhFz7tSBd
	 GuZf1twmQYgEZzvwOPH6FOSYV0aD/peD6Uu7+8yBTZVQgAMDwGhOgLnrsuol3p/lNG
	 ZTauuCJqlFkPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8A6CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390651359.15876.18017836837938215267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a609c333134cc7468af44bc75f86c0295f49c33da3f933c1344c3b1b0e6487ca
Date: Sun, 23 Nov 2025 14:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763906513
