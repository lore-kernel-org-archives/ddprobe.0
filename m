Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0546B343D9D
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756729794; cv=none; b=oZFhjQg/QkhG754VE+R3/+tKY9r78btL/RxkKyZXXzEeIQzMGoZi4A7hRFpSv+cL9GQxNy/WLwLfL9yg9B6MNlgTvTaxi4TP5G+drtEcdJ5H8O5dYa2BvEilBqF3FNENpVZe9PTqlHi6E6/rCwhJ+N57NIQndUrs5efHLTLm1Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756729794; c=relaxed/simple;
	bh=Vx7sXc42fCpuSoJCh5i8l+V0hdLa//SSR7TkKo9PoKs=;
	h=To:Subject:From:Message-Id:Date; b=B7XFglXwMQFBvfhs9zVlBLAa8pi/ZSJ6zlokYWgri1JwHXQD3ERSBpluwGXBKrr/GnbbxnOomKPV7nNu9sZPNyEzNLkDubVNjPB5E0JCBM/RzOF6cDYexqA71iJLojRkZ9FptwDiUpYLgW1XSBmnekCa+/RaX1tTlqgzuZAmq08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCrtYfft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCrtYfft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756729793;
	bh=Vx7sXc42fCpuSoJCh5i8l+V0hdLa//SSR7TkKo9PoKs=;
	h=To:Subject:From:Date:From;
	b=UCrtYfftkWjkDrO7OlgABTE2j27TwZCi+AO11/6dGkxx5x15os4wFeXhzBkZl21UI
	 VYYES/0pVtSsVYccmE+skksVodpLSm0/69A7lAAZjm8qYuCGK0BYlf+gZHnVjvhhjA
	 gmKl3PUQ6hOmvla2Vvjo65VXV5bZvbL6Wi8vsWCznc4Lrm87vLt+cN8Bi9GDLdWq8y
	 f61UIb8eZ1cFVwR4myGpY47QsDbHzQnI0gSMzkycjw9kkmf9xOfTs2nVn+XwRpzTAb
	 +CdwrEgz1LwiwWa13MPpSel5fd7PKk7S71AYJb3Xnx4iZYE1iEc7DgfOv+f6ra74bl
	 yVd9sUXU3HHxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFFFCA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672979358.17523.2411090083418276179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf364468130912b96e3ae7e53ca0ca63dc9984bef8cb3fdf2da6eca77045b27
Date: Mon, 01 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756729793
