Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5403C2248A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766211834; cv=none; b=eCLk0lbjwPX9yQqFrI0IQkejGs99GUmi67Bc+/VEftGJbSkvEe5fqtD9M0Y4LG924XllNwYXrG4LFj08qjssOaYyit8itlJn8Tzwx0F6W873ZPBrCXy4YobbLdx6kh5rYNmbZG5KVY12/TvLZKaCZ066fxmo0XnThSfkRXIm2tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766211834; c=relaxed/simple;
	bh=D5oksT/v4UGdlL86EtanUAgZMaKcWL7GcCs8WpXOS/0=;
	h=To:Subject:From:Message-Id:Date; b=jjC1ysATB3+IP86fvQAF4uFiTR8wZLOivwKvzSUs2945UMN7kvHQPo7BhLlqVc7L+taPZTOcwQDIck0Tcc1o78giy6cEitsE6O5XKI7BqbiJ714+X19a/Qhi+BDo4+OfnKI9Z6AYdBJh+tPlXgq2gavgsOg3wzVnPaFH5469q4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwjku8Yq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwjku8Yq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA02CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766211833;
	bh=D5oksT/v4UGdlL86EtanUAgZMaKcWL7GcCs8WpXOS/0=;
	h=To:Subject:From:Date:From;
	b=cwjku8YquxazH82AKySPvrsHgx/TtgQl3xSmJ5if1zJQM0LVhute3MYQLzNcCzgb5
	 4vwKE+xQBiP4paMOQEb2hKfAhctR7KTJkgsNzS4G8Gpa+LkCISDSi51XFzTataNP1A
	 /gq9o1JPMoY6TQKTlzSUkQ9TJW9Jp/ui4XyC+xljAi02EuHT9mhqIZys9qQh5AOKFk
	 zvD2W+p30cTyHDkQYKALDLf2GEL/6yV/jcDkMSeC1/auM7j8w1QL2VRQrZjl9wrcNX
	 qp4VzL7VybJMcdO/ky1sSJ2YU3n8gSU8JIjkRqZ9Z7ZOKhymIx//ind/tCKmrdS0VT
	 hAH8uk2o0miHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952CCD637B2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621183358.29050.7861562971334266827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c4ef49ad81af3325c3579ff0ea1d3d37d2a5eacacdec2ca0400320596470758
Date: Sat, 20 Dec 2025 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766211833
