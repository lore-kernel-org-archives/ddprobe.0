Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111ED1AAE28
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755977994; cv=none; b=lOTdbAzfKcXVlPC+I3ykc1EMjaQY+bYuqiwmXIsoxgL5Pwi2ynx9NKsn+PTa9HUwkL24W7LME5aM/N4YiB5QCiAFwaCBqGk+OWbMIkcFeCGfPs6n8pmDpUIxb8FBqqk/ZQKnoJJPfEFWp/GWH8Jmz/FJKrlnD3Em7yliQaExgXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755977994; c=relaxed/simple;
	bh=6uoZP6kJjtDSE+JqlFkCDheQh3CoND+ZLGIavscqiQc=;
	h=To:Subject:From:Message-Id:Date; b=USHili9350uSBFZ1+YKCYHo0+lOze9J5lLOM2RH63juG/dXbqwUsad2jKGvdY6hD/81J+psUGAi3jrhGWucV17A06e+MnyJvdx6OxFEmI6EQJJLFnPGD6nmahpUGHuEFw2VabcF2RPn8OkfmpW/dC4JqO/6aNAX5YhQY6lnmDno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXUZY4kR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXUZY4kR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A115EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755977993;
	bh=6uoZP6kJjtDSE+JqlFkCDheQh3CoND+ZLGIavscqiQc=;
	h=To:Subject:From:Date:From;
	b=OXUZY4kRLzvhNhRlRxj9c206zIZ7Yr3puIhpfQXhyfqm+RMpbRM39bPST3IAANkFU
	 nshfRF8oWpcR15J3k29ul3EjgJaft2s14q5yNHjuqN1SAsPBxk7HkpUfE/M5EB6nz+
	 GxDgSGdXkyeto5+EaaE1SLkfEzOEWUrMkxK+EWD/iBbYZdIT0xYr8DIibR1vFEoJNY
	 F0n8lmcGHxjJQVl8ZlPiKH7wFlZ4IrFUn4yf/QNR6HzVgFVEHjurYuxrIKYHzr7q70
	 LGxxzxATt3Y8x7eE2yVc+0TImIAsJ47y3bE/901LFo/KhtO1+Y9loHw38NYKDYJ3jG
	 Ch9ZDfTX3v2og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC18CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597799357.7690.11166090076318885859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31eb073ccce80933320dc3f45b6ad02d998c8752f256a9492607577b133c177e
Date: Sat, 23 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755977993
