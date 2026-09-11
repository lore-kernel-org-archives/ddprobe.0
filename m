Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6466B381B05
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789106434; cv=none; b=b4rj4QdU5WE2BP6NRNLb4L9CqCvG5tAiBSwK1BxHpDoCrdPicFGUOPcslyKm57DL2dVQjuiCScqV4yINgjZi0RlAiTZHbzAvqcZszV98wkbp6fkauNR37pwJd788lRlbDHgsjRtc5wM+W5anMnzSMKbzqPPcJ3jueOTjojYK+/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789106434; c=relaxed/simple;
	bh=vkf9hekOXQqjakt1kA/iSUEKVAqu9A++sWHJKUUAE8w=;
	h=To:Subject:From:Message-Id:Date; b=PlyRNh8kRVUqnaUVWUf9VV27MBQ1jXFLjJHkaGzkS1LFyUakpvb86leOatZ5vO0voFhJqhHuKlvfTbip+Z6vvTq0ak9qgNYLkauDMX5nUQowRSL4kxfFV3VToYOoyPb66xOgvbG2b8ENEGxyTQUi0r/MHNOY6SdBMxWNzFjNlkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKam6WOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKam6WOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3954C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789106433;
	bh=vkf9hekOXQqjakt1kA/iSUEKVAqu9A++sWHJKUUAE8w=;
	h=To:Subject:From:Date:From;
	b=lKam6WOejs92UxGv8l1GHslQPIN15zfq5CGv0npP4+3Wqg0CLIkNN6teHOYFU7m6a
	 bHaYKPj9wXdt8nXRUBVKNDIp0WS9ovz5BFD1BzsbPUXMTTPvqVUkokipbLw9jcMbaU
	 gRYsPZxou/kQ+POhaF9XGZDLZ7WFBoEvn+Sbu/hUEeu+sThWIpbG2LGQNnRxJ9ODzB
	 N/mckKI2gq6K0JSKVvK2KNnEIsOqYBHOA7d6SZpXh4K1fhl0LbGRUS4lqazAum3TxR
	 rDRgvcz9AbI+8PB4QQ3QDzaiHqRQESgfXbE2hawuOihzlkVIuTxnRqpn1zbxkUJfND
	 pzEkABzAJ4ZJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE17C88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910643369.29851.10961592109666385778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baca7eaab2c996dea7eb00b03f8c752df831d25fc8fc115209c6e5e45e8f4e74
Date: Fri, 11 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789106433
