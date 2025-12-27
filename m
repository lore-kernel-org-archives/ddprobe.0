Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3561310F2
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766804634; cv=none; b=kxv3scphxxBDGekeE/17CEMvXZGi2yeLcAJ5TGV5r00M75DFwixpIjLjrYE3yNJQCNxd9AIxLKSZr8YiCu8qWCrFPIcXimlSWS5o39bAo5s6OGqLRKsgqhqDh4klEOD/AoznpbtD2aN31k3LgsZIYqQjIKzXy4cQs1eYBjlvzEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766804634; c=relaxed/simple;
	bh=L3u5ljEYowxrYjgq/RagZpsKa1NeAXSjN9PW3QeV2oA=;
	h=To:Subject:From:Message-Id:Date; b=lyZ0bYxmxXVa5CbLYAjqLImZWSKC5g78LMB5WaKHXzPayvy3Fts/rasAKJAw96WuGQ4hyIbDm2Pe5ZX5PpvAaD2N4H9mFWyqXEkraDqJMJRuLxWauTROOmzhGMVzZwwj7LfVeNU7Un4xRUb5VCa98iffeXIeQvsP8+sKq18JNjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGKpEn4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGKpEn4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DF0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766804633;
	bh=L3u5ljEYowxrYjgq/RagZpsKa1NeAXSjN9PW3QeV2oA=;
	h=To:Subject:From:Date:From;
	b=RGKpEn4gkxHqzhoYm6E6/NcjwozkKfON5v+kkv3asU4erfIQQPv4RdyJ1wa2p/SNv
	 LFQSh3O/F9RHcGFYV43h4lgPuF96HnSE3BR3MRXpfttOQCV86zwFBDvw7PefVGEfwO
	 fHg7BV0lb/9zuTI5LcovFy5ZxL4x2TqtVNx6cTWo3mNX+AjV/OyMQBEKPSSnFSA0+s
	 T+ajJJYd4ww1QSr5PD44kZA8+swJfhEky6f27z6kVhPyWgFq2SlsS1Vzk1NWhhw6gs
	 Qb7Pt8JEs4c98TkgZ3MQ6prwmCLnPhCf5TMgzEJxIW7aAZtVMdTcNnVsxG+zlYLgw3
	 2lSdXM8Wc/YEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946F8E8FDB1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680463358.8344.13874205689551188855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d92cc92a1a34a00d3df99e40567d3b004b46a0b646eae1ee2fd9fea8532308b5
Date: Sat, 27 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766804633
