Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649312110E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720900823; cv=none; b=GyaMr80g2mtlMP62VZrbwVTwScAoAi0J+yHJ13Upt8Hw4BAUsM3gvMnBDORmIzKhyRe98p97tXgodKfOPSdPbD+NJTBnYh0rvcBNx7TkyUHc/O5aEtoRO7EuyYHXGfVbKJcYt931lksuxlM+/5R0v3msjM1wgqs2yq3CYqCpIE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720900823; c=relaxed/simple;
	bh=5lyejYKbMCnTBiU2if3VCwhG4FrcLo3F/9y3UXwWcIE=;
	h=To:Subject:From:Message-Id:Date; b=NG2tYRWVtv/l+jd9gxNMMzAybTpOC6OHexgt69hu78drHBsrQJtSV5ssR3ONngAisYFmbRM3Qsfs7Wjvs/TtIMzfen1xD5CSy31gcjnv0CpkY6xhMDBctQF6Q88XFZ4L5SfhOMVJfBid7HNUITy+hJQSxRhbEsVAybD73RDtUPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLYo3rda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLYo3rda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B5EC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720900822;
	bh=5lyejYKbMCnTBiU2if3VCwhG4FrcLo3F/9y3UXwWcIE=;
	h=To:Subject:From:Date:From;
	b=XLYo3rdaCkF7RWVFjldsyrQe5fwWCw7fe2yMVR/iJqjt/nJ4pdminkWu/cfFMsPel
	 d+tfz5pYoy4jnKHs2HeH/CTYcmvd4Q8wXUJ3MO5wOtfDxfs5dR/k/VBorXso7/OovM
	 gsB3bMEhM13ZTTN02MhKDRjR9MCF8A4zfJb5U5NBDwNjTf6PqqwqM4z8lHe+TFfUT5
	 UMvlKlTceQjLTRoVhbN+MLuaTwL/PpOwPlYC2zdTELVX6yRSsc2dkFO7vk2WdqaLVD
	 xyARwVI/dphgQ0XbOc9d8alpqQTx1FBjWgNj3EuahI4NnYXD2AGZw+soCHzEK+BHUx
	 zsUkj6nKKgsKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E7EC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090082276.8936.2173133992435707697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e02e1f9009cf3bd394936132040c82545fb2ad12f72ea7ff3fd4180fdf4769
Date: Sat, 13 Jul 2024 20:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720900822
