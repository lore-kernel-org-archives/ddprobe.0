Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424B2274B35
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767608634; cv=none; b=Zos1GjxokFXuKmpu2IAH7yceMb9MGFDc2L05xha/jgnRbudp9qBgvztW4QmAn8qrpa3jFz6BodWp5aNPFzGjKlEI8VlSY/eRi8IIBBlYAWO7QXQosS6FTEQBHeQJqI7IVX7kyMw+qARZWAUN7su+hy5S/zOQ5hgQlq5MNbZ+mn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767608634; c=relaxed/simple;
	bh=trTitbJMAUzdmBKbiqJXeNrUipFXkmbTCVG/tTq5ILE=;
	h=To:Subject:From:Message-Id:Date; b=Y8bDXNk9lP1WdDNhnQ/1BqlEPRVPXPQerrl6HTh1LFoowjnXQCmwXrW8hoVAQ17HVv0G6xAYPzQb5t7baxYBDCUtmXF86jPEIJq3XAbXI3A8d4xvP/x8J3+1gsrbcQ+o6ipXNg8VYOxvc+xJwvUUITUDZmDWmCF8ypAxRvae4zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rt7g92g7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rt7g92g7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE1EC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767608633;
	bh=trTitbJMAUzdmBKbiqJXeNrUipFXkmbTCVG/tTq5ILE=;
	h=To:Subject:From:Date:From;
	b=Rt7g92g7CNwkMjgODLaU9ULSXizPaCuiVSYHCm6fiz/Jsw+V0v+xXtcIZrVqQOHdr
	 n/MAZyjsxcBCFDE54unBre90FKt/s2uHozjHhoH/gA0B6k4zJlOOjklaIuLdZ67Tze
	 PEgI0A0YWNDe0U3g9sjV02JbjEyrqCeO/DsHmmjY7AGXkwIol7578IACg7rCnE/+FT
	 mouQl0+ckW9XJcpTLZ2MSNPerVKGLNz+YHtedIInrsU8Lywl2pHBJx0fWm5ko8Sa2k
	 qs0rA4sPSLo0zZLIZ2ErUf19CnyMM04B8WTH2+EQlQAZfuCDK9qGaapz3+WM+ElW09
	 sNP+UWWprWFaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B10AC2A074
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760863362.30062.16887395481978192290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e514b56b85e8710e40411fec560ad0213cba90a6305dc77ab55c1c9532ac9adf
Date: Mon, 05 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767608633
