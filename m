Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0816520DD75
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774444494; cv=none; b=Po+OGcdxqGOdGbR1Ch6t6oHeO6veFyKyJlrcK1V/79nrrExcZ/9TURaXnQFSZhbq7XTZTZJmAipAg38FD/laYXqGkA0a0ZsOl6S9awu6nVhxyG7Cap5sHxKdvEZ4Z1TMajmcqh4QY9VpTlBWNK6e7TSVC1jnAMND401YYfqMAYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774444494; c=relaxed/simple;
	bh=WQ+Xr2k4BTtkI1417cTOzjzqz167VdWw4R0BI9BO8Cg=;
	h=To:Subject:From:Message-Id:Date; b=itZWaphetzmb3ji9ukBgMTrIg6yc3FybZi/InV+/SKo+Fcfzc2MtEPmqHZ8HrAw+iAXc7REVkNZo3DjZ+vvhmvVlJ9MLtZbPc/ANa38A0ddOxawvwcY7obVe8TQ2rQ5Mc8S+dA6z7+bjSqS+yETaSURX3hI5RUxJl1O3XsOSW8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b80+XGum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b80+XGum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4146C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774444493;
	bh=WQ+Xr2k4BTtkI1417cTOzjzqz167VdWw4R0BI9BO8Cg=;
	h=To:Subject:From:Date:From;
	b=b80+XGumTpWf1D55h0rcAUDygg7iYunNRi1x8YSZsUUvBnnPIaTFIrUNNZW1amTw6
	 pFGsjMBFHnDLBoQlOGRsIhFMDGOcCms21HZd8zBu4PmXRAxx4zQGwN9bg49BesEmcv
	 fRCEw1cQPjrfEHk14+hUE6cUHLzUwKNMj5EriGmn/g8dNZvX/SI3iO34IosV3FlWJE
	 cAVL4wYtoXm0UjUnPHB6Jac0p0nzeTUh7mk8FyYvyxo3AE1ick+Z7MZtklcpHgtN1p
	 nVwWeZh5ic808QDpty2UpQHdFva+4W6yAvVSJxBLkYdYz7W6+VCT9byFVPtc3JLlOr
	 esCaal/nEHJCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BC5106B533
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444449359.30554.17125336844003788879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ad1a1529805ec3fde0a55983a26f7e6b9ada82c2e786040e0ee619f37b0d22
Date: Wed, 25 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774444493
