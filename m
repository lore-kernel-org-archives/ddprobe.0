Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176D5155C82
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768266234; cv=none; b=BSEIPha+ZRo+qOWL8ATbuYfrMEgxetRQPrUCgfzapzSvJyleCbeLPNyb3nnXRdjaunxk5OB7BeR1xqmW20RGRUiLy49QfXig+u3/x5ts7c0csGIxXgVdMacZyn69ob52FImy3EEwlTPmosD6WMcpeOrtNup6/s1wtVdk3tSq99Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768266234; c=relaxed/simple;
	bh=vq/KfEliBmj9eq+CfT/OeFzhSgNQ9YxYDVi4A6cbqOc=;
	h=To:Subject:From:Message-Id:Date; b=LXGkKhv9G8BRDBS6gdh34jYdNzYDIGAX/RnArS5tfrvbC91d9JcNTxrEasrRWxMn01lZkwsODpN9Qw38OEPFmmwowC9FmC34vNvkiW/Gv4XlfcjJGA32fFzVGNeqsohb4tuKEQe3qaujS+GNbf58NnbYWkT0mHlhYZScNbNdEfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkKWeQHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkKWeQHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A793FC116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768266233;
	bh=vq/KfEliBmj9eq+CfT/OeFzhSgNQ9YxYDVi4A6cbqOc=;
	h=To:Subject:From:Date:From;
	b=QkKWeQHsMw98RH4PW4QL/VuH+wqL5ePNrGzCz/Ibzya+P1Zx1V7X5c6FoY6wlP2R3
	 XPTAiycBu2FtUdh0e1BdMbiWB/oc8hQHfLGJPpxjsSpYYfTAH7MKuUpcK9JAWZjKQC
	 8rgiP7oM98XZDEbiOHAozP9LzxWUcIKM23VPx5nX68m6yXDgsGtEK6LsEOhvnvlOzv
	 afo8IIijs868ZOL8IIVJX6B+7ROmxdWxSKf7ThGaesko9NYdLBJSTUcf+RS6WTHJd2
	 J0Y2u4YD+7oIFzta/+4jYC+TOyWfOqIyGrBAbs8gXCavOW0FSaObCZ85pblVykdNTw
	 D8LssWDOtIXWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9716DCF45C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826623358.32248.5673884592609910309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38dd864b50ca2681662a380cd769b3b6abbf094fc197162c84bbd460677bf20
Date: Tue, 13 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768266233
