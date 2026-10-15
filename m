Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734DE1AAE28
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792040434; cv=none; b=f9+vR1n5zvO6sehGFPtzmRPsKJF6YhSDsjAhC/Em06HEWs9IjNrupQ+TpASQhTcrbWK8Vd8weafxBsZSvkx2C7cAq7hLTjU/O6MhnkKrq8QGYt3ITWFa9e8v1cc9ZWQsTpEDAAG4L4aAU6ElXVzQHNlJT0iST7Fna2Q7yQwxfAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792040434; c=relaxed/simple;
	bh=oc218/Y4ImwhRsAnWL5z6hHZYZMayWmBMoa25CS6JFg=;
	h=To:Subject:From:Message-Id:Date; b=u/UViN8R4ArydweE54gW70O1Jj2PSKrtz5jAUmZfQQbRr7FMkBfxTr5bF5C+9TPSDCh3g3Qs1aR2Gs2hgZpGo4d+qMq9ut+sDp8z7zwea9CZZS6uHrnHPyeV235JHsyGozMj7TA9ptvZyns4GqZXawJsM8yMXz+5oOqqUniCNls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3MTihJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3MTihJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F02C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792040433;
	bh=oc218/Y4ImwhRsAnWL5z6hHZYZMayWmBMoa25CS6JFg=;
	h=To:Subject:From:Date:From;
	b=q3MTihJgu8TKIoibQxfuXtcUyn5Z+AP5XnB+ycBeRfd1DQUQjks/JBU/xZxMjeurD
	 K04QadGXoJKQvzkT0smHdiJssIcwSXnJVvd/L8pxAFGKtuk5Sr49X2vKjpiSUW3t4P
	 /9owCES1AefiNe3Bor0hLazdW83yBFwFCw+cKVbiPJetqtdZ/H6mGwQyjRxDJDYlIR
	 F0CwMkVx63jyEvrY4/z7fpqisywW85Dwhpy8ifaoJTGSlXnPn5l3FVhnOGLBYJgqKC
	 HQUtK+wjxW3Riva2vO6bG5OSgGEGJPzK0UJfZop+lcRAxW7Bpmali4WDbWGz30G7Gq
	 lcDTuqV5wPDZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA18CC6B2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204043373.7100.10764023954886000072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d18030fc55dc96779bbd4bbbabb0bd545456971af297ba59882fad7b3f81c30
Date: Thu, 15 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792040433
