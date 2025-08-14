Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19584252903
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755153594; cv=none; b=aYRq9m+jmsHDjf86pi3Vu9fEEqAEgqrPy2Jk5i9rFe40OSgQCpIJQtpbM6Z2OkHxL1rreTepE6yFmuLJt3LlrBbVEetqKFdDxTBnoIsMeJkknRGMoDHawrkVPEeN/7yb8KaNbwyln28pXyWp3h9/+gbEsaZuSYmzw9tRelrL56A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755153594; c=relaxed/simple;
	bh=B9vMph1acFc3VyDNHv1SwxSkBCGy3Q8V3uDirx3B4eM=;
	h=To:Subject:From:Message-Id:Date; b=cP04zToPB6kR8A7Rp/KeDjYyUD86khxaYeSryt0FDp9+PlpQ6rwOqqLy/QUXg5byiuZy5fIKnLZ6hxgzwe2O293aGDPVu35Us0scxFIuLdopcQzFDZBgkmZEwvcwPDHZDxL7h0oBhLcmSlsGzxRzpHLnaP6PoX0L7BsuOUurrro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQ4pJTOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQ4pJTOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA7FC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755153593;
	bh=B9vMph1acFc3VyDNHv1SwxSkBCGy3Q8V3uDirx3B4eM=;
	h=To:Subject:From:Date:From;
	b=bQ4pJTOf+4rvqHFgP5fpb89tcSI38vng0cOQoDafNfkfoWOI58wo89iZzSen9ovLd
	 D5M3mgFQDQzUPRvTvdb55bCi2V+gdSVF9Jz4T9PvF0b5Mxj8liI8vmBFbVJ0Owezal
	 u7z1VJbzNe3uWtqh7xg29erxRGiQAywI4zFjS+Q7iomIXnexLwS4fiLNk3VtCavusP
	 9k/0GgKocohnTVe3LybceFg0yPghB0GRhjoZmG3OcxcTR3kVFzNKjTnMnXLau+tLj7
	 h8d9V3jGoc3uQiM8pLLRJ3TncSstpicGASIL5t1WqUSK1eDUlOoJDJafbTLCHi90Nm
	 JGeZxjDyfzOMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C7CA0EE3
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515359358.1846.2316229017132710114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa7038bbed78f345a387323f08d4cf0f1e89b2ff786afd20d827c8bd91af14c
Date: Thu, 14 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755153593
