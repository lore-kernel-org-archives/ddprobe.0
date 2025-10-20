Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F17E219E0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760936994; cv=none; b=Y21uhZt4vePwFQ8XTq2BjAPJkr3H3PObW8ceduCXW7NizFS+TEA04D5t+nyKnvr8JRyDwNQxTzu7TUs2x/ck/VXMKqA8YyVwbMVmqO1MPvT8pcyO5pBZGrJKJxosr5CqIP9u10lnL4F8FzH6d4hY/E8+SNjcSCR4hStoR2a8NO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760936994; c=relaxed/simple;
	bh=NddlHAnfugk7fyXOYQ4xB8iDAfru3MnWAh1/JKiyJ2w=;
	h=To:Subject:From:Message-Id:Date; b=FM8m7kEBp/wG8SeAsLyU6WtQUbCE7Hs5G/kC1DQYS3J6g+ZFghlH6cMjRXyoOSPn69pTJsYiWgElqYaLcTeH/rL7PwvKxj8+XHvZe9NgkHlPBz26/t/oUdfVUmmziUfsrjnME3rwWiIKQ/56sH8gi+KJA500U/isJmSmFOYRAsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkqUrbQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkqUrbQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C00C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760936993;
	bh=NddlHAnfugk7fyXOYQ4xB8iDAfru3MnWAh1/JKiyJ2w=;
	h=To:Subject:From:Date:From;
	b=gkqUrbQd6fWKl3A6lmJVKcK5aHubcf2raAG6H0kaQkE/YRJpculQ6QWpt7iySvPkq
	 mW2gKfUwgy16rbbWHhT9xMBrZy0bnZBgMUj1Z0S7vFgwnfSp9f/BGHzvtySFnGrzlZ
	 Srpp1KJZkHApMlURtea7mz52Hn5CuO2uIhVP3BgoY1uwfV6YPsuXszWSiZp1XGXg/6
	 3ChVsT5l94vXYoqz+O1HnsWwZphNsLx49AXFhIpNED8IHjErocN4eEGibfRQMrSIg2
	 DiM480/u+5HBqyW841m5dAFY+kBX4++y3tETF/Bzj/5pxK5Lk7Z/BdTiUSRD3PRRaf
	 x/E3tc8FuAsyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90909CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093699358.1676.15344293864592016251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818950fcb4b3580b8faed3e4a03405e8d14ea38b095a1501038565c5842a6353
Date: Mon, 20 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760936993
