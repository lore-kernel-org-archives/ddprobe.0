Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B10B32A3DA
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775013894; cv=none; b=qapLVOa2N8ft/hezt433S2AfVIbOZpcwLYFzZUoZrlcAQWwFiCQle8PFGQAm9af+3yoRdTpifJy1uUx99KJ228pNCwfj2oJwWdn+j/Kh9QgMHwnWzrDgcXayW/vmBsIzJjx/pwvWwdqidZEiMmCXVabCSFC6A1z6y24VEGgXsM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775013894; c=relaxed/simple;
	bh=ffyI1yHlViKWaz25qkYCBdXR8c36dt/81NMBHb/3PMI=;
	h=To:Subject:From:Message-Id:Date; b=gjsDZvjEAzXCBoqszbbdLzp8havgBlAxda1ZGpUvoVyUgQu2VNZ4VwRe6NKUpdH1hjS+BdzBvn4kQg/oJjo/oSZMQMRADnevW1KV76CpdNoxi9sTvn9jSCCQNX8j0ORcv7PTyL0RQ7pPiMMch+ksaJm8ClZRDxItM5iv9a7hhQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQe0tDHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQe0tDHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDAEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775013893;
	bh=ffyI1yHlViKWaz25qkYCBdXR8c36dt/81NMBHb/3PMI=;
	h=To:Subject:From:Date:From;
	b=hQe0tDHFHtt0EszoUmoWA5hV8Ouk1+sIPol9cabqbV9SgzV0J9DyovS5KZqFyS/w5
	 k7VwlgP/I0+WAsYzFb5HgucPx8pE/MdjT2n7kCVVXqv6fr9yQi6rHianQdWFerpiNb
	 91K9WfFGQoUIDqogHBcYetlin6k3PyVu6ONc8irJOVlI2CxseMWFsKdilkGa5AvLAE
	 suGZkxSrhZuqei42F+pniZFIeC/lopiOGNSO1l6qJCrJHQcOhC53yvidPTyz4FCGq0
	 1ksom0PgPOrPNWRE8BDk6TcwRwYPIUzslutgqBIUmmIgkdshhjNTHvwC1XDOsMinqQ
	 WA5m+XpMEs3Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971BFFF4937
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501389360.29500.2559852739705461661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8293f4d4b6dc656c676a8c5858fdf063ff82471bffd7bd23a2eeeb40d75039
Date: Wed, 01 Apr 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775013893
