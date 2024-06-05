Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5DB1D24D9
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717589183; cv=none; b=msHEJDgbKK3qppzXaizTCKH5wdY4TWCyXPdkWeLYtIoyAhCzRZbmSJJgn0lohys5IxM+509kr7cNtDhA6lT9WiSZvbwVp7gqEX0P0VWIGD4z9bMQli50MN2frCUo+pI55xRmnoLHQjoc/9Gr/4p9Crkx1amtTIoZx7exmUxc5Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717589183; c=relaxed/simple;
	bh=1z8s/1vBKuZnYw5plld85YRvEMoquszjKawooLNeI+s=;
	h=To:Subject:From:Message-Id:Date; b=Kh4skCirRjyeyf7lLghUvO1hdEIz/C8IKrJf+//FGvpM0nBmlVHgyZY3Z4OfKv+CxtKhpPYcFqDyEcSkUHNGRnDkFBfBgul6W8m8hNB7m1r+YW2Omapm+RqdI9KcZb0ixaukzYvF2hzbHAsPS51zLGIqbclUAUjoiCiOPQHXA4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHnpWzKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHnpWzKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1575C32786
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717589183;
	bh=1z8s/1vBKuZnYw5plld85YRvEMoquszjKawooLNeI+s=;
	h=To:Subject:From:Date:From;
	b=EHnpWzKKhEVdrEypXn9nyb4xEZrTRaPyOYlM+GAbNdKcKQ6BsZ5KRSgvjxpjaMDgx
	 9ux9qAX5Zq5HIDy+paHDAtJRAdNvxI8AEP0bHSwWosCNi2HAAQ5EvVerZ2a1DlAeX2
	 dV1Y5W4QS+SWWcI+BJpJ/exOtQuAQEBAM+Klz7zZoTlFDPi/gwKDEPj88kHr4h4Yak
	 IaQo9rcF5b7iEUFn0PT+OEDcgjA63ktPStG+fML/5nlFX9giwvAhkpuX1aN97FYJXm
	 0947Yje0EU7WPxcEbqBJRz+J9erkXZz8YQGrjeEA82w0x1RvR+aYy9ZYUtBUV86UmF
	 78i1+44UBd2/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5468C27C5E
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758918286.22036.3162057185932995093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb58f706911934b533f2dd07afda530dff1c6587f3ac48ca30bb75f46f8d681a
Date: Wed, 05 Jun 2024 12:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717589182
