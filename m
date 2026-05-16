Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D23030E0C0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778952034; cv=none; b=BEAcIvShxHbFbvEjs5OYXiVdaMZm4BiVVIPu8B+siWJzd7qdvG8ZgIpjcg+l23o8qRtd/mOzSE6QwFIfrRugEIrJaaCbknH3lS2T5r7cpEL5cmnqT/TPmUicS2KBR/NhnvfVQwJaj4+XfA0AIzf2Ze4yeghEbPhcoB3OIEplWO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778952034; c=relaxed/simple;
	bh=/tCBUJvAxBv5/7J1zjiWeVoOPu6BAL+rHKt2kEBNu+E=;
	h=To:Subject:From:Message-Id:Date; b=pxHxPgmZEp4Zt9oxYCn8Lr2DsdHDdEhFrRDpar9bmJ5cl3k1BhwdxLtM+3wftzo80vugcEODjZu9RhNQAD2NaObhTTsKvqIFdtcNfTHijmeHdwnmeV8T9TNTtKXsrWgF+/A+Y7YV51J+riZKFeEJ66cvLiWPsCQOYRq3TlySMlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=su6KahbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="su6KahbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB3CC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778952033;
	bh=/tCBUJvAxBv5/7J1zjiWeVoOPu6BAL+rHKt2kEBNu+E=;
	h=To:Subject:From:Date:From;
	b=su6KahbE8NVL/KcDhUBnhs0XqdVQmisGQQHRUaXL/AB9oPe2LuESAYRHccvVyXEv/
	 O7KJ00S2Px0nRx1qnJ8gfCW6atZPaBvxddj+FS71nFEcTHIhsgfQXeiMsLevYSwvgY
	 0Afh86tBYntCxCE/7JN6vCa7dxyQ8sE1mFWWTu1g6MonKGus8T7tSfQZSYUSCu9c9Y
	 YlU/guBSl70O0nxHGbM1DsluApQ0IstwhoZRkWxJBWgTu7gPLQcZr63Pe5zXxT1LT4
	 oXbZcJYrDxEi4tBB+VKrAICoXI/ZSwhB6XkwZPd/Ta3ILssFfdYkPR9RwQTWfQBrli
	 GUsYLEbThJFsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD0BCD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895203369.8900.12524914899066069226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7265173a479439add1115d187ffb44f2d3b00902e3fa8da77620c63d2d8362d
Date: Sat, 16 May 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778952033
