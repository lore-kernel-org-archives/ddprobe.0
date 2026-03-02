Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2409016132A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772426694; cv=none; b=a3XCxTlHRqPPSSvkJeUaXFhGtLptO+SexXj+20fCMp113JsVyvLf4WSuuXgmx8m+2PaFqDDrx9ZlmTNPQSsoUWmkqzHGu13Bs/3HMFpPnyjK7lwot8N7hcwAXHGu/kMPudfDJndBw6DdjZXz6g1l1C9rXIWNJyMqQsjksWe1MkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772426694; c=relaxed/simple;
	bh=4oKP2xXl6SUF+WqazP/920rPmMw6a4PXqcTPlEQLBtQ=;
	h=To:Subject:From:Message-Id:Date; b=pUsyaP0qO1JUSmvTj/wN/9AIKqXgSxA0VZkuMeEiD6Os908LM6BQBL2elCrPGIY4rJo922aUN6hci7D5FExE6jC+TM2MzSe2uHoRnR9l24nQNWglPy83DnjqSEwZua034XDyF+gUilfj62yz8OHg1adRDjDyfRmYNlvflPfRg+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPNCn/7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPNCn/7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BD8C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772426693;
	bh=4oKP2xXl6SUF+WqazP/920rPmMw6a4PXqcTPlEQLBtQ=;
	h=To:Subject:From:Date:From;
	b=CPNCn/7RTg7//zZUderfr5rZS9DrmKHnCYu+jfw+nFkxdNxOG10Gb7r6H8WUrw2SD
	 mQgiEDda64FrJ/prWN+tgdlCFWZjEsBBu4lGhCc2dpdls8vvUfljxBtTbJpllfkNaA
	 tiGPo1BXFPVJc+RudsdXdOAhwjMB9it2I5W0PTRjWFPdk8ej8vgqndFguJ8mlBgb12
	 NHID9Bt0F+JRaiU1DNKR5tZ//Uhlb1Kd3j+L+9oFnaIp9qz1az5Dk7G1NdUHMt+lJk
	 9vUA8ex5cSMcPcYuRrlKlscyrRUPShfOdqXapGCUsG4DS2PwoFW8pbe4A3G1m+5GkZ
	 ajmRkvAdDZ2iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5E8D58E47
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242669364.4456.5750519616268617874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3caf3eec1965e65ea5e0c3f3b36c7dcbb0cb0c123b1f595f409092b7a5f5001
Date: Mon, 02 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772426693
