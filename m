Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF2D78F2E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780468474; cv=none; b=U8zgvspUtZCEUgOvUvxWZWTMPcbGdOijKvPXQqT/QO5x0AbZsyANXOyEnkMtr7vYIRGKzz9PYidnTD1lh61V0hFGUjVK3uBoHmfz5uKGCOYK2ekrn7r9ypwTKWNyQRzOc6yCoAPcJk+ImEhtOUwcDFH7g6txnX+0uuc2Xo+6xvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780468474; c=relaxed/simple;
	bh=P8B0kTApK6EE/t+fxUcEWdqduLa18yBitYxrGi+EVGY=;
	h=To:Subject:From:Message-Id:Date; b=N7l9zcn8EBjRZvKx08M7prV/TVQBo23bxIsrSof54snPNVTWW6xS3e7UkIrP9P9TmCUNlTKYbJlnxCUP/4S3wo6T9oV01MnuNuSQg7buENTizYP0j+n9H2Fm9Jzyr8uvH1kU81tWKpEedmP2Bho3NqcqFRyzHpVViXwJF62B7GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uni4zoBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uni4zoBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9B6C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780468473;
	bh=P8B0kTApK6EE/t+fxUcEWdqduLa18yBitYxrGi+EVGY=;
	h=To:Subject:From:Date:From;
	b=uni4zoBGIUng+qBSMA3rBVl480ebyo0TXSlawIFb6emZlA3MLO6aVTHrysWtDpEGU
	 tATak67Btb74ih1MMok5yzUOqc2XutmHlch0dWNjTcw89f8ZejlRX2kBxWwgIshXl5
	 6ahpQHlTGOT8XUYVWs9A6RM23BOPWBgZjRaCcqxwZx80DU1k5NGlHKItngSmexT0sC
	 l4O/ktcyAj8DtBV1ZIEnWv13bwE+4iuXXfi3VOUbt25IpvJ6HdVri0tNh+9ZUFa13i
	 NBt8ulDPGEAZluOX2rqPl9Am8D7KpTThoXjS8S33dQfRxf8s/7dvNfkk1rYq3tVY+3
	 r2OkzpioLJlow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B972ACD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046847374.14573.12624561815355713591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30040c678229b86d3dabe7261ec282a25012944aa2dbbc9237276bae5037231b
Date: Wed, 03 Jun 2026 06:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780468473
