Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3891CA84
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736065554; cv=none; b=drcTFIFSHWBWhUbzTZmmjEtDmN1CdO4ZkZ1sGEpVZL40YCv7MNV3Fr9J6okHzD61ssKLlnnHQdvWIZHFG6u3+Z2TFCkloJ8Cr70oA7NZAyFaogQ32DNofPhmRkXlSEiVlCVw9mWVDZH2Tp9zRfYOWQHyiYvPODMLY1OW7GWY1CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736065554; c=relaxed/simple;
	bh=CwtqG3yumPab8jA7VgoCYc1H78+bWo6kDa8P0MPMfLY=;
	h=To:Subject:From:Message-Id:Date; b=CnLK0rvyM9fWOJAlpPKYoZBK+/+pbtWDblFt2i/pFIqIW7YS1sbVVBqwpNtVUDtj0bnp8GN5UhS+CR9EWQTXMJctMT3H76bqJUe01Nh7z19hgKKmN17Nng/v8KxLDhy6QAJVbI9KcvNxl2Eny417elRKXjk5XG6p3bO7yjsg03s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWxZO8+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWxZO8+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB715C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736065553;
	bh=CwtqG3yumPab8jA7VgoCYc1H78+bWo6kDa8P0MPMfLY=;
	h=To:Subject:From:Date:From;
	b=XWxZO8+oMjTmwo5Wsy1SNQVwt5vSvPilk8ZDdPy0px+3NX7YvcVig0f0PcRNiJzxo
	 tixLkhGfkqe7p+mv1f6w8lnJXCoe8KNHZLUAqSViVbQ82rBdeSIUGYjHC+n/j4pE76
	 zOS/Xd0LZEY9/i6LWI2Et2kTv9AzcQhUjOvdpn5c/z6EHGlde1qCbWQopJg2f5vMRJ
	 Ze2Ycjgur8WnXUfVTBQMA5nqRSSxJRTtgUVAHa2NDZnvsT7H8bEJOQKRyfvkQLDdj0
	 lDUIy//uVmXHvu2qxQZBH2cDd3CeXPGLggYna0QtJi/unqrlxGUF5iuM6GlUq7e74w
	 u2Qc5+cx91vKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9137CE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606555358.7970.8941048197430173270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ad2772c158b860d61c129c09352717c22b35c918eca08dd68d21cc461d0f35
Date: Sun, 05 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736065553
