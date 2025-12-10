Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF9B326922
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765376574; cv=none; b=AlfyFA0/8h9Hh1PPXITDcnXsk0juc2X8hAI8vARt+yYjFj/ZbdDzqznUgVPG7lnWeHgjTUehHsAk2Yca+WLbXOttKYK5h4AVf9dnrfugxEwBoqpe0lT46vG+b3CziBZlbMgaWZjnKnC3A9YWKLNkg3439Y/O8SoCwFMb1t3q6xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765376574; c=relaxed/simple;
	bh=0lmO5Fz/gaot/97dGE8Yea5V2q7FVoLhqG0fgIyfdAo=;
	h=To:Subject:From:Message-Id:Date; b=s94y7fPGkC7fFIrne7ZCARTGVkCkGgSGaiJOea/dzVRInFMYJb8mhlATbHjGi2C44vCRmDEvVIQiPJHsBGOdTBMUOBvtsBOdz/PCQnBYkndLWfRIHeaEM4bKGSCeGy7JZNr26jBPLjenLxye9Tk7JCSzspaWmfJ0IzHgXYMXDag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaypBeWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaypBeWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C91C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765376573;
	bh=0lmO5Fz/gaot/97dGE8Yea5V2q7FVoLhqG0fgIyfdAo=;
	h=To:Subject:From:Date:From;
	b=kaypBeWGZvCNnDVk+JnsifzkXpurXDG0OpLQL2HAja2nxDYQ84X7RSZAbQapQ4a1v
	 x1rtsuKtnE0uas2uYPOrY4XqawetpskHpTHpsQ0IrB+IyI1d6cIR7J5k//D27Mhym+
	 6caVbNPoPi0XC/jkLdk0+13/jKwVEU1vUzk5vd+Sx66fKTxHAFn151OU8pibHyF38n
	 6ek3UCLDA/QCazfyuM5lxUu0RBTVGBYLREOy33AI5FfwuQURPLh7R0pX2omeJG8BWw
	 clBhWuzyasxgEF4kYK8zkjQYugsRNq1kzxigkRHBwnPNgy33zh4tk5BWAwGy55tmvx
	 VHUevWkO0zhDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFF2D3C913
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537657363.23054.5708493428146830987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd88435125f59b092422e09c9f210041ee058e5cb7f6e7f1da23990dbdeb0e2
Date: Wed, 10 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765376573
