Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D694429CC2
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790153434; cv=none; b=KestZJZlzvcWsevQzRXpOYXARJ+eUYJn1f+f6wCPM2duLkzWXdKTyISh7s3TWW+yeogDjl4zx4s10zNh8y5GxWFo1YziNu7+oWVgZzg1nzuTngGAyGFctD0bHyFgyi2ObJjPsQEv/z9L+jvGMeMt72hF1wzJ6v8vxQKcEruVIC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790153434; c=relaxed/simple;
	bh=1rYc2jLLDqN/bjtGCLxPZMUzCx92SIzYyjUpom6/iAU=;
	h=To:Subject:From:Message-Id:Date; b=oDaQFQ7koV6Qc5K0GRFo+nSBP5iJ4zye6GjtISxLgQiBVDEWaz3HWZLmiEsoou2jvzle3q02HhpVaSUhBxxkdWmXdeXjoYZZpThtDyZ2vYYihe3F4fNy1aX4i9kgo9tEzuXs1id6Bhd0WvgwQA8NcvCX+rJLpplEVdQD+EfYSmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+jvIs01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+jvIs01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06C3C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790153433;
	bh=1rYc2jLLDqN/bjtGCLxPZMUzCx92SIzYyjUpom6/iAU=;
	h=To:Subject:From:Date:From;
	b=A+jvIs01K4KNxly/O2ayqUIZ0RyxmlFLnhvn/FCw0uGbI4d2aCKqr84drUh9SvnXw
	 DfpP4L1n+AN73hekKiAfzas+IBjvRav8qJk68VYO6ReuVrHJ/c7ofnEZTBQwvEFss+
	 4cfKiA3Z8fpCwqtBJYtnfS2BPh9GZO5MrTo0yHHaHIVXcta/FTuLytdxfmYqqJbNGg
	 JLiUek9h9/AH+Vo6/9OaXDw1cOtcvhZsfOkaiO8rA4XcZNZdtt0tv8DzLOektpdd48
	 WvbUdHi5yq4JAP8KvxQuQMFhrrOcx/QPOzrJchQCyzu69feEVTHAFgQz5YOj4O89Ky
	 clKTkpxUNRrRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD05DC982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015343369.22378.10979997136123689706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6df13cc84cf93e7b1be907b6916088999b9bd52b5c712108d687fe9b3353a06
Date: Wed, 23 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790153433
