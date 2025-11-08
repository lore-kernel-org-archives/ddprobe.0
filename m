Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25622215055
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762618794; cv=none; b=lpLk9SyrGPLm2LWn0lFmWHcHnX5wqTNLNE+mBhoIHN5eO4hiKZ7iRqwg7mT24KljW+kHjDxwun7nVEHFuyKWHdCX3isDxTh2XL6qKB7/romH+rStEbMZSKoROybs+HmUk9PB8qNpqmjBZ2dnb/53fbZivB4vKWWZni0Lf8w2CnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762618794; c=relaxed/simple;
	bh=WRXSGYnBXWWRgi9IxvfLQ9WzRvrymhx7ReNjertzLqQ=;
	h=To:Subject:From:Message-Id:Date; b=eEdwxBJfxYiXyf4cE1LBkyxifyrrqYRSmJ3Rj7b6MBQW3mHfoEKjkJYG7l3SuWL+GxzKFwSuy8uLZgETEeVOSCY/2utgr5SVpaa/iS8rUJSQdYOs4/LCsJ/F5BIKbGwUda4EwPrptzEJVYSTrKN9litisLm2l6yUq2grPacEhIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Winq7GR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Winq7GR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEE7C113D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762618793;
	bh=WRXSGYnBXWWRgi9IxvfLQ9WzRvrymhx7ReNjertzLqQ=;
	h=To:Subject:From:Date:From;
	b=Winq7GR3RhKw576c+QQ0vzXrxOrLGhfDfJTzzvoYIRqxgPEXDGcmyrh/1gppHRGj1
	 5lRujIPI4//xX9bAQoK0TM5c1lCxsMl7EMy9szwOyq4nYfGo3O343RCsY87GpRyTOk
	 OQTI+xoFX2DmoAx0zC1BaiU+21ss0ek87lpYeeMoa4S7vuCY2XUB+3YGQg6Maj1hZi
	 rn4HI0O626Z8WI17PTH8LxbbyGzVYy+rWnAQnTLSQ9idxDswtJQ+3IxIwjWVTy8q+h
	 HjqU9PyI/AnSpzfW0LpudkmH9724QtmJ0KjBDjXmN8sECUuYRLh4US7dGUScCpdDpA
	 TVsV8a4AiZMFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD00CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261879358.32663.123040845591786263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e38fc0f1e4018ca84a8b23553ac5f527d5360fbb99569ec85ad2dfb084fb5d
Date: Sat, 08 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762618793
