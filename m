Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F802FE05F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763729514; cv=none; b=ha0quJ4yqpL1Prqm3iE/J/yeIYiB/mJE+cAiCSzOE72libq5ZqtsFisgm69a7Mp+XIhn/gzggFHoIn7opmk2UaebX6dpgJyTLko/tspID4Wos0U7A0WtBd0YCdTUQmn4zGNgaPVgQP2LHavwciwV2WUA4SCzoaMrocwLGJznI1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763729514; c=relaxed/simple;
	bh=K6AiSilAN1MXNJYNYNR5FUsniuk/sBvwmRY6w3AQAho=;
	h=To:Subject:From:Message-Id:Date; b=Dk9uUHpGmAvE8owxJmxHbOHxC8faNlZu64jegiCfqZyq6vgalcHOd9WcsA/9vABdbDEa8d80ADXqqSBysL4G6GAaI1J96/B6/OKpB0W02L6K644CsdJrGZ7uhzhOqqBs06KN76/FAFNF00rlauVmfAznoLPFEchlNSJL+fpx6CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EH3nt3iy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EH3nt3iy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3838C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763729513;
	bh=K6AiSilAN1MXNJYNYNR5FUsniuk/sBvwmRY6w3AQAho=;
	h=To:Subject:From:Date:From;
	b=EH3nt3iyL3/MKwhS2pLS+bJnTm1Y6cbKpsJ94drB0MdjihwPdxzGKd5u/fIi/zBOw
	 PRDB82Reskq0dHvmAO2QLgEt9qFwfhUObC9TX+1lfc8qlFtsrccisGIcD+aThHeuDp
	 R5V1+Euzb1BGN2KfQbecmu1gfGOJ6QsLV5GFjsBJVbRKKlDAIS9DiB1eO5+9X7UxwL
	 5G3CtrLyPy2VnqKBAmbx8jUoaGq2TsnfMUT6dElnXsDOc/3o6jss1GpFZiimouZhlA
	 uPiW8pAyngxae5K+KOmkAqU0g6pOT+tohc02LxYBVbj5oN8yYEGK6Fx0Fqdpd0rfKd
	 6ualpAretxxRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C83CFC270
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372951358.11827.6500430039294292068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb74b9d633eea2c77fcd7919bcd9d0cc6721f47ebc5ed5392723cb1a423be2c
Date: Fri, 21 Nov 2025 12:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763729513
