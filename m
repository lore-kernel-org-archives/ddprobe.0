Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BF71D90B9
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733162754; cv=none; b=Tl60xbjbhTtJyeoqGF1MYUtWCq4+f9u0f8Fta7F5LMp5ak5VXOC6FpZ6WlnUj/v+U4DW/qxiE3bIzizlYGskLfeL51NyTPqdgI1+Kmr2f8tOfA/aYbmAL+lS1DTjPIvtSOOvd9Lc5yqRyGDWEU/f6m3nk0wfKjWAXRS/r2fkKOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733162754; c=relaxed/simple;
	bh=JhZmKu8+S516fXDfIbHMa6OvWUPKanwHFNDnPI+mQVQ=;
	h=To:Subject:From:Message-Id:Date; b=gFV01WHYAXp7w9YRyimxUquvwnOXK9RKQxjQ1vQg4WKp6iQDZAbKbXMJHyWquCh43o83F3h/4Gndgm+WvW6EMNXzZYyGWQ07/8XiEsmVDoG7zwLM9232Mie6GTl0xXtmHvRrbUcbv7tnApk1QwPiuINjI5pUHm77fWYRfFtOX8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ofw3EwXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ofw3EwXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A3FC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733162753;
	bh=JhZmKu8+S516fXDfIbHMa6OvWUPKanwHFNDnPI+mQVQ=;
	h=To:Subject:From:Date:From;
	b=Ofw3EwXbFR6LBLoBXzYpMcryOXJ53GrDHFp46p6RMM/MpusXkG/VC673N1VShD5bB
	 YpjJEVdoStJPJc2HXce1ZH+Ym0wR/l5VtoP1q7a11HC7pYloRzwi9tBGcqlW/smgo5
	 1ZzdWh7LwKUXKj34abIMu/qaXS/kZnm/WaOqcH5jYcUoNCo61ib6sO8MQ8QoJC/0bL
	 lIVAixfJKqlTBqwz6Hk/+0GrSX468oordyjNjSZsRF0OrpDc+tZlFEb+lVBtKFK530
	 h2AdG7xHlnkCh5g7LPf7zZIDo4Yt2QyfCLSQJouSPjm2QY4AzjrVaPUaPCDZLdAQyC
	 HRS7miKLfSIpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D67AD7833E
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173316275363.17854.16209049017791805604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 750a1a08f142671629e5ffc25f708fe1475bf48a6e133ce1ed015da468f09aba
Date: Mon, 02 Dec 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733162753
