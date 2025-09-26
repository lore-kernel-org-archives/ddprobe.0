Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2268287E
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758855594; cv=none; b=XtdJy/SbsgTTtI/9uu6UqCcNBK7U9eqF75cVdnS2DW7KYz9ZvjsfKJjsbExqnMGJ8/gtCEykOJ83xlKjuo+XK1T/k5CMa5mFZraHQFslP0rwAmtZu0W+4OwYzrmmoJp2aNh8ElxU+6V2avHzGi3nB6iKaQ8Cvjtcv7FXgyvjVHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758855594; c=relaxed/simple;
	bh=e/p2haKyJfaMGVQfhSiaFUJ7tmgcjcOBdntrpQXEiwc=;
	h=To:Subject:From:Message-Id:Date; b=tx3OKUkudjfBUCXPaJKt4qs1pb2vQl7KTpVhvHISeNlAtl+3+Oayw3/L6783IQln4gA36cUqZrmdeLmEBDp5dBfWg/Z9H6H3VhN1GYBa3FitxX87zW4Bfg+TYLeNIR0tedcUh/2kgQX2/SxiIhlxjuPk3UMmchoXvv0sNuM+9Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VM2nnSIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VM2nnSIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C6DC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758855593;
	bh=e/p2haKyJfaMGVQfhSiaFUJ7tmgcjcOBdntrpQXEiwc=;
	h=To:Subject:From:Date:From;
	b=VM2nnSIrBy7y2yLnbERtze8uu4oNnZoSk2KKQtUuyK6uVA/z7Icsu1IUKbp659NIN
	 qr/KvnryMkkXjKX0mQL/S6BEFjXJ3hQFAw5FxLsy8VGm0CQMNz3b5R81PQZwBMlqAq
	 z32pwDUNWy8k82rs7fCUpTCi69n5U+y/x/3/B/RGtC3e977UQNaJlqEred+e+E2xHw
	 BRnUsxmEVO4/ok4WYcdMU8AcoLgzdDzydNRFEtberVa/I7I0IXuTRldhYAV8iULCBH
	 qNC86NvCfEVyui5klgvqiKJmKHmW8RtwLDfYCMiGtY660xCI0N5zBZJ71wdGCGC4VA
	 dqbogcnj7hUvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9056ECAC5B5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885559358.12770.16465204374827644905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f634f2d5a0a7aede9c44b3c9629f20b0dc587b5b90319d05845ec9339a3c4e1c
Date: Fri, 26 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758855593
