Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABD472F1FEC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778351854; cv=none; b=UN+yBKGoEJoeDwPZzHzxBNXXkPjppHb+raM2kmzcNJG14pk9qL20a9e7SuzVCtVLhL3xpu1ylqS6dyuXj8NwXAftOgI/QN0VPgj003hg0kMWybdEAe8/MEGDeaGnKF3U4cNNpyJCTfEn5OCAwIeBPEtOC0y7AYgQErVmREjwMHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778351854; c=relaxed/simple;
	bh=vKqisaZPh9HNyDOmHPeoGhh3gjZEy8rNRllhQCMZXk8=;
	h=To:Subject:From:Message-Id:Date; b=hk9iAoojFyoWF/lzcwbRhRWw+g8qW7fY+vWatSM4IdnimPoKoCfdK4PzTG2nB7qWo7ggXna2+1oajfhsedI9KxlxrPhice98qOYMFRJietKcmVPN4O1oUEyEBqR0af11l3fKe7jnEaaZ4CTCnqodmQ/EHZmp6AGL6wU59soj/As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvZYO3j6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvZYO3j6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4DDBCC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778351854;
	bh=vKqisaZPh9HNyDOmHPeoGhh3gjZEy8rNRllhQCMZXk8=;
	h=To:Subject:From:Date:From;
	b=MvZYO3j6sebYI75eZtvCu59qvCw9G4SAhXJWtVit8BBRzyLrKfwYPBzBVzRI+0Q7l
	 XjRZ95/bXzchhdLWklarWZb9B3pVyjQuY94lqcO5TEA+IYHj6iEh6hb3Qh67Y4DSOk
	 l5eYBLQTwEeUbbqGKOAhC8xPZrTbXtKbp0ioJyvJIP0jRhJLO48rQti+bU5b55cpnN
	 JlYvkXcMFgmMZSlMEp329BPYyzkYIh5sBKzf4KZOLm4g8CCwMfM0Vj4LAkscmcXSzy
	 fiIgLmICOkS5/JwMrOgpzRSFmezzfo3dzWHROerneeE2s6SkpGebz3SM2PD7ci3w4j
	 BTLA/tSSJRGsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C748CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:37:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835185392.27182.14811467004465024956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcf3f846f24fdbdd345ac8c40fc32b1726100259a3035bc1406b249154e9867
Date: Sat, 09 May 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778351853
