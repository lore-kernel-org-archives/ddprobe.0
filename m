Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A0E27FD40
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771430694; cv=none; b=FoFPlYMf+EXLwZtDfZCQnm4ZMQ/HNt4m23sVXYEjnWHB5ceca1vOMchLZzSx6/TLuRmLy5nHUGeRZr2iPHJ1OW1cq8yLgdgqMoyX+VOrSH0EeJijJc/kkFljiywUjdv1BV1kp0l9GEAvdFH3OXx2ETLkg+3xNcbE6LPC/04MPTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771430694; c=relaxed/simple;
	bh=EbPUbXV8Mhb1FS0+m85y0or0/QCgk1W8IzqaCICdhaw=;
	h=To:Subject:From:Message-Id:Date; b=EVz78tjqCWE4puu9pifzssl/oo+839nq05byFZpWYZvz177deoSY0jZwIsQEbo2FLOs78b3bb3syKNGX7s4+BwvSAXMbw4mamJKBQ71mcm4/Cs5lHWdJRlZEhJleKf0wY1vLoQxvCe6bizzBljI/NBlGMLmt4MuZiUgOXGKnGE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvSg5RYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvSg5RYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E707C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771430693;
	bh=EbPUbXV8Mhb1FS0+m85y0or0/QCgk1W8IzqaCICdhaw=;
	h=To:Subject:From:Date:From;
	b=PvSg5RYay6dpXMnZPgi9L5khpuAR1xICHyIpwplPfeqXhttH4VGBfTaya/FuSaQ70
	 dX9J+ldNoiIYClOjq7vi1PKJ4aLkIkQqSiz91/yRzi35lX+V2t9QH/86Db1v23luJP
	 LTRqqwC/SeWKV4gwv5DyL0FdPTTo4rfvJlb3nO4jimy7SpTJrT1PoF8HUOI8k1ZX0j
	 DZkqsl6b1WqIJfaY+Iqsw3k3PUzdcLq6QQPz8Qn0sTiZ0+X3gIjwEakO21XOn+FW/3
	 qSPZh1rwUhc7zmfIuQTPRy8yTWXRbxIimrYvGkAGoPeHQraBmvDqz1gw84PJ5j+bRU
	 fR47EhVLRMSEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908C4E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143069358.14516.1420107121109814646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514cc639a9abe1eb5e392f48479845187d78068c5db94ce0d9ab2ac6131ba1cf
Date: Wed, 18 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771430693
