Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A7817E
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751155794; cv=none; b=QjqEbdNPubp55o4NGtFqjSqCZE7AnHLQ12s/Xtx7HurIIqZeTkuzqAPTiiIyXRY3MfO0Gv2Oa8/4Jt93Rs0h6T+2CyTpjYC/9Ck4gZl6ywvAInsI18YBLkiryODrc1rwrpx2IfF7uaM7jLqCOpeInHacFOsVVLTL8xB6h5+I6e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751155794; c=relaxed/simple;
	bh=ReG/fAPQSRvif+uXGRUgCdjJ9mzoN+lrA764MvZl394=;
	h=To:Subject:From:Message-Id:Date; b=KqdILoJn3uNkt0tGnrKGgIz3g9pMxLVWRhenjaObcJpOSzGEnYj3c5WclHMK+ajCUV7qiSSMYgVeXPSWDGCsNQvHVyLBorYK8c8SdV0Om0lja+ttjPV49KJ94u6suMgZd9hmg1cEJ3E/47Fa1or8TLA0mjXf7zM3UnohI3jAuHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIfy170/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIfy170/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21EDC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751155793;
	bh=ReG/fAPQSRvif+uXGRUgCdjJ9mzoN+lrA764MvZl394=;
	h=To:Subject:From:Date:From;
	b=fIfy170/fkAGUbVsNw0jTbv1kxCi80U96y+1IOBiu2STfcnGZdO7nrmhoUVRa5zrI
	 /uJDr0Y0gRVH5wqUcvyOwSddtSZgYcu3Q45bIPp3wURiWh6VLs8seeexnf4ErO0gd1
	 1kJh2aEDmAM0SQqUvJnWE4fnnp8JouNZnF1w2gE09D6Yevsw7Cr8I6/6ctSEyVcQnJ
	 K2z3wkWHUOQrjeDK7bOl/beU/mv86fUQJNsSaeSICGuJ21JZnTf2hiG/1nCTtDWkYG
	 maWfTwASdm9ugenISrVqtlLRp5DfFoXhlt/c1tbDfWLnubQpVHno24Pk2aZW+arvIv
	 FUB3/gNxKbh7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC3C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115579357.14682.18036827875050577908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348c4e583be55bd28a0b0b167c56b5cf4fd8548f99e3a7019fb4f370dbed4711
Date: Sun, 29 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751155793
