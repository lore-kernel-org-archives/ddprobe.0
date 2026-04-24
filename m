Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE6517D6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777022854; cv=none; b=ToFpxeQhojBiBXA8KMAugTZ9qA1fXdnQTzResK5PIRK666TozaXF06dE+ToYgql9x7J5Ll9YIiQi0bZv3VGklYKUKGzdJMHoecZnzfcSmJcj8UJd3Nve7wCusDYAgu6wI9L71piPs9GWkzYK18C3nSEUvpnye+sV8IqchCZxC1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777022854; c=relaxed/simple;
	bh=1W0paqUsA+SACImF8nmBdVbUb8ScnZb7JUhFN0h/j+s=;
	h=To:Subject:From:Message-Id:Date; b=jZCWADodksZUBmxyCUDhxGkAFEZsZBVBrTrEV8CtGBsIG7zGUWnL9JMajPxmQJu9BKa9vF1rbWiFIV58vQ1LMmDv9c5R3wpLQbBgLZQKtflyiCDtaqJOjXtw9kuqD960ob6scmdwD9pxbSUEnUIdKcLssFugx1QsC/3h5Llzijs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAoehk//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAoehk//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C263CC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777022853;
	bh=1W0paqUsA+SACImF8nmBdVbUb8ScnZb7JUhFN0h/j+s=;
	h=To:Subject:From:Date:From;
	b=eAoehk//KhMbg+k3/ETBdvp04ZV2tlP9wK3Yh/jztEMx4OVBZ2pcASFY5wvd/Bt2q
	 UmVaMcMUBlhXHrUYWH1d5j0Dg+2ljSXlBCtWma/gkI4hk/gxeJDb83JZRSCMO5LT5/
	 xtqP6mMsqz429OexP1crBCmfeEazuQuSFqOIO+3/Y2Mxa4NOyl5yRhDTG+8WNzEeL4
	 OM9lhMEzdZtu2h+0l7j32gvN5SOeFhePdF9ASlhFTzQHUT8hiSQXXMGjxiAcCUxlzk
	 YUe4AFQfiybRW47LA2oZiVCChQL7RJrGBet6oR71cxTvucfyN/2dvUTJz6BXOlW33f
	 HtzGKBZ1gkt/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2A3FE51F3
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702285370.15714.9167047175510971805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9162607863165c4c4ad22cf6492f387e56eaeb44bb4a7a4a6f8d176bdd639f
Date: Fri, 24 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777022853
