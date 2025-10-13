Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255062AE8E
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760328594; cv=none; b=Jwq6jXwEWEwFsBMzLncD82ciqv7h92ccssMqBhF0SlFTHYkMWETZtiN/w7Rmd9iQIHQ84JuFGBOYbsku0JkEYQw6jLh+3Vcb59H3ZjwTsb5ZHZSl5jVYR8yQPSr0RKf8lHVMrQgoIdPeyetQUbkafCzt9af7cHPd9B7rUwZcFwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760328594; c=relaxed/simple;
	bh=XGx03rzrdotZ7L21hAp6MC5EtbjGn+7es9JjgYFru7M=;
	h=To:Subject:From:Message-Id:Date; b=Lj+rpyZit+njReF2dtKatrqBr1WCsA6OhOma2GLmZ7qV5jO8aIlj3hYi6T2RF+xNmYNtLxcVjGtpjcxQr/TGC3ZI7WDnfDec+1bEn/rUH1t5ZAalaJ8FC5PSVm+r+WNkjYdF4Xx0vb/8ueSvt26cL0lhPOqshbNzUDPj7RMddAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2YIV4Od; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2YIV4Od"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73F5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760328593;
	bh=XGx03rzrdotZ7L21hAp6MC5EtbjGn+7es9JjgYFru7M=;
	h=To:Subject:From:Date:From;
	b=A2YIV4OdtbxzmQsuTHjqHYv4Hj5mChiugdkkWUoC/wrA+7eaETC2NM2ObNpFh0vtv
	 WqiT6U/Te7dvW7KNdhiey7y06+9/spyMbg4L1NkOjmnDEaJuQBFtXbvtJt4yNPnwxm
	 FPjkcxiUsXXMilzP74h0XlF2P5/CPoDKbRiwo5IM7eytOW5o4+qqBttVHRF3yqkUNq
	 jj6abmCFPoe+PiBsUhW/rtG/jvJgRL1Jhqgb0EMjfFg4rgaT14w0dm5wNVaC/tBbOO
	 NHu9U+oapvQVWzjNAGmrntTqPYWuOA+ZpOcRlJjD2GXVh8kBqhYSiYpE6hxHtYHfG5
	 e66eZFNhpyEmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE2CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032859357.29608.16381551588570054018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61123fbfb7c1da534e1c70c6427d703c40b84791dff6c745c8a36f3bfebc5b67
Date: Mon, 13 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760328593
