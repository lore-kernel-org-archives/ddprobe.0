Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420EB1E32CF
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742503794; cv=none; b=uAD7uero2IZDaqfg2HFbQe1OZ2XuHNLS9pbdzHmI7E3mvvlb4hM+ACiMRdhAglGYIVl2Gm33+QLTM1FS8zB6H58/AzwzQA7JqDH8JhKYpTEwBKYX+InkBegcf+ioXooFdALbA3r1VCORHLDxra0ks5M7CGZtaljefx3crfRk85Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742503794; c=relaxed/simple;
	bh=D99gAXnYSITgsJU+GOKY+LdyM+tsq4biGQKazzm78rM=;
	h=To:Subject:From:Message-Id:Date; b=ATbSuOe8MkcWV69jfXcSRjG3HNbtpTTAlNde6UQaOR9+P1QDnR8EdhcZdT9KBz+v0WxkFQGG6rZC/kzRfmjznTF7gGlrxrFLYvlFClTcRngJvJNoBUoY/avSywy+dz/EXjNc3FluFagd1mWT8iX8dQf6WPfFBwELxASzcdFeN2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVuju+y1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVuju+y1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CDDC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742503793;
	bh=D99gAXnYSITgsJU+GOKY+LdyM+tsq4biGQKazzm78rM=;
	h=To:Subject:From:Date:From;
	b=nVuju+y1ff8Zb6l6Rx0243sjZL4POvD8aiL/CLdm4OJR/d0xtQUQeDXJTUcYvmuHz
	 By4X2NmQoxKOcci6OpaTsmtfb7k3KtEp2DiPCiLHzPT7anvtHAj5uioH8alRxMm3/7
	 +26QRMV3zSuQFJiLwlTNLb14V/NuDp/imQ3HCAqaIc2+DLLBvgaXPRpNHQSk4BjOR7
	 rsRe9tkdO4GUvfD8Te1IXdKDg2gVwzmtFeyweVObvpGNpWY7DX3Ll/gr5i4t3H9l7I
	 3xkHdHXImf0Xb/PVUHf+IfmKyljKt5O7Ug9THDavg1zxTroGTm3Apko1DLFFylNY8u
	 yqdqj1QerNJSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9B9C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174250379359.4508.13968195273311295503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534094f871732d1f0bdfd89c507f2d639c0bde4247f0a714b0b377c031b9edd8
Date: Thu, 20 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742503793
