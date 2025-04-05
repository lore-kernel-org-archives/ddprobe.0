Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F342C8CE
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743863994; cv=none; b=JeIEqbPeAbionsq5/mjI0uEgtTO19xwOnOl5cxdHvHRM7bOFLg3yvMfCed/1NIO0J0y9NWvN71jEdqlCVW4LEzHqVpXnoTYoh1vLTfL5USukxbL/bVq3+voVfmcygddjk4Y4h9WAM1P0ZIC5ien2qqBRJCzBYhqDaft4C/cFHtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743863994; c=relaxed/simple;
	bh=NQO+INYdsBbz0UhbbH4Dyz7Kl1XaiIb2bCJ2VG3o7iY=;
	h=To:Subject:From:Message-Id:Date; b=XQbmFz19B1KsE0w/4O9jAlaDCqY8YiPkQjUdiQ3uWfUGxWHHfNnMvejBRlVPR+O6ItsBQyROzuQzgH239k6pUPSSi1EKc6cyvNvWxN/k6ejQTkWmFTc4UQ0YIvbxaQusE87bDXGoHuzsezOAwFPc0ZG+RntuFi/g35mLylZ+sic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/Pcv8bM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/Pcv8bM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABDDC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743863993;
	bh=NQO+INYdsBbz0UhbbH4Dyz7Kl1XaiIb2bCJ2VG3o7iY=;
	h=To:Subject:From:Date:From;
	b=e/Pcv8bMp3u9fUcsyv5RTN4MY6kTl8aHPW97H/Gspvh3VK12tnnsuLc3ZbbvsxSxt
	 NFj+hnPagNvAC1XgX9xJDbv6r6PSCqE0fgn+gDbNL3UpDQv+30l8UVtMXdLQ2GPAY9
	 /bSs9+Lmx5N5hWwZkjOuvojaG0YcDdZ7EibPLItFDganH5qalAIap+8ydET0m6OaY5
	 y1Ss78NZnINy8MrL6NdBAeqcIC9zspKTbe5qvMjLMgSC7/EjCj2zjgMQK8Zo3s4po/
	 x3G+0Ot5NlOgF88pJyrm8eHZ1X9HLqyVkZCKI6LNclvXX6SzDvEUvMYcxzE4vOdfRT
	 d0wGv0Xp1J0Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95613C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386399360.10389.17412966544291051095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a8b1e4d164eff8a4e824f8f36c12d72d11ea7cecb58a32c03d716ec0af87ab
Date: Sat, 05 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743863993
