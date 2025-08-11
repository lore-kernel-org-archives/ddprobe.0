Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF695265CD8
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754909993; cv=none; b=Q1LqMqACbWWEvSh4GJiLbaCgegzbwjI4uwuTvhJbT4pzIusWdDTaRDdG6Ziyh9n4Jp+4m2Ex21mBvwPrU5kQigH0xW0Kzx+tmbBTRRnlpnsylZ63Rk54ang50AJQnV7+rPOxZD2CAE8W7u1f+BQPn0hQZ3svhVGhk/Oqr4NIYF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754909993; c=relaxed/simple;
	bh=Kp4025U42K2SwYiEs5XUyoezgi8PbWcrQ15rSznXSRs=;
	h=To:Subject:From:Message-Id:Date; b=BNfx6ZL4fJQP20hpT3cIksrxPnwYPclu0IFGm+cccWxXAhFJCsm6Y5pBlj12kKLr0atCnSX81KW8CXAQska+m3Geds4fFnIW7gCKewdQlFA+HBJ4lChekPbbu62d/ja0m8S4dNT121MmrUzWM61B+rHyJZoW2hTrsAUIf9GEc2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foZbIT8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foZbIT8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDF6C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754909993;
	bh=Kp4025U42K2SwYiEs5XUyoezgi8PbWcrQ15rSznXSRs=;
	h=To:Subject:From:Date:From;
	b=foZbIT8ok9bj3FgORaF+uzn7M9K9TpuTvX+rE/Wb1VB+9ik/wvUbuVmUMIZECwFCe
	 VZqu0s/3GlWryfwHwmONWO/wi0e82wHzEczVwrAF/3gDBFKgifLDSIcDP3I+YbgZcF
	 OB5Y+gqOqYLRjjgtlwyKmhvJokjROvebGP61aAbWtr8r31G84w05dUvWkF+4X8Tn9k
	 1puxS6ZrjRpQwxmxbjIYyZzIgo/m4ylj7HRoLVwUfhAe6dMrJ1FSKfFV2Ojv8eHihd
	 x3lg5FdO1uoI1wTx+l/RwdRH6+Izx4hC++0EoLwmXjxL92vX9fnol9aTVwn8/XmUG9
	 cogewxW9RgYlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F6C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490999358.25433.13328623942874424955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab1dc9d79d64160805eb07ca3e1dd063a36912131946bf0ed6c4995232f9483
Date: Mon, 11 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754909993
