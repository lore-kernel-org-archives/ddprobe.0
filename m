Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32788220F27
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746738594; cv=none; b=O84z/ev50A7AQSMenbXvLSWGA0LFIzyAGsKKNtIgZGt58BQFXV375f+Jzho7efHpUciMwed8dU/y9EKficp6+BZqKQnwlpweqd7ZRVjUOYN84XCCA+kJzRsQywVQ3L3nm7bPQ430tTRZLnltfWG9yGLIyrE93r47QTe+46+0mds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746738594; c=relaxed/simple;
	bh=eRW6cuDsLn6gftl+p1r+RY3zn8kGvvSfdvni0MTvPOA=;
	h=To:Subject:From:Message-Id:Date; b=M3+OkrSfokvkjNujzuxVeWFDm9/CPJz2lyaAT0iToFNW/W5iqiS/ik71iGQ30QYxnkSSEtta+hv0Pdeb5dpV2lu+Ylitf2GgkPOb7VuWbuIHQLfAW/hY5oS5rVla6DKSBALOHhRx/Xplypkwvl4oRqkNoCjgkdxSiFuWhr0vydg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VijZ+ILp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VijZ+ILp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8673C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746738593;
	bh=eRW6cuDsLn6gftl+p1r+RY3zn8kGvvSfdvni0MTvPOA=;
	h=To:Subject:From:Date:From;
	b=VijZ+ILpg9M7rQ3998lBh7ZyPDmP4DeScYmLw5wfd5ytdvwOw1Uiu/OdfzuZ1HRFH
	 7/K4vRstKumRhl6xOyC3jW7rsMLVj11oPlSm7xLbE/Lgg6Js3TeIaw+gzc1eEruA27
	 uLQtG9wSe1sJjDmtkPBtcdjElQtxq89PNFmUscp52yZjvWFjS2ZrwTtiEEaXPJrxEw
	 quYr4wO18rwPQdCR80Dz3eGHkUWoj1jONHD+mSD4w+c07jZa8uOEtG/GrdffMmCgA6
	 OteYdgsCG9D4MMa7GvQoRQWUKQsQ7ZDvw83PT+zFRffgBcl35p+YFgiRHOyHPlU7hf
	 mvacCMwWfUhwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9483DC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673859357.31931.10878199270412929293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515eb0fa0211fe5aeea4d181129deaca863d999498e0d7688d26c29f6335e8ea
Date: Thu, 08 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746738593
