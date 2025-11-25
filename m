Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B3CA95E
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764084774; cv=none; b=oFd8nrUZPnc5ZxISWPgOZUsbWV7GmvhkfWMLahEFubg/Sn58OPjTMu535nhG5QIcAOx9deem1JYlzCDTlHd6pnh62ukgA2FQnz8zy+E5meEkTZQ77imo53mUN9kK6n9GqtWZGSRq9nPAq8yTVKh4AJIcC6iHJEGoBS+AWw9E0Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764084774; c=relaxed/simple;
	bh=hbnrnI/via82wYfVHy2ySxGC0VMiUblyhKBZInWQ0sg=;
	h=To:Subject:From:Message-Id:Date; b=VSNzUZYjllvUCQrla/vsNiE8iKJm5d3rKXzpNz9hBPTMvm2mk7U2YlHYscuFAWo0ku/IJer4Q0z4SH+FfQv2cdmpxkkYyblRa1GwysqkoFBtvm14mIVbQllnalbyHk7H8QVeYkOhj3b65Yh8JIjehh//JMJfpq3N28fkaIX5j2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=of+jif8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="of+jif8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4371C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764084773;
	bh=hbnrnI/via82wYfVHy2ySxGC0VMiUblyhKBZInWQ0sg=;
	h=To:Subject:From:Date:From;
	b=of+jif8G0uIJ+/8F5ZBs8jqs3+x7En8NTFEyCHRE8TDuvxqNP6UMgwT7cZHly2cmK
	 TCFsGrNTd5ZLH1U/mmpv9aEk5MdpJFFdED15KahieEAiN9mb1l26Zi8v/aQTqzaGpu
	 MZDo6nD2PH6gTGocBqsR7cIrhija3p1XHsIhF9KNTPimRb+tO39/Akt9iJUUUoc7Xf
	 b+YiKv4rQsHC9MjW4AVT01s8kzyBtrn/QU2XLP+SLgNyX3Xmm96NB9svSyOQgDNZl+
	 AipB22ApakPr2yjF4hAK+CVnAlhGjpF+WWlmWWbNok2LSXBkV1EKKipobNnm3cmNxS
	 Ye1u/ZsueMSIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EBED0E6EC
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408477358.15510.13182588091135986619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea96b8026b082aed5d117512305d3e300b05a752b416088cdf4f4180e25900d8
Date: Tue, 25 Nov 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764084773
