Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECA128F5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728515154; cv=none; b=YCCcFsdz5s4+ilnyNfmjvEiUWC8TB4g+71ZCt2zbKQAAV9M94ZmE/s9RhwAr6/92CEgOVfYeK/vaw7t2rNw+6aBsKFvMiWXXJJMEQEug1UzuxxDRBG5tGMUiRzdcVYVgNQe6idajBVPc3FGoECl+5x5OFI2eC433wCn0WopBjl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728515154; c=relaxed/simple;
	bh=llQpucX+/tms++mGt8q2hiSNdzKMeIplvrQmMdaZsc4=;
	h=To:Subject:From:Message-Id:Date; b=nLDxxH7fJjTt73PvHPgZBJ4XWBrK25Hyw5lwySV98ZQ2DqjBIXVyHNDvIELGU+G9lQ2Jf8RWy0pmT8WHRgrKvvUyZt0g10VDIoBwDbx5NNNVtRBBH36p/A4FRgfgPYGW3sgQPX+vQ/heQYvGqFw4ejVwpPNwdKRlugRQt5P/ej0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aD4IPYT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aD4IPYT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4063C4CED2
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728515153;
	bh=llQpucX+/tms++mGt8q2hiSNdzKMeIplvrQmMdaZsc4=;
	h=To:Subject:From:Date:From;
	b=aD4IPYT4hMrI8KezX5+xh4WnonwgWA7MMtcQNvRQskKYYQ5uQQyvcnLZPtkMtOp3A
	 4FSyjjV++DzwLi9nrZ4Ke3tFY1Znu/UjMCJRKt4GMMikryDmWvXobiRfrfmJQ5yLv1
	 2FnMvIe9PXhbCWVgjs8ZEYUVURYqb8ne3YVc5HiVHjNlZQWs/fkLguQIArT0nsctR1
	 O4obChOOf4n+Hy/poYBUxHDHGpShwXmizNm9K0uqi1XyF2d1C9AGiPFaXy2WSKtT7Y
	 gFHgsdKkNwOg6VqcE8KnFnKLZicp/SM/kO9Je5nH+ZBKMHofsNu0ep5icg47HMQ2TG
	 2efqms5sm9YWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A930CED611
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172851515361.13745.5117297666536247119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4a4e3dbc895788d65aec9227748cb7324a43226ad70cd0a1fe41330ea022a7
Date: Wed, 09 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728515153
