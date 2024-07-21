Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CF35FB9C
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721565954; cv=none; b=Y0fy1PDuQQ6e3liqh3JmE6182YJsbT2izXf5U5LFU2nVVI9yw8TKWKbYopeOYWMkoa3diZIpR2nwgVaOC9SxozcteY5yBhEYLVttaWIa95cVbdUH3Du6cckLp1ToK87iu5l9Dwo9O5ndgkkZEkxXn/MfCWxvfEIfIsyJVLQUhnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721565954; c=relaxed/simple;
	bh=CFUvyAVZnA6V+rUA+LCOhmjK6eoqdiRXmm2TDB/pxT8=;
	h=To:Subject:From:Message-Id:Date; b=oveDEDV7Vj3rQ5QMl4FzazTJ8miToF2hvXlGhAc4cZ4KNXs6guSObyDhf0aCyRRQmV0UkfOsvGp1vtR232va4dFQ3ai2zfthzbn+JtMSU9bzXqyvGinjZaoSCd8AiLOncBJsA3JZzN8kR2K4IfPVcq3xUcuwakcG+j88JQOFQn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyH/GEKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyH/GEKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DD2C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721565953;
	bh=CFUvyAVZnA6V+rUA+LCOhmjK6eoqdiRXmm2TDB/pxT8=;
	h=To:Subject:From:Date:From;
	b=DyH/GEKGwmNttuudjCRaevFMdyhYnDYXEvJ41PXgajSAmFiX79SYNVvQPMO6NyTWk
	 11Vknz2Fxh36cvI4eBtBSCWx62JAZmgHyIK86AgFigjkyNOZhefRzNf+1EuSYLFZic
	 P+/at0bB1qO/zcFFXUggmQidyGuxhFU/x3v+7QkAhjaXVgHdDsgQroPzWXjEFZm+2U
	 1lnG8fWiO53Fx1IYdgn2MxOFZ32cdVis9SGAMRyjqQIxfKHLJHD64eHz/f8FrEQqbW
	 A+42tLNhn4+RPJMoH9wF5M9HLTLV+TkolkeYcdcm8Sw4Unuq6A3X+z6nrRMfrNCpQu
	 6beH+UlBhw4+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2B0C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172156595358.9544.10821369860630273984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6def41b3e38dc5fd9fab94b56304227d39e81286e3d21a18766ce183f81129dd
Date: Sun, 21 Jul 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721565953
