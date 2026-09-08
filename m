Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48129387346
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788850234; cv=none; b=knokSc2kHwDhSoGGJl+GSr//M26rOficm5O6m7O5NxXYAnmqnKgRlnOb4m0cNn+G0UKlrbLz4wwp4gQIdoNAj7VrdgieAMvKrhXAJy9BW6h3ovs/RmUJ51M36BfxadR8sXRcwoqdydRTg8j1XLg1uVe4YXbmTXd7mrKiwG+BiXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788850234; c=relaxed/simple;
	bh=HjEljHt4eCJiIPZmxc1sQDdN8dxMq4VVGEKWIpcfcgI=;
	h=To:Subject:From:Message-Id:Date; b=fvK/j3Y/I7ph5jCsOQw4OERA1VTAHrAn5SH8jXqEHtAqI7ZdYvRrduzZ+RcpixGGtmvjlPATc/1Ql+6554wvzOsX7Kferd/8T9iJNj2eDR0KtC8qAyRSzoO5Toi6c5ZR77dpLMz8QQ6i+hxeGKPya8xqKeO9dDqXbrOScmeYfSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CO4h1Q7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CO4h1Q7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57B0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788850233;
	bh=HjEljHt4eCJiIPZmxc1sQDdN8dxMq4VVGEKWIpcfcgI=;
	h=To:Subject:From:Date:From;
	b=CO4h1Q7qn4m3comKYiIcCf6BoZHy5sgnuhEn+Z2triLi+la/tP1m9Vc6OQLe+sSes
	 5djN6NNM91SQRJqKMtb16EOnRp1pRD1+rU+RprD77f1+KmMcQD7k5sHo2zy4DUwGZy
	 wK9ZGnvwT18fdJdNOshJ2aeglR3aZnMna5eUv43rk2GRTAPupiDh8Ka9OhX+3hcsLT
	 q1C85YSjlQR7Zfy0MKE19tz3qltJfSId8NEX6BE/n9Jgxl3uBa9UdbdWGQ3TXuzvip
	 1TrN0qGGsW/DBo/KxBbpTqTZW+HAZLjLr1O6Iz6CovBvCuZ4JPhXwYN2fHNACvFgJ5
	 qs37DZOcQXDxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3929C79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885023372.12245.4771806868731869233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c870f56023545d4a8614963a9e24652be7d5b7378e26bac55bb5bbb23c548c
Date: Tue, 08 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788850233
