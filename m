Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23CB3876DC
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772087693; cv=none; b=sSa2d6DlQKpqA9lWlYxtXJTd7/uERu2jhNpydUT99JSu71oqo+BLReNoU+CkQrHVpuDSa//sPlC7axS4K4E7ZSOq8PzrTw84Z9JhvqZTWEhASsuWZdhgTeTxWV69uC4X1rNwHAs11vhtPC4awV3ypZgglqT3rftADJ0G1knC3YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772087693; c=relaxed/simple;
	bh=8qaAe4FOZsiScwqkoK3AzDc6xtsB4lWk5bYEF+wuYbE=;
	h=To:Subject:From:Message-Id:Date; b=G0DYtaC4BMkcxftjxJQa90o39h2DCk+x54iHk3W9SeCWN0xB4w+dhRSEen2xPADlVfb3e/XR9FSc3rm3kt5WD7PMMSwnEgcfMTu+ZF90GQ+c5eRfzd/18HVEuq8x3Ii+r8ke044b7ZGer5jLwjjbXQE2d6yJPe71XtDJM3qcLcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haFeGmqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haFeGmqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45F5C19424
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772087693;
	bh=8qaAe4FOZsiScwqkoK3AzDc6xtsB4lWk5bYEF+wuYbE=;
	h=To:Subject:From:Date:From;
	b=haFeGmqEHNsuBXz57ldOBPUMvNhc5zd9L9DxvhD83AJmlpvw0CH7/tSrZLSjhPe6J
	 FZPulY78Kyq5wv4TWjcZ0hsxDAGoppLcy3b4Gdhncjb2OOT3ape/EvKqmmlS4Lldsq
	 kEHQlSWF8PnXUQJIbU2cZUXs0EM3e01jAubJOxU+NAK5PYI8QYxx8mc2OThLaiceSe
	 wK+3sxvKLot28pZvusk2ZXHF4IXwGST8z6hIiIFBu6iRC+104tZBdwSb4jkMbRSVJY
	 V1gFvA+ySdW7LDwCQnMRFqjehefdV7aJ0NKLUPZm/N2o82FAaUmeoILzH18LwDONBU
	 l3jKjTt+CKGVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94515FD461F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208769359.16853.5070774243193161793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d8e3259082febd71d9d29a164f2645dc88c518ff6ca6f35cddc4189bfbdbf7
Date: Thu, 26 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772087693
