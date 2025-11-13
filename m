Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EABF2D1F7B
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763025594; cv=none; b=GSRnGSWVG8casZJBb/5DM/nRzRDOoBlVWpr6sJaMW19o7M/KlCE09TArO/qon1aTQgPLSxV5Ny2BF80ZJ6TjXf2ricurhW5qVOlIMYaZLSNyigH3L3JxXesxmgT8GNtoOvT35EDVx9QLUePH67Jq+pdkOsg25HMl2THoxw4hoQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763025594; c=relaxed/simple;
	bh=iNbcsWSwunU+o33vIoynYs8Xac5aLq0xKqDnzyTTr1A=;
	h=To:Subject:From:Message-Id:Date; b=dmuxcN5wZB/53KoZ8d3tKCg6hOJUSMyGFx+zJP6y7aBX4PwWwAMb8d4hMYtESPCXDaEG5f+xM/KAVB5Bh4g4BcM1Pue1gd0iz5tHkLvlw5vyiMAEIXpjwh5yZ1lMZxY4QaSEuKnBInzXJAwfE+u1bhKMcemgNAx60Q50ZOlo9rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcLgt4b9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcLgt4b9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B73C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763025593;
	bh=iNbcsWSwunU+o33vIoynYs8Xac5aLq0xKqDnzyTTr1A=;
	h=To:Subject:From:Date:From;
	b=QcLgt4b9B5NSORT0Jg15RoppkTIwrQUuAlb6EqcCgvH4LrLg6U9PUVn0I6o3oN/h0
	 H8khROWE8kqHkhS19xY0n2iht/u5+Kw8J9xVoLeuTCUDAZufZGfCnL9rDl5SK61PCn
	 SzZ80XJx1JUZo1+jZi3lLEbD4p4P/QJbUrHacck7ZP5A+CCiRVvSMnuTw0DkfmNUMZ
	 GiiI5i+YWG+LrTN3R8IfrVKFpNAPoGu/jU+XSOmQZRlWj0IsubAr3Eu3Knjd2MxHlg
	 tZ+UOLNKcZwr7pHVSGR9mA/odlROlrt638Ah+PU4UnQRmB5HdO1bqFttEQcmzISjVJ
	 DSpThCR/cLJbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945F1CD5BA9
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302559359.9149.11195965958861659447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f5ff6baf92dd360d8224d3ebfbaa8157ee2ce2737156d4f48d0da9a5a4e8f1
Date: Thu, 13 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763025593
