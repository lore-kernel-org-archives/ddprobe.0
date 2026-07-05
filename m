Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458572E06EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783270114; cv=none; b=hrI+xApAYTx6jGuQKQ9Nr9RFxqjr1HsrriciS6+FvrMpt6F15yjRoixfVDIKpfDMFwNLKp8WuEizgYLP3QtLovN4xexWeIPLMim7XbFPmdMGx/faV2iCo1joQQH2W8+Br1kOE8jEVLPn0UBpK/yNx4ZcwBLTiN6JecUDTWPyd3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783270114; c=relaxed/simple;
	bh=JOtsT47Qg1XXmB/l+ula8am1QBGdiEnr+sjayqNxbz0=;
	h=To:Subject:From:Message-Id:Date; b=h+zxzdOqvMwYUl8Fpw9qapmw7uOHNzM/U/vkbb57nJPvl8RTpByADEYkxvNxV2YV5REWdEKG1fsfpnEoCLz2pMA5js9seGN1MFetQILAYBlWSlEZRWmw63PvH47XyHa62WnzP9aQYlLfjQ2Slw+JX7DWDVTLC38KPBn+dRMHz9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfnKlXdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfnKlXdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC93C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783270113;
	bh=JOtsT47Qg1XXmB/l+ula8am1QBGdiEnr+sjayqNxbz0=;
	h=To:Subject:From:Date:From;
	b=XfnKlXdQ++YQuDx9hKN3kPKbKRKygFFomUMG6BLMKrG8sjylRfRhRTzCI5I+bDJ0J
	 FAI5fFxsLpQ6W392z5+5nsGdmm88rwzsNBi72feg+6/CvYuxRvJQ6IlhU1bU222HC/
	 CC9VgPQqk06v4hzWfLDtt9LqRBeUe3ZDpnre4FNycrNCUq4vHjyH/R7uhEij4tVHaF
	 3ckC1OJTcemjEojj6umtn9l9ovBXPnBvj95D6o5xsulawVbLTbMrl50PyGutO/BBFB
	 UG9hN8SIafAYbWNb1L0rnzoOksSQJaTblrhWRJ414oRGrc8ntCa7H2OBBCAcQ+Z/cn
	 nwUppgvpV5O3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86F7C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327011368.25235.13061333332312360317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d63b6d3e76c4b98532f5557923955a8cf0e56e861741a6bc7d13b1950053d3b5
Date: Sun, 05 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783270113
