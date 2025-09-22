Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471092D739F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758560994; cv=none; b=rBy8+IM3yBGK+lXnpVr5fTXhr5TO9yBCYFm1Rjt3QTLugbQhM/e5jz+JxDbe6TgbQUjhJfp1MJrUQ7eNbjeSuf2JKzQqEqGA2cuPf0/vLSszWfW5IRPuGvi9BHb0H/8VrxYk7vieuwzpwZ0vhP9qariFNIotvbr5sgAiSV8mjMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758560994; c=relaxed/simple;
	bh=qMd9RXspVBfpdsRNK8w7QbFa3q05VUfu9rPFnCGevmc=;
	h=To:Subject:From:Message-Id:Date; b=CeT3SLvyXdVgmGpeNsIWVOYSUlJr4CpBuQJFVNIh5j/TgdwljYuIlfdcWCS8/RAzFyx63v1mvG4ceABsWe1DU6LwDSQEm54mFS3QoYkyKa0LZk6MY4FmB8hlZcIeH8Y/qCOn/Vmq6VYfGZQQRdU+YP0zIUoI4h/Ea2ZkhvmVwpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4jpD0x5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4jpD0x5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FBCC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758560993;
	bh=qMd9RXspVBfpdsRNK8w7QbFa3q05VUfu9rPFnCGevmc=;
	h=To:Subject:From:Date:From;
	b=o4jpD0x5kPN24+KSSLlogB2H4PXwXU+oRTab0t9G5bWlyt+U860v8/bSTzyU8WXYn
	 NddIj09hX2g+YUoGCWMprxqpdcue1OGClY5wEvfLmamsCzy63yz5NgHblgnNeEPIJp
	 LYrW4bKUYRvOt3/CM4vPWG7B9kXZF/yiiI1wI5F1iiaDqZR05iThzRfu89APjsitvH
	 0P8diL+1d6RIqWJgUfUnG7DrrjZUvFL7jr1gdZT4mfOjqiOReF0iZanKcyV/2lQ3+z
	 1Z94ofGvrd3R2vji/vYvvh5DJAkjE3v92GkR8ioXKsxBWOW28Dgdt2nLUFW0FMpJzd
	 6T7UNyvo2b+jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959BDCA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856099360.20693.11328950263637874560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e3402d5373e699e2e0e606944e5243a05af2559a126c2b63c02153befc2c27
Date: Mon, 22 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758560993
