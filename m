Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EA919F489
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736404554; cv=none; b=WjlpJ/gAlBMxjxW0LnAjMsLTAndsJoJgm2jO5aKOFBN4hs7r1xQw2LO5Ikyy37FVJlofCKdhHqWS7YQ0vny7JAq5AzNrIxhvCeZaFE5YqoZ0IXvzPDXXoGQMGDe6AepHi9GSOMal6XGhh5x1PaIkqCT7iG+VQkATxLLsQewS7uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736404554; c=relaxed/simple;
	bh=fz8EwSIq67vNzJZlblTLoqkecWkXbhTh5zujRAHFy4M=;
	h=To:Subject:From:Message-Id:Date; b=m90V5VFpaOdIDoue6BAb4gmuDJIqTopeMg2qreGjCVdm7lFVZzHkq53NDiHpFtHWlRtpwN6tR3JFWNsPHmDiqy38aTOC6ntXviO7gFiRPlY7mnBiiq+zGjJILPfmmsuthMwhHjRx0DICoMzBYN/UgRo6mp57GsfUnEsywqjDm/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwqNXZ0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwqNXZ0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9ABC4CEE1
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736404553;
	bh=fz8EwSIq67vNzJZlblTLoqkecWkXbhTh5zujRAHFy4M=;
	h=To:Subject:From:Date:From;
	b=RwqNXZ0Y2+8iUtEN0z9aW65P5O6BHm/CnBzIby9FZkrB+qSRnc3TldlDSTfa99sMj
	 Tx+UB1bFnUfc/eqZO8uGy4UinSweVUFtUwM7O7lIZ0q7vZeWMQ5wqDTO5JDdOq3s6+
	 ZPQ0sFh0UuIeRHAakNYsPkJvGdCVH1OaOx58sqmn2tgxnIa8rUvSSwHIt2D4EKydOE
	 IkLB2XvPRoaBtjrX5Js7FxUhPlnhqECaxc2TmQgaPSZQkLmXQYfOCzThkxS2kbIHyA
	 4kLdMAiXds8wWg0avFad9t9JKwHfm6pil9zZBPMrn9kL40sm8uzm8j0ClfmMTOlImo
	 Jqos8oacziR+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99496E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173640455361.12656.16037663992451906158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8272ccf87e23e415faed7d09cbbff0cd0864f925ab887ec67127d95617b830
Date: Thu, 09 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736404553
