Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269EA145B16
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761564594; cv=none; b=X6cF/7zPGtUWP+jsDSF+PXK+YTICq1QodQHA+aJTuKQvy3K1ghY6e0Ml+xBJJmplYI1J5b8Hax7XJHScqTrckECZOZlN7xvzf0il+yf+xXH8iZFXYdfugfOQ3awpn0O8/yvroEobXMqYjuHlWTky36xQZclp4lAfG0bW4Bc9vdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761564594; c=relaxed/simple;
	bh=GbPSxFyfhV8nA5leB88/NfBA8M1xnRdSOm3bIw0wj0o=;
	h=To:Subject:From:Message-Id:Date; b=d4Njs8QiyNH5sqfAht8VYdpEILvn9b+FJiT6pYuSQ7CVzJnZ8TKwrRCtmj3O7qb0ARSOJy8V0xmMXq/YE94j7brjx5QhS/ChcswwUtkn3L0CCFXhRpI+h9f3/juqKrH/xwHmxpEWzdiuCWXd6a9GD/IUt94B+wie/b8aYSJbLUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0Nad3+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0Nad3+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99E8DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761564593;
	bh=GbPSxFyfhV8nA5leB88/NfBA8M1xnRdSOm3bIw0wj0o=;
	h=To:Subject:From:Date:From;
	b=Y0Nad3+yI2tAcU2VMp11hkzDCtvioSe2LTMuXY01PtG/b01wd07tBXnLkAhUaqy57
	 5GGoC+jZAtJVsfbf6cqs4zI7sBdgUyH0K18L5g+RNV2ynIFI7x/+3DIdc92DBEXNXG
	 ykD8t/AAlsqwa2omrRGc193y7QO+XgJKcz0g76DgyGDlTnoeq0ayQ4mGWt65GjVxy8
	 XC47uxN9n0L2O2Uhb8kpuN+s9Zp0W9keKo94kRKVBf1z8DFI0nP+ARGm6YujZoplxp
	 U/bXRgEgfjF3rTnDpFHhBXBTwl/z2GQoV0Clt73PbUbw6AsZYNGoEWgukg96jucKr5
	 KMKQH5Jb3Fhnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF7ECCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156459358.26706.16018469684149808974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1845d2a6e6283f7d89b7262fe649073e095a23d7c69a4dc47688344f9d11b80a
Date: Mon, 27 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761564593
