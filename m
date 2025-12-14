Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E57191F98
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765709574; cv=none; b=W5AOcnr6kL6643FvmLWeoWq8YLQCt+tBbNoa4ZiEDGiDOGxvuxJ8L5GfBUnfL05FC6isEvVlxq6oWvYhbfOv/W3xfETr7WMOXbGOtCqbKnTJpfH8q+sXPfEn/4kUyumI4mWdkJUNa5VpnteuzvtDO2OQoPLuUMuDnRIlj7WQUvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765709574; c=relaxed/simple;
	bh=kXDi/GHVnry6g3Q3t9SHwKlo0ZJTQ3weCoGL8x7J/UM=;
	h=To:Subject:From:Message-Id:Date; b=mH4rehniHsew+VWWCwRkaJGSHmN9W8U8xUYTpWIFsmWnufPvdBK2mFpizYPdbwmlUhbtECwDrxZxymnip5jYupl4rY+S+1cxBfqafJhy8YCG8uWywKxRAIgOcbGU705wRbSlnmLJ+LLb5tprev0G5EierY4xAgvJyXHDPn1toCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lh23qsuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lh23qsuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58CEC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765709573;
	bh=kXDi/GHVnry6g3Q3t9SHwKlo0ZJTQ3weCoGL8x7J/UM=;
	h=To:Subject:From:Date:From;
	b=Lh23qsuR69s68NchNYRYVp0hKk2MiFvr6qYLIibEok6ieIoCb9fnNUIOVxooJ2KGK
	 OazfY+WdPD7nQKEgJSPtxkNxPrPvhoWV0ZMRhu5y2oG+BZ2pMTzRCS1ul5AwwgkUW7
	 04Ov+uuyO1x2GoCG5UDybcR+99K8a/GjLhLJJt4BgPpY60xkqHxhRs3hpxe62f28F6
	 foZlRwpjG/aKWUPM92eeKK32MzCcO+yb7Zvkx128qcB2nsZgHKCbEgAolUyc5uZkxK
	 eerz6IjvZnjDBB0mp2qRTUgkFO5+SwiuvReVqXXHeIg8RxJpq2cXGa8fplKFq4Lww+
	 SJub8UuregUFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0429CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570957363.13515.13282819521621873190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b41b04ad83832a96c1f02a93f2d8f234cb0a8c9bb28ece068466ccb44bfaeb
Date: Sun, 14 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765709573
