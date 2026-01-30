Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8272DEA94
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769762033; cv=none; b=slwqwYsau8g/u58Fkm3KUYgXVW4gUKkZgFXMQaiCmTV6SWrU4BRic5ZJj2mJPfCY/AWfFQWk1V5fU7TqBbMPEhjIeO720FFuuP5iCqcq4s0gj1T9hBHE7yAziwiwDwGt18Ii8LHduYOjl6kfB6b1XRX2+vIbixGJP1yJt7iYygg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769762033; c=relaxed/simple;
	bh=PYTMHsHaNJv52/GyCK3C+TDoXODk+vki7OOWhwk528Q=;
	h=To:Subject:From:Message-Id:Date; b=PWp78YB1/zQdgqzInlsnYAodkD0fD6xopEL73sq1i6ruqp9saBPcwuHe9wxiBPyGd/UIuvlJgHLNyFRJdjmM5g4LxFla/bMWWbUy2XlzftKbkLGyowP7jdq0FTWWwL1jtL6UzCdJ93bgT5DJb4UA6Zbc6QsQfdYFin2SLFTsP3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gdew21j2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gdew21j2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24D6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769762033;
	bh=PYTMHsHaNJv52/GyCK3C+TDoXODk+vki7OOWhwk528Q=;
	h=To:Subject:From:Date:From;
	b=Gdew21j2CEEtqsag0rUaZlbir3uDeYRXjHarTmsyXoZnRe5aFlRaj/KFCc8lVh0w0
	 TYLKBGWBBGRFinERqNuTOHLZLfe9xnuy0RXN82GQ6UJg5z3ysXytws82FjOAfSuiUy
	 Zkw5sYgRMbVgh4Oyv1z9j4ati7rYN6ZdKk38B/e7bLrjyPS6Ksw6g9N/9WvoQtr5oA
	 904MjtnPGYIYGlbZHYyHzxcmcUatfMEQ/sUV6zw8bIH128NTr/0mIY21HVnGJPtFPs
	 2d5lgVCUKZwtzL72OzE8MIjPFUcIGyB9Ownz8BA/ScNap5GQsbAh0tNgvdaCrcZBwt
	 C5AFS92L2uWGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921C9D49C76
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976203358.32488.18089393138256959588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c658c316021783f736489ad7679dc0cc2f4e4504957177325a9aa127d69121a
Date: Fri, 30 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769762033
