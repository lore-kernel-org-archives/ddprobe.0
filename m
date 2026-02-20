Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299AD330B3A
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771611294; cv=none; b=PX8mNuzJ9tVUncCT9X1wHPWOtFpa21QVt65HwwoukAf9f031kqsNUD5P+g3NZA/KRhJtiWU2sLv7iRYnvxeyb46PZJw7BeauCmquE2ogBo2INpvGl48nLZqI+E4vkd5TG9kDAGM9bsr9DCPBxFWFmp3hc0w1evfWMoFbiCwW6Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771611294; c=relaxed/simple;
	bh=iimKZfgWdZSg2SedksBoVgOr785VnIuJAu1VjgYvn9I=;
	h=To:Subject:From:Message-Id:Date; b=Kv6Wr75YRFL92moHxsFqb3SCTC9skwgAV0vHxgWea7376/amuR8opEvm4LGSg4ASfPjssSygVul1kTcP3B3nbr2Gt5a6S7QA491vd5siRLGmnn4uEYNzeOUhEoodrt6Q/y/SKMsv8WqD2YtN92LgniA8W2IPOQSRpICghp49bEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nha4Z8F4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nha4Z8F4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B970DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771611293;
	bh=iimKZfgWdZSg2SedksBoVgOr785VnIuJAu1VjgYvn9I=;
	h=To:Subject:From:Date:From;
	b=nha4Z8F4dUjB3/ctfqNu1F3HNQWYKcpYI8y2cYnjj9re+DDCeZefWBFGEr8dUlIE6
	 /YpfubZ+FPdPz2sUDNo30TMpZqTAMtM3wxTqMzMLFspnHWvj+rOcdBodePV0fN+ow1
	 96ykoAF5AMgojTRD2O072X88ICGb6Svo1eHyhbFIK1fEruTDwQJBpKkHyY0Wz4+PYr
	 65MxJbfki92NqWjR6WanEusBYwREFi+kCtP3OsVgmiPW6sKa1wKFBbKSeXRbCvxgju
	 oyFwaMv5pWbdh38wj9N/cny3SCDOM7EVH6uBzu4NLgk3qsVIdmHxuBijpkkKBgA5jB
	 kvnVAiYPiadOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB2CC5AD44
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161129362.484.8651804444142034185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 845b669afaa473c8ede3dc02204dc0136e01231c44514af3ade4b21f00a1688f
Date: Fri, 20 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771611293
