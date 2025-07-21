Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD88828469C
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753117793; cv=none; b=WIqac1WPbwtsQqIMHHH+ntRr6PQdzuNv5W9ZyARSARtja17sNAvipncbC/IhAR7wbAMpYWz+atxD6sJEP0H4wDhXp8iXsZtv3u82GE6Al9TtTY6zhCEy5YRrt6tAGzHpWciauFU3OKMo9i8iUGZaNTuqGYB+SQDgGJqYYUkc8Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753117793; c=relaxed/simple;
	bh=yUMwtQc1Cg/5sXa3cmA8xkzpzxBh9UiCwO0S5TDm1W8=;
	h=To:Subject:From:Message-Id:Date; b=gWb6E756+k8g/SQPkkynaDImUC8mxE4h6wDkBaJV0gdWYSByfHls/l8rpRGEyHXso35gZR+XXqzLP6eDp28O07vtMoHha4Z6byptzBTsP8HVVh0J4rc1YBY5lZD+y/TCPO/VvGTuyYGs93uUqoZ7qYxo64pX2J/x2xz+twpOBlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4IULRtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4IULRtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2770C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753117793;
	bh=yUMwtQc1Cg/5sXa3cmA8xkzpzxBh9UiCwO0S5TDm1W8=;
	h=To:Subject:From:Date:From;
	b=p4IULRtx22nfxR4E+QALC7m37tuYeC5d2l6COV5idxoLIPYiP/pmMcZzuZgTqyYlX
	 PcKy2hAR7YlR8TIjebfmGs9X90lBWuuCPJ8ud/Xlcmk6Yk4sHBgDLKMnTpMFvMbslX
	 egPdhi4l7T6giirrL6bVw4iOSitVeCf36DtGizywkDsmLunyfME/flPJhM6QZ1xjin
	 mxo3GayhWhguTkQXqaIQnuocDPJC9tBHBDjWdVjjHo6zQKtfV86ZUn6XWrzGtbozx1
	 +rnGc/4MAHVMV0sfZrlHn6Z3VK0Q8zVBzfojAbJTpXUg2KexjYg1uXc1LjEVs2t9AR
	 eulhVhcQmOYzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90380C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311779358.11840.4680023906662102676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a0fb0e2efae8e125dae04956085138f46dbb5a9e27b1daa4bc9377a14a11e6
Date: Mon, 21 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753117793
