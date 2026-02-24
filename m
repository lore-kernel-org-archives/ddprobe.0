Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3363A0B12
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771949694; cv=none; b=fxBQ/yTRVs6NeLNy7mAsmmzK6SffRM47LwZgn6nlJOq1okLW6S5CwQO8G7GkxRARunB/1TL7iQ+j1pCxdoFx8RWopKdGytCFlHxJ3tE1EjHe5PrIyuDABCHDvWIf4VDHatR+IJFsCr69pW3aXjJfnf1Ose2T0MPQo5EKX5yGJqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771949694; c=relaxed/simple;
	bh=XxBh7ANisOWYAbTkS4waXtchFF6H0iGXGt32iQzFMTo=;
	h=To:Subject:From:Message-Id:Date; b=JLd6I3TkbS62+EAkn8KURvkAI5EPdLWmICGccAWS8nDFjBJEe7aip+bmunGFyf0Ix/Pnt67e6S7Jvt5duQCO4qwzSRBI2yPU5Wk7/Fc45COKDIm3PFlDVoXDG5bgopR/ep+H9r7KjJSQV7ySvq+2ZgaRBHBeF09rqjd5REWfdPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlm9wj8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlm9wj8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87E3C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771949693;
	bh=XxBh7ANisOWYAbTkS4waXtchFF6H0iGXGt32iQzFMTo=;
	h=To:Subject:From:Date:From;
	b=nlm9wj8DdSzil8iSUorxo9Y6WTpUOWaJR0ZZXQTnMTQywKmxNgo2CigaqCqTBAJq0
	 jBu7UK0NgFBQk/CjzUfVKFCPgP3A9wRUnS/blLusxJJmWAo8aLrJUyKfiReHXe6/kx
	 y1Im9ZKTsb4Xrs2LBCuuZBgCMvNET8ULjP5/ul48p6pgkZoClk53dWBT3k9nNCgdfz
	 lo8S6Za6CZS3lRNKm0c3h5dzqKRq++/uF20XoZ9KSnp40cW8Dy0sgExcHBqNZu79t3
	 NQ1fLXGExWHW29D9QR/ueleRQ4XfPhuHPKpALyxYg9bA8VigrsJLboX+kWzu0BmISb
	 duLdnC0vxZphA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942A0F3C9AD
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194969358.32018.9655613915897244875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da50f5f20e989243b7bfd3ce5642d3ed34b6a763307ef93b576f42c1b490691f
Date: Tue, 24 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771949693
