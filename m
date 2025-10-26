Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F04610B
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761472194; cv=none; b=bOMT8ER+UQKtKJHFXpbNJSAnDsB4r5+0LRZKJo9PMyP7F0GboSZOLDtRfRQh1tksPzvBu0TOGubl5h5XTwGkIaNjIccobIrn8AMtSEvuj/9p7cR3R/2hJgnvY6IL1MQgVWPHBgpsSvdSdR43iQ5sg0THJ5V5ErhLBLGHo/jrjWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761472194; c=relaxed/simple;
	bh=0GC9ZRMP3BBsJDTet15UJ7S31a8ikEeqVzEypPxnmIA=;
	h=To:Subject:From:Message-Id:Date; b=MsnarIPVFyNFjnBM7d1gRCG5u9hdn1oAMS5ObFOTWm/JhJEGYZlIjESd7qIpBDoMOb38bgSFakv1uSAptgCz5fm+jt4K9Wa/Pg8DnhDA4r2TkMfZUKOFWHO9WqN2sKgv1eff869vwzjzOX+Ze/9pKlCcxtEdGtPCHF3Z/e9frTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSQoh5to; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSQoh5to"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8602C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761472193;
	bh=0GC9ZRMP3BBsJDTet15UJ7S31a8ikEeqVzEypPxnmIA=;
	h=To:Subject:From:Date:From;
	b=kSQoh5topvn46YDFF/lEMvPwxrUQZuRKgw1NZRQdFK0t5Gg6wfvHhK61NJP8OmQXf
	 dDsFXQ085s3+W/jAtpioYxSEWnxE5DBweE/TgEdSChUWjYL+DH/RUaEDg0fJqzoQpu
	 3EbHzHHkw/YIfkL7pY8bzVKZh7m4J7FI1yn3uSuV+s0ymn/sWUchCIz3NyUe2Y5mUH
	 HvVHFP7DFo6qDgryG5v6nyAIgBEdLty+GI/eJCAACVO/meTu/fLF9WoqMkpKhamAKT
	 2ibGLhyPRaJCgi7Nhl40UvSG3sPSGd3/RDKEPzIJAVkGstx5hwKtfXH9BrTeB3cUpT
	 nC+NuU8CzJ+Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938C6CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147219358.8714.17803672984309000396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66df24a2578ec1437c0ed04856dfaebad6adb8a0daa87fa06aa47170ad9dd6c2
Date: Sun, 26 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761472193
