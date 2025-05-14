Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1761A8409
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747232394; cv=none; b=t53fkwNKYpKtXT4Vm+/l+CsiKdjwrvN2gso/T9mO3ZjsBFE+74I8cen+cZ2DOFa1/ftHJ5hyVTJ/IMW+IFL1CpijVFRHN8ehrglClWwFjaqJKti+inASwBYgtSKLIXaTB6Xe/tDYs26a+T2jxaWO99ZNLZtctTguVB9siksSqpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747232394; c=relaxed/simple;
	bh=mIfiUqQGSx4KZb6h8T9uHyyVBrndLACfv6jEKabZ8gs=;
	h=To:Subject:From:Message-Id:Date; b=U6pX1Hu/gt2GTnmQtir6LIlRRRNO8vOuMHXxeOsGTeR/Y0ULgAk2zV3uBhVTxmYDa4zpVbKbbBCbgWbGjqYKYq1SV4iag6vvwfo+AFp+K3/VuwNv4BQYDVkvFHP/VItJMBRiKz9bHF4rm3PB55J4HxQCipIWnh8PeJYTvjFgfow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzo6uN6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzo6uN6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F02CC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747232393;
	bh=mIfiUqQGSx4KZb6h8T9uHyyVBrndLACfv6jEKabZ8gs=;
	h=To:Subject:From:Date:From;
	b=gzo6uN6cLg5kglYOYb37tnBipfpAcLcKAJ/lHWXKGoPLoT1YqZfz4l1NQFVQy2yN9
	 bb+GWEi2auQzSZll2YzLMW7MT5XpPQ8a1+Whx2TqgkPcH8CkV8M7ufxgl6DESxusml
	 zNWhvsShNeQTOaZMFoKUaD1U/iT5vAby1548Dkuw4mgtGkzZUu9PgtKVPoP16X5tJO
	 7IWGCtyraRVsQInvcV1fDQiulfJVACUxTHR2k9tXhSarS+vRl4JXTrQ1rxgbgewmQl
	 N8a8qF1QJF1wZPAxvyWr/lwASOlc546/MzS2i7r07noBCVwkYRaU+p8j+v8XEg/0W0
	 P6MViX3cm/ilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20FC3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723239357.24055.5127006186891788108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08fef4a8188d825793a1c3885ef1e27dd8face78d4a3de38d525b3d6a996a2b4
Date: Wed, 14 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747232393
