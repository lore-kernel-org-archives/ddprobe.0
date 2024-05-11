Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DCE121345
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 04:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715400743; cv=none; b=c6FUDkBbohPgx/A7Y4vU87dBhyKt822WGZK6b/Kl9bw+CHl8+XrZpLSKq8H4bznfFjg9dzPZxrkSeWR5N8uvaKyEBkUwzqRMmOJC4OtyKZz/6k/lFYau3skdglgtQTHD9nWA3DqcCqJsppt7OaW+TYeB+OJvSSp632KOsqZuGUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715400743; c=relaxed/simple;
	bh=1viFWgAS8GwyYrvxPVAaAiNuyVsd2CLPEckU3Z7/Jgk=;
	h=To:Subject:From:Message-Id:Date; b=AEQojGqkm7vapolSROCM0yswy2dkeiDtLU8I8yr9Gp+1w/GXwy9cTxNoDz9MUDuNFPAhkC/a+n0n2Xd1dtdgqYsujnFtHenfjx+ssocTti83DMLGWZsDeJ60+fWpgRYrknUF4/b7qsK+Td7bbOpxHdhY6BRj9/LlgYs3JLOIpys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWqx/Hhc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWqx/Hhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33C9C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715400742;
	bh=1viFWgAS8GwyYrvxPVAaAiNuyVsd2CLPEckU3Z7/Jgk=;
	h=To:Subject:From:Date:From;
	b=LWqx/HhcVOrMCeAY+Hs2CMV2IlXxpSiEWZyLCzcZdfx0fuacHtYi4shFGz3xsXLDp
	 iA8S3ZCJGo0fRaZRbPCYYFdXsauZfV1d3F/wMg6y5RP4KKeY232BhFT6XbYcoEGpBO
	 vU9kbYgPzQkZSgKh9Z9BWtW+6hn1vE5i2Xl8lxGVVMrfnXfWaUu7d6VVwwFnCvwXN/
	 j/Fw81PP57Xzkp1G/825wKmJTVBq2in/mu2T8EgjNRI6lv7zxtqJH8NkhWWGZQEGhj
	 9yQR+NMjNE+5DIAhmNP3BIg3/3gLcUjnRfP8YfUWQoGhDCuSnm8tqzuKZFLIEJqvjM
	 LdkydQa0Bfjww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE60C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171540074276.15024.6820268360223171771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c3b587d8b80ae8fe48f64fccad2e548315312ce76113d243ba658be86ef1da
Date: Sat, 11 May 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715400742
