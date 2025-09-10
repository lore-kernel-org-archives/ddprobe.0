Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0FA2749E2
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757507394; cv=none; b=hJ9SxkK7y5K35eXhoksDDOKt3aEMSahrgstX5tjHVl1yBulZVdi/a8WxGqpwp6zdHM4bqKx9K2tkt2Ep83pSWwNax5g1IX1phTQ/tRrzQVX0iw6kJ771mxnmYZBTxZtf1DzTTouSSdi7Bo60bhxrdHgcMSXaRef+pC85e9kqZPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757507394; c=relaxed/simple;
	bh=9cgJha+HlHy88gcvc0WFn5dXLQBgSDCUeLiK0l6MNTE=;
	h=To:Subject:From:Message-Id:Date; b=lJrwtW/gMh6Fix5bBdo9W1mURZKHPnHRqr3m0hYGXrDuGZoRGthfBL+fzk1PF2WHWzEUHdrvKpCyiXYSr8CBR1qYA0mr/c2eh7bIgdzvEl+b/ZcqswrV5Eyfo61poCXdftL1t7LM+W+7FXRzB5qVMrnWWpEBS8FihT3LPdhrRlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUvz1vA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUvz1vA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D2BC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757507393;
	bh=9cgJha+HlHy88gcvc0WFn5dXLQBgSDCUeLiK0l6MNTE=;
	h=To:Subject:From:Date:From;
	b=RUvz1vA07kd6f0aYwGpRN4YQGGpOS5x8alg4E9JpOownE6YJKHtIewGok9PcLrFD4
	 ealfnoPBeJchifYtRfMPTZ/o/TdjGfEuNe/2Xy6wi4lWw7R1YknKAz1eaPGgVgujjR
	 9dmHB6h8bNySLZlBNODB3NYFwO1Eb0k0uvGqXchyNmouMu/ZFJdCXdVAnbe90aY0+7
	 Kl6j5ayD5Dbym0N7evUpZNXyBwgsmjgJngDxPJGFdTg4n1xMn3sXrOkpaFaxanvezJ
	 wZUqrN6cL7f0riB+kfJk0IP5WNcawT8HJj2Hckng9xBf/u+cWlwGklgXWnOxI2M2Rx
	 +XOMjVDtT1WZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91051CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750739358.18410.7159917697972843467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b4cea9e50af725a0aebd7b469e69671d3e0a5c1872187a33497c1b56e558e8e
Date: Wed, 10 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757507393
