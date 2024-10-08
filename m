Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA69F320F
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728390354; cv=none; b=BhIbnpqtFU1cXQjjqyC9SfEbMrHolwMHEcwS1t+eUVe755qjEQKQDqZDvjzsz896HYznqjzwzgpS9ck0oHmqt77Z9WibCgKBBvcSwdVT8E0yWT90pkwSsJIp+ixyjXVNjEmpglQkIcg86/zqz4mpqczetsI3nQ+LshMhIl60hIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728390354; c=relaxed/simple;
	bh=B4+yvcgbBsCxhhWJklG/aCSh2BvBm2Hgm+Gext3Szmo=;
	h=To:Subject:From:Message-Id:Date; b=iJVoxQCHqM9d1Bgr5C+GJFKXsETmT4R8kRiSiAVw8rhm6WgyGS8d57CjM3E6DPjROI0YHydQm5ACazO/pEVTwsYFzjDdMm/TlPGjsmPrnuDNg4fIweLkkMn6/8yq2MXHQDnp0h6rs0VBBqqc6enhPQZ1zoor5viPx/A+qdx54Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgrEXXfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgrEXXfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1FBC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728390353;
	bh=B4+yvcgbBsCxhhWJklG/aCSh2BvBm2Hgm+Gext3Szmo=;
	h=To:Subject:From:Date:From;
	b=bgrEXXfS2ca05C6pwP8W0ICYfIwVbCWF9mfDPjjdq7kiKTIpbFrz8f7x5qRl1asRz
	 KvGi/4EWxNLiWd7VJqFfQZY2jqcqXGwksZSB9tlLK/NiUwpC/9H3evzEbw02++D1hI
	 HqLoRF5bd/n35QUEsiVkq63cMMYiyA2YHF+VSgAqkqk7LmjwW9fvw7f+By9JAW24ID
	 InEUIIFz+F+jzAFcwrSkFvNf5uaslx6OdyPg8PJqSOhnbgdFGYOhTvofSiqXKoPYMT
	 P838WyKJ5Jn0YoHnvp2I3jRWD+yG0BOqOrK5jVV0XvK3jua5QrN9vJkwt/mmexPta7
	 sqbmzGBskFPhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E632CEF161
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172839035363.22366.9908022304186131331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76fc1f81a9cd6b947003ff099d40ce9ae977175cf1e747e0e7ab90f6ec545e5c
Date: Tue, 08 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728390353
