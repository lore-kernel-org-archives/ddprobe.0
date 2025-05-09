Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CAE26F445
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746773394; cv=none; b=jXtYXvJZILhexqCdq5eeYOQGVbwV0fJztgGTd4PrHKTCenOhIvwkAlLUnoT72geNisOh1kFZm3XwC+Ot1aIqwwtHKNKApFXlBWo/49LPtGEW67ruNNgxzNyPlzDJTNw7SIn9hp9dXnvm8jNauIkzOwpQk8XmLZBwlA0lzSsaf1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746773394; c=relaxed/simple;
	bh=gc/UMObhnf8lGOyyw9/rGK6iFSZjFHQerfRAGcoHGyg=;
	h=To:Subject:From:Message-Id:Date; b=ewk6XvA+pZRhbHEOtCFXkW8bRm3xwIvmtUuXK7MhBvtaPpJ31/5BqhjeVxID11ARN8WD50kEeW89zU8BB9eWcSAEvUoC+z5Sq5/Zpk0wEQVfQQRIM6zjmQ8FFmwO+o/aqId/5w5Q84tlMsj9EiUmxzOjRF7T4KMZs5DV4F/3utE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtYomX8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtYomX8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD4C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746773393;
	bh=gc/UMObhnf8lGOyyw9/rGK6iFSZjFHQerfRAGcoHGyg=;
	h=To:Subject:From:Date:From;
	b=HtYomX8GSlfO2+G5YvKO/ZuTmkS4MWjUKpgjgvTLP1ioR8qusrZ2xwLgDagz97p1C
	 s+m/r1+6pa+JR1eWOulR862/2+6AgTIkh9bqlymEHZ1Mnb8k9zcF9UzpXg0yS9KQ7T
	 rjf6fla3I+AzUotDMFffhznInu7LPa+hvX3TxVPUU/EOhDxIFICCWtZWF7KwnB42e1
	 RvQATgEgVWpMoySg5A8dx8cQMaiYlp1p/sZCi7e7MwzHOs+axzBgV7madPJG+eq8kE
	 7pZTA1eTnbWwAX7pcPDhA5YpdCbeH1fQ4g/dT0vhfV1nL2N5py5pMoi3LORJX3wRcb
	 mUXmq9xk2DJEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C35C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677339358.8109.14426479692552119106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ab15f3d144010c96a62e58fe5d67a14922668f0473c0a2199da178f297b68c
Date: Fri, 09 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746773393
