Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB83242D84
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761622794; cv=none; b=m6mVH56Nu0chIkSBZKXEz9EuZoD4QNc3gYJqtqy0UA2vZjl8qYAykdir8c9GF5e/DAjNje1siFhJyXQEh9TW+5IZr+fuuFcV282feGhh4jR2+RAexc7rY3K2cjy2CHKG93yJnTi0E9GRLp3jxp46+lqF5y5WfZQ1/9fXlxjpnhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761622794; c=relaxed/simple;
	bh=wd3sG/lCNEJcSW5y5uLq0YbZe9AR78kmzHCcwyHWMig=;
	h=To:Subject:From:Message-Id:Date; b=RxHXQSM4G+MLzYONS6ns5Ioal6HCBXPpF2owLRHaV+/eB6XhPz8sOL1IIQMrCGAbJYd2105sAiILp7W+CE67W8bqcfcPAATCKMC5r944uOATET76x/M5GAks/w8uj53ImJB/yV15HEdefYVSVbG5KzDnJC1vHrnStRnLhtdliMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xy79YjPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xy79YjPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0212C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761622793;
	bh=wd3sG/lCNEJcSW5y5uLq0YbZe9AR78kmzHCcwyHWMig=;
	h=To:Subject:From:Date:From;
	b=Xy79YjPST7+PwOi3mZLqV04G7aGMnIOECysH2t27FRssEvcs10RdWZHaZmyrBg0ON
	 Z8A2a1Y9/zbJxEAbLU7IdS3rowN+D2RpnOlsBzxvFJImpS0oGthd+MOq80UFoA6i98
	 fAMeWVB/fiH63+ZwUdrIfMgvVVv7FhVygyLAj9I+ql3gnr/9XPGcP8iNwJ8ofwvzxk
	 5CTRgIPzTCmuY2VvACVWSyG/BPn/WFI7n1g/JBHrDICND/51dmjry1Ry+e/v17Jjnh
	 Yop4KHSQKtZawJPuiF5xF4VFuueQcFgHduqWf6A2ZziFUMHmP8NWqik45vGwAjGTIy
	 +8jN+k7tY5KGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F636CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162279357.27492.4402940689256793834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf81c830b176651ef7487ddd0958a6e9321011c7be73c4a125740993e6dd866
Date: Tue, 28 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761622793
