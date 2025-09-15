Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E986730DD06
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757945994; cv=none; b=tmWAg++aSi9qZdSpZ3OFsIPoEfPB6ZP2DrnTP0sFFHFIlyiOnWBtO9FXJr8kDNC5cFshOfSBuY1VywqnT/yEDVdHxw2LRuG/tQStwv9HBAivAUzWoX2bSYAzenjVudxbI//JYsOFMcg9lduZg5bIoMk586p/Qv6+Yjo102v7Sr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757945994; c=relaxed/simple;
	bh=Woop+WsnHvFHxkFNp4iCc0qJ8Hesyi++C0P031BbDLc=;
	h=To:Subject:From:Message-Id:Date; b=kKFkn4OAyqymQRRKmVNmLlSIgo2c44xJ1tauSciVJvRluk1OfCbY5sYdaQTaZ8/ZQ2omgw8QK7FV5zK7JFF8hqpYWfSkmgCR5E7DyHOIfg/7FvR7MGmkRJgYT4X9g0sH1FFwKzlfzoksKO3KU4irGsZ5W8ClMEekLsH7Sc3/MUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2OVcU9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2OVcU9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF74C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757945993;
	bh=Woop+WsnHvFHxkFNp4iCc0qJ8Hesyi++C0P031BbDLc=;
	h=To:Subject:From:Date:From;
	b=u2OVcU9T7/rLzrmOfVmRjF4jyeaKa3crpVVE4N1DQnl8S2w/YieVOV9cpzbd5/dbS
	 7QSO67EzETmcmsqSlKuhY5kzJIwknXS+kNklZIs0BvQ1uLZkcPxeP3RXFx3itt9pNN
	 tRaiVcPo4kcMSWcHd7ln/8jH9HXpLX+0Uk3xo5/V2EjK7TKSdPw1WNfzXbagGS1uW5
	 VVs0DPvOWcnP58Fya/U9fZ/5qpMZSghAZ1pIJRBceRbY/DqLeiZH0qHw81Ac7OKMDO
	 3s9HSpV2QRDWJRD1n3prU3oilhhCF1YIf+u0N+g73E/DY26n8/Mg/6D8+abClu/BVx
	 AK1kFz4maoEXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F248CAC59C
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794599357.15349.11488737854652044876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b30f9d3b0a71cde55f9c39a2bf3828554e4ad6b2967d5eb9815405980a6909
Date: Mon, 15 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757945993
