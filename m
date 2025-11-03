Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E96517C77
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762130994; cv=none; b=m7DV8zMEydjfXoe1D+kxW3ExsaavA7rii5dsDJTm76aYZYvGQCc+K7UGLHz+qaNC+2d1I6thW2vf+FQ9ERak/8JVvvUx4jg2uoGvn5dv6D/uE8PCvgErALlgH8qLT5oTx/hshH4SYogHM2ulihxiRTFppBf4ACDAc+gReLbcybI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762130994; c=relaxed/simple;
	bh=WzIy4Fle37X73zeSA5U1wDY8fbCWPfLn14lM3ON80pk=;
	h=To:Subject:From:Message-Id:Date; b=aUfEiBXYkbHwHet0BJ5URRczAiXnpd5IX5QpoxuBELTowGVXh2APLFWj1ZRrSlyJiAF8e4ANo9mN3YMega++Z3fu4PwhV23oWHFOJf6PWGmeFH+/eRY3o0QoaJ42V3dLlZAhSb9MkAol7IR+TqFwN7WPrl22njMVcJ3AZeAG3b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnkoGYZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnkoGYZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B30C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762130993;
	bh=WzIy4Fle37X73zeSA5U1wDY8fbCWPfLn14lM3ON80pk=;
	h=To:Subject:From:Date:From;
	b=cnkoGYZJ7GtLHYr074UOxnJQIsyfFqH6gT5rX6oOSPWz6G9B+aVnr7kfrluyM+TQn
	 xfyi7yFr5zRZKCQbPmGApIUJlIGnmY0CAuGs1TkssshwIQ18BWNxKLXDwH8PJ3+w+N
	 IYfmhSyuzY+3sIedgaNua27QxKNDmg6iWR1nEa7g6QbeHOdACypHe97cRnOlD1iQGG
	 FNYbwaffcOfV/s7YP1rNNkriOCtRLfobSiVIq2K4kJTnpT6aSHetcdzY8fG9nPuL4S
	 uuX3/WLnryQSg7SZIG09ianFHMGPaXyuRyleyjt8KZx53dlieD01qWXbWrC3qMHpfW
	 yXtA7yTN7t3/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C8DCCF9E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213099359.27891.7090726198369279366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce937473652870de7483430c48fd0ed6f06670321b019282c02279194992f92b
Date: Mon, 03 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762130993
