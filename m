Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDED1BA89C
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722920154; cv=none; b=F+wiwI3SmrR0Bbun9tNclEPQTwLmFLL3gNdnTj1Wdn7KdIVirqkPAfWEN4rNbfOG+wLSd0oK0yrk3vklgQ7K+vchneQE1EqmNoSipmV6PGX/dqRGSptrvk82MMCd799H5HfovmY69gYvj6lJ6PO5olYQdKtdH9uXSQMsQImoIus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722920154; c=relaxed/simple;
	bh=uEEYa5OCTSMVJSr3MLM8p3c6Qq5t6apG42bZ2NJc5ao=;
	h=To:Subject:From:Message-Id:Date; b=qpXH1c7qgKcBCOYOThMu+5HZXwdbdDHK2AEVQaIPfi7CB6lt1/7WG5XsuA9suUIegCYVot960zWVbDqD8BpMBzWkbHtRaE7dpMot/6k7bujJSCBW1H9gibDUmzv8KfQLKLeiiJ9l+h6B6DWn75SB345rOL2m0IkL08dDVEc4gIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfSjitro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfSjitro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB54C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722920153;
	bh=uEEYa5OCTSMVJSr3MLM8p3c6Qq5t6apG42bZ2NJc5ao=;
	h=To:Subject:From:Date:From;
	b=KfSjitroPVeeZcLQbw8sBqBey9as/FlFoJEMXmQ8cqmRzVnxjuiQ9DMAiA+ptszvm
	 Pz7F5cMd4yxrwll5UkzTpqP+6QHr8UrZlmYTALjC5+CLHpEQHGALSoqrtZ2B5grcFk
	 fMnCLJVILlRfcRQ1JUWWze4uOfivgQVxQJeya0T72Y9QEZxIv74YTVS8n9bjgG4UdA
	 RiD9o/ybpyhIhkc0DbwgT09z1YlGHp3v+dVevkz0zCILCqMJ5Xt+jhSI1KbK+sNLKc
	 MSvjBKtDmt4lRSU8jF5fhykt8X5TUlI4pyxeb7l28wM3sYVEP/wYxTB8rsiOlBBuG3
	 DcBbXhUT4z2Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE9C49EA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172292015358.29697.6279640786943527064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60295541e19483fbad579ed288a8fc3aa4c942d4789da77f12ca5d3e593dc331
Date: Tue, 06 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722920153
