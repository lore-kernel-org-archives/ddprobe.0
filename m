Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F932248896
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771184094; cv=none; b=k4B9ZLU2D2N+czcEpqtGHbM8SEjsiBnMArCxD0cLX1kGe3zNJm7RN5g1SZta6CWVp5IjcrpYhNn5LenZW6lMXAVd0IxhkDjZhz7ASwY+0jS8K3arts40KQdsIrtN/dRe2oGuqsnWJTRPOhsY+IZYt+JysJnk8x/EmxtDScCUckU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771184094; c=relaxed/simple;
	bh=Tub7qK3h9IfbXwEUHmNgR3xMEZWG/+O05F8BNOLhdig=;
	h=To:Subject:From:Message-Id:Date; b=Ym4QTE68rBA1v2YcW05l27QRL9o2eV5EtNQovZrC1bs/E3X0HtYEXZVRKFJCbwkWSQzwB70pXLzBtz/rxP62hL7N/EpPDJjx33QDihrAku5GgJzMHPQ2h0nCk4NBWxk5OLEs0STOqJ/dZR1THREo0NTZlEYSQIxICqe5hNHLevI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7GWqZy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7GWqZy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5351C19425
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771184093;
	bh=Tub7qK3h9IfbXwEUHmNgR3xMEZWG/+O05F8BNOLhdig=;
	h=To:Subject:From:Date:From;
	b=u7GWqZy3tQpL5aQrGs7Gaba35CG2rdPZPdu7aLP2TVhEWBA9M5XGrcGGJmIsLFvJ/
	 x8Zn3UIzasdOFWdSrEOMWg7/1ooZnhAyhb2v5+/42v10EFyLfFNUZiw8hgntNKrX/7
	 cKRHKQJ6BqXNRdAVmnmIjN+FTTp9AmMF4QtitgHvAHc8Gf10hv61YDkehqj+LN+RnQ
	 YLS09iPoTdQDQRlD+n5n9BNxuEG9VmAOs4svq/hENgtLQvV5X+Xo6Xxa1+hMdpanZo
	 yENX3UByRI6GUSML2o1xeS4gZ6kWUxyGyZ6Kq9azqGR8Ps376cxFhrxqF6FGhpg5ep
	 P7DEPhrzgH5Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9444EE63F0B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118409359.28824.9533788420669647859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40676ebdb174eca1deee417d8075fc4f8129bea6f74c9664abe121385f209af8
Date: Sun, 15 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771184093
