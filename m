Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C48E200A3
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732228554; cv=none; b=mohmKbZ/iFTomXN2Pqt60ujH/65SH2dS3LfNdljWU9Qa7swxTpf+af+6kedQba8Aih6gj/VzLZIGyq5Nk1E6W33nCQ+lFysVxkaNf0tHDb9vaGfhsQfUXnipB649SfkkALqkKlQsYhsZPFRBtrqHxYD3YLlLqCn/MMYYZM7IX+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732228554; c=relaxed/simple;
	bh=sPZInc9aTGyXbROdGdhEmU4lxkbtv1BjyT+o0uFQtSE=;
	h=To:Subject:From:Message-Id:Date; b=Ktb11clOa5277ukiKMJhVaEQjTryls3coOspwh4lurzX2AQWuOqWIs4gs2eLVHn/F/TAbEyxjz7BfmKsHpsc1PbZwIfJcJL6SS/hlnNr9ZP2JIIVDayjrw2sHgSmrjmNjm/gGcYI/w6kxZSpCbNAcI/HMnFcp+8qX1rIJFBqcEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjYaKrRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjYaKrRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B445DC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732228553;
	bh=sPZInc9aTGyXbROdGdhEmU4lxkbtv1BjyT+o0uFQtSE=;
	h=To:Subject:From:Date:From;
	b=IjYaKrRNL1gZ2jnN2OwlMoXw1h53PA3sEt68rb0003WYjnJebJZqPdS7qUwP5CqMw
	 90sjZXgnaRVKVlAOnaJxLmgU1jP8j0fn4oaEcI8GUob7r9KDXAMa8teX7lEheNl9I5
	 Ovn8jF4up7J4Kai57aRPpTBjJKokL2D8ntkmEFuDwQY24rUDPjn7FQSLCFfNVzU1xI
	 BpGYblW1qv197mcodkdR3Ez6Zb5xA17neDZzHIBWYsHXjqxUYotlzMsHvkUB/gq3Qj
	 dhqYSbt/H3huPcO6dq9qLIWD16IAyYh38pQbI9vneXUmlvqfyj9mgVAmsBsTc22elT
	 IO0dTqzrUULDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7F3E64039
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173222855360.27827.7632039823171097337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414ac54b205e604774546d2d2d70990379048233f7473fb4b1dcec68cae78845
Date: Thu, 21 Nov 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732228553
