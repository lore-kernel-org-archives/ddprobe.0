Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187E92F5473
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761824994; cv=none; b=UOcTXG9jsN9Zbk4ls4YjtK8llfy28zE5vA0l09hDD4ZPDtXXeBaGYkkvCLp9OhJW+gz0F0TS4u711aDv6BIdwy+rHsJw+y7UBIW33vIjsMS4kAosAoLHfe2im8CRfTTNTS0aWzBlFgyH13qmPlBPGwKVcRI5GRDqgOzf5MohxMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761824994; c=relaxed/simple;
	bh=ui4IOKDXmbB+h108O5OXB/6MBLopp7C/xVq9dvnBsiY=;
	h=To:Subject:From:Message-Id:Date; b=rvThLZrM490Bi1k7wDL/8CEtIoxaML0HFkJy5xrUUP8rNJLFIQTUYbWfDksJdvhsBRvcVFpPMTae0kdmdRr5VNOQWLdj5HNU9ykr2be9PUo1kVs8M3jdVH7ljZ9DK9rQ9M2pmU37D75hqbZvOCC/oYhYKvwLtbw3d5hQkjrwhyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiN22oIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiN22oIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB278C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761824993;
	bh=ui4IOKDXmbB+h108O5OXB/6MBLopp7C/xVq9dvnBsiY=;
	h=To:Subject:From:Date:From;
	b=kiN22oIJsC9VhNOuYNHs8MVKzIHyN4YT3rLqtqJpHtR0+/O/MCyz4VqlQApZLEiWI
	 yAK0aWLtuNNNmtZsegLMHBCBF1PlX9tUc1qgkKDUppeAFqctGDYQykoeokObioGeRN
	 Eqp/WRHqNPpLi1Qhn9xP0gymiB87Z2TkD+UiZpYlzBRMghtBgr5oWW2smfakLFxTtZ
	 ctb0oenIeWCHvlo9ppxAsZpM2XTWZhn2PhZARxonJ3UCiTmgiZQM7yYZAh7KJbRvrN
	 umQJH3vlZDkwE3Y2503mK0LSqZ6+4fa6mRFhsyuzuYXEvKdAAoHf8T2CbBbi5K0n02
	 /xObNA4+LXZcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9113CCCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182499358.20400.5208227105056060705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022c2623de2399ce6b776215f5cdec6a8c2997f64545d913ed37402bec17de7c
Date: Thu, 30 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761824993
