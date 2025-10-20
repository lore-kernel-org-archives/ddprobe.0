Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBB3A59
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760928594; cv=none; b=hJ5eA5QQ5y/ssR6oKfe3GmK1ezlivXVt8MP0IqZ7NPUxmG6tqbs4wrX3bmUeziLuMYBfcNXq5gm4dHbiDhtqAvmoh5xnlogppW28caS6/9EqcyHjoGm+du3+XGuAVK/vrV0ZhfN7MSsyrsu3oGHIWCMmUFpQyhYMJkxR85reMmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760928594; c=relaxed/simple;
	bh=2qBWf96ceEZZABIiditexoL8u+awc5wOfPLEeuhuZmM=;
	h=To:Subject:From:Message-Id:Date; b=d3ZEjZlUAaq1ipJb0o574hvww25VOtcJp2qMFMVCc77If3l6BPfR5jglMmqEr75htbzOF/FNPZdm7U5/8OWqJse6IIazcJsNa2+q/BrSVTEfF0YRH+h6JsLgS/jBYZbvzjLHDJk5MPRYt9OqT09lnSJnEwFGl8AXyUSlsMiUaJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zn+xpjta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zn+xpjta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A704DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760928593;
	bh=2qBWf96ceEZZABIiditexoL8u+awc5wOfPLEeuhuZmM=;
	h=To:Subject:From:Date:From;
	b=Zn+xpjtamSF4kREFfqKz+vYjpETdIpMUhXO/wJGoSdtwN+iFSLmzg55PuxXiFhej7
	 za1cDbtaqWS1+Ky6DQ5Dz973fl/xDn1pY35ahEr92Axd6SVK/M7zDh/XOdO6d1G6Q6
	 VA2TrDhgi0oXxw7euI2pMTkBDIgIvmoiflIAHxqWzOZh1lelTzpFIhsGkv1T1H3zT/
	 r73c0ccEmNHYeXOnYU01l6JWYc/kjOS3exuJuwxrjZq4PFQciUbbItHnRkvsnlqntP
	 DAH3GnIF6l/Q1hxJ8j4ThRtDCNXl4gf5H6mjNPTxDGye06zgCcYv/KFcwSYH1S3105
	 G84KA/4KXUuMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CABCCD195
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092859358.29796.6382673424713325239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2343c3337295ebe13eea7d7333cc26d380334a76c91074dd64f7eeba9f8706dd
Date: Mon, 20 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760928593
