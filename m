Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD5730BF55
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761220194; cv=none; b=dfjDqJelNX7pbtjGQ2JHlOHZpXAQuI/JyIwXECNU7rRtHaDYcYCilgpYajsdssaHlVoMlqd6amdw0wRogZ1xeKYLQUWvT/6ivyX60+h6/a8E2IOcCmBF6RhattOberbyWOSq0JTgCYQ9tA5yICSkki6u3yg2Naa4PGGqVDoEqng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761220194; c=relaxed/simple;
	bh=HPjCVPSvLpFeeh4wJj9n26pWhc19RhBKBscoULFzuB8=;
	h=To:Subject:From:Message-Id:Date; b=MBsBJxKpXZwV6ZMuOmU9PTHkemxc5ZcGsAcuuOf5RR1hVUweUheqc+UNU/DCG94tgHRAsSSPolFCyH6SpBwxJTB9aJwpO5UKSNHeqd1hk7M9MzPCcZVEK6W32FjpFxJBuH2xKZO2EpvDQg4iRxnQHYcUv8HRhuAJrBQKD83pAN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgcJVWbf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgcJVWbf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3520C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761220193;
	bh=HPjCVPSvLpFeeh4wJj9n26pWhc19RhBKBscoULFzuB8=;
	h=To:Subject:From:Date:From;
	b=cgcJVWbf/j/QSMTbHxjs5APthlfcvhY1mj2o+ctdoZuggFWFfwJlE/0dNqyBzMAeb
	 T/8M6evLY2dSnXgeoGIRbS8xMzCtJZU2EbAO5V7bNNJPMn00nQ+Z7y4v6GOoIykR/M
	 /iT78m4scTxNX32NrZyaPwszBPxQmYZE+bxvj8UGbsUGh1lgWShVteGrBRT0aTOyyS
	 z/gX922BMqKPntGflxEo7eQnZQPjpExm5OL9ne0/ed6PEUDZjetvzgflCp1m9Bwpuy
	 HNVWwGx5r3Lyelawvh2DP0j7SzF65PMo28YkHwpPkmsu5sJaniql8Oo6GUBYcojxeu
	 yaU4tVwrbFbVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90919CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122019358.14964.9860440465818976936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20008bfa007ca7d31419fa2121cceb371c32f5ab3a12178bfd94d1af21c5a44
Date: Thu, 23 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761220193
