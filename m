Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641A03B7742
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787821234; cv=none; b=jKirI1+VUa9zKuMLcBN9bChQYagPjKJFzro4lTAWNxdBpR8PaqhRkCQtpUfuqiudEC/OEPu6YiUeHuJmW3+ki5Pi77QQwJqUA6gnzUVD6m4mwGri7FYipBYlLwAupSg1NX+E5UsdRo9o/604Ze35kdkjnwRQdo+5jcqC4EH20dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787821234; c=relaxed/simple;
	bh=FntsCwJmvsDFlNelrocyBjMdvPKsNrFYWNpoCn5OC1g=;
	h=To:Subject:From:Message-Id:Date; b=AuXvQRVPUAT1kfh1rujsaNpyuX6JGyznnYhkZHRoRSH6x3KxteblvaitJF+InfiuwP1tJ3lO0jBqL1N48WvaPBu4U4IVgNwIj82yBsrlB8IkkTbqOYjfi0Cwfy2IrwHbTvz249pQwc47JJPPINfljlVW7YnIEEZIUTPtOnVPuKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7oFSHMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7oFSHMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43D7C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787821233;
	bh=FntsCwJmvsDFlNelrocyBjMdvPKsNrFYWNpoCn5OC1g=;
	h=To:Subject:From:Date:From;
	b=q7oFSHMbpTxqC6PfWwndfFWNBNfGSmyHZHT4I3agGcLNfiBH4hgN60coKORzxD6+E
	 AwpL3YnxtJ70B7Puze48hTVKjkGL7zBRaBstRAvCXydfWWvi0x8RaRH8K8pK37z426
	 OLSi6XhiLMbzvkiJVcVGkhIs6wVUCzgRtHGiiGyqQmqialcqjuRlHYBndZ/x0V7JzZ
	 jY94wQdGf0HL/z94gCYsoEQn769648cHDjWwF8zqlNmInb9G1veVY6o/WIQef4WDLi
	 8Lm+Ko0T22aR6vq96UevguGQg0cUCVPLjHKWxTlifw78CgCpixczD3woNKIjtjSO9s
	 UFIU681b4uyEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF65AC61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782123370.16977.16246610759304987208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d252ad0420934a958bc441732701b488397690e5a029d59ed3010eaa2cbd97ce
Date: Thu, 27 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787821233
