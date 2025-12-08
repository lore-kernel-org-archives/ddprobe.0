Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFBB243964
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765210374; cv=none; b=QtTMNimZwc0CqotI6sm79MXsG92M2hNjftKr1T+S3GYRfooQ7RyvPdEnrdmPozmDhb2KQTfuXT7qnXAghHN0YgrlEZezeEP4JwrSC1iKqr+kYUYZMIa7la1tpinjlJHqhgemIY6oFJGDqR6fkWqLJPtLn5+83mH0k+bugU7K0ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765210374; c=relaxed/simple;
	bh=ixNP8zRyjv00V4y03EpV8V9FlQQ8jwTqwDUmsAgTkTk=;
	h=To:Subject:From:Message-Id:Date; b=dVgfGb9LOqMBVLNf21Vhfm+lxVp2mO/4Bm2Bj0zfjAlZG39MdyCBqevQGkva0b0tu4zWPRbn1QfXi3sXftvVl/eady/1fXzsrS9It1Ue3CMP/tkMFIl3rbSkor87x+YKJP+CAx9YHUUKPCtGPrFppoLyyrjq4cdQbF24YBCy4zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKQ18AHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKQ18AHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED87C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765210373;
	bh=ixNP8zRyjv00V4y03EpV8V9FlQQ8jwTqwDUmsAgTkTk=;
	h=To:Subject:From:Date:From;
	b=ZKQ18AHQ8wyY+y05kMwrhA9XPJOxF4TWicRDi9BOquEa0hKVQreM/5ABttNoiYiLY
	 Qgqsc9yc3nZ3TKaYd20Q8ZycUdw0xAnPSXfFM8/2XbJnq1trw1zhra5nrVk8wIpSoz
	 1bKOovWQamQW8obJafgi8papT/oGgZ6TVJgdFezxEwGsbm/YEzeVUhSaPfM9DXJYy7
	 XkzNfNtSq5tSHoXjN0ZpwFM1L9L8Xypi/uSjAv1MFLkORtJ1d9Q4oCtgQJ3rhy6vkT
	 gWcuivQqFoAPPI95jRAih5kBpggNhkXAZZU6U4LQFy0jhYsKuO4ql4RL07HZc38qm+
	 eesdImQrKPBIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958DBD3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521037360.12976.897682182669217640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99741dfde961185560b4e59cad1c6402b7b69152c0a5072901cb595cb22ec41
Date: Mon, 08 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765210373
