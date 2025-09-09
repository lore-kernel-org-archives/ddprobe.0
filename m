Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D4926463B
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757443794; cv=none; b=ls2/Ju3+aKazzr2sJD7a5iDWHZjDc4stAGlSoScM+5dv9ZwA7zvXOq2iVrKlYOrvHMmJWfnGA33H2aSeDnzWe1bIC0Pabsxe67V+cldMklxQ5Jv7OWyYB323Va9fczjHSKklqPav4imq67QiGwrDLZP0YzlM26bt4miLvDdQri4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757443794; c=relaxed/simple;
	bh=hzVs6yso5XrxdhzmF181U7qaEeOBxHWgrJNjWg7diuc=;
	h=To:Subject:From:Message-Id:Date; b=As2XpROudmhEr+Hr53dzgTNq5X4VMGfAmCd9vUo7ru1SeZVzelx5CaLo0fSr1yjcZe//Tshwwp4lwHxravanlL6eNVCkwg+gOYlHEkCfRg5VwjIDiWCOqKpuWv8LjCByI2Xf9foRHEpvxadJb5mxEElfJtsADQisIgSQIwlyCfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVHX+YDf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVHX+YDf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A43C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757443793;
	bh=hzVs6yso5XrxdhzmF181U7qaEeOBxHWgrJNjWg7diuc=;
	h=To:Subject:From:Date:From;
	b=GVHX+YDfoqIIA5ybAOg1YJ2LNpFr/o22G98tKgkEWLS4Q//oeXfi8CKevRIb4VcI8
	 dCkjNw1NGMbYFSSE6e8aLYOmKKlgDxXa7iw5LiXNMBEi7odPpNV9gvj/TXjzaW+JCc
	 yxcbGSb4xCJ0r5+/vfbP0p0zIPkrT2oB0BPMRJxwMv/YEVpL9WXvh8QrQxCS8rklC4
	 V0eUnpPzXxMJ5xP7sTjVQG550RIT4uBUkEUYYX/PGT0T+f3ki4gaSCQrzK8y72UpxL
	 ZxicXNAQ9YuEaGaFbdsoJG6XK/Q1a5paX1K6lR7XwpHTvz5tQXrcMPZ+ox1N9Wuujn
	 iKSgAsDIhf3RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95789CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744379358.31265.14425613127324592577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83fd9a6ed514f2349947bb7de6a97b9267969467f31a9704985cae4e1a3b079
Date: Tue, 09 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757443793
