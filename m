Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB5630FF32
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767926034; cv=none; b=H0/4HMvUn5c6fhAXF7liDSzfNoOeeYuYRtO4kqM4+1wjxdT5xvZb4P7BRVlq7veK8Zl3QQcyCaUag7yqLXOTpoSnTVAMZTzDOXpcQDSQGiNKAdWupFDjoKs4IZ+1qivz5pW24n1XzJtUVzOTARqxwa329+oBDZZRDlga0S0olcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767926034; c=relaxed/simple;
	bh=LOsca20gDkKTVoE+QXNebCdrmc65BhGTe3eVdsSlrSs=;
	h=To:Subject:From:Message-Id:Date; b=P6y/JwLnAMU3mWzidmHa1rqYCpaH9cUcxSJ7ggmCOLFWpbmQXFFLmXLSUG16/WZvW+zgwsc55G1ze2iDh/YNk+wXaUKO099SHjeAppyqiarZr/B7FkdflAMw46mSfCjTFJxhgfwuTGwqM8RQM9WmdzOEy+/irAqckeQdf5Z6L1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOJi0u7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOJi0u7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA72C116D0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767926033;
	bh=LOsca20gDkKTVoE+QXNebCdrmc65BhGTe3eVdsSlrSs=;
	h=To:Subject:From:Date:From;
	b=lOJi0u7sqV+hlGoSM9rkg5LLGfRNS3WqzYmSve6tgMY9MHfo/HXgbr763dyrKs/ZO
	 t7GwQcTYk6pxKgrA9V46RCKTAZb2MLf1sUrweG+lMs9Wtn+E1dzsZOf/7WpA8Pirvu
	 g78WWSdTkw2ezj2NEJT7MUYSkE2sf9v00/d4llqMk91od9Jd5KNk8BnlJ34sdaHOtC
	 FDKe+pK0gZDlIhprp/wiKXmcztmSUFNaFYQzjVFsafEb5B0B8VuM0w6M26ptXAidM5
	 pZHxwqJh8K0h9jR8mWexcKbiXFRQeyH07Edd8f0U+SI7rGDGpUqOaN4rFpG9y2zbDp
	 ULRggh0TX7xzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CAD232D0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792603358.6010.17443486417387584045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe06f58090e8c56eeb44575b99ebc4a6183ed901cae16689196284b797fb99f
Date: Fri, 09 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767926033
