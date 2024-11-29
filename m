Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE90AD23
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732870554; cv=none; b=Q6MlUPiXJqrsJ4Z3SDAWQMLXzFhfSZFHk7sbr1qbJEHg96kd5eQr6pJTXGExSDQIz5fl/UkNnxb4yNC89phfWn8DLkoiBiJDPT2ZaXO4pgkzvVnbVwg4i4N9MlzX/rxV/xGeY0sbPbgsO6Gilx1cnLks/BLVlTRm+AQdtThQtjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732870554; c=relaxed/simple;
	bh=rrpPNWIYEviwaNUpdBZSzDAUd4kidal4LGtM2njGrgE=;
	h=To:Subject:From:Message-Id:Date; b=oW2e1XwOky0FeoUeUQSxLMPq74PltbmfwXqra6hBHEj8/rGOkjDCwsTfrnjvRCAGbbqw19Ws65tQ6rMmopMKnkcYCIb1VtYlKxgBmlBu+dZBhCFafI24JYpqh251O7afI6XhumzhIYJARGcbzxX1qdK2iytnwGS6JwA0A9gNrEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ua0Azece; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ua0Azece"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6987C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732870553;
	bh=rrpPNWIYEviwaNUpdBZSzDAUd4kidal4LGtM2njGrgE=;
	h=To:Subject:From:Date:From;
	b=Ua0AzecejjTc5KptTSho+J/YZI19VP/8mO6yllWJXDvBLmfpeOcjA7Ia9L4uHJUat
	 5ILCO5fM6cHw4rk36RRvIniQMtuzx0V0rYej+Xnbp1K4qar8yWDKtBOqXKRKM3mJy4
	 O5gE7F/2HM94OdB5WV0EnY6Pg6BS1miBgj5OVLMovawqcU0ffIKulBmqWwrw8zMflx
	 8/X6zmCQe/1MbnPbu6pXTXhM9g1QcbvHwth0HZ5gp9oZ2fAkIizqdbCYQnrBPPewIs
	 lk6C1w+ao94UVGKFMT8AS//Gay8VK7AQ0iKkpRBGILMqSsGwher0lJMrWIYSlLYevX
	 NFZS2pEth/HXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A62D6EBEF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173287055359.13319.8729402663749477484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7299adf57215c34c2aa870c9fda45aa5c1ff4341030d82727c8d5e24800ded1
Date: Fri, 29 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732870553
