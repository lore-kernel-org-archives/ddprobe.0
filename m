Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2B43ACF04
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789905634; cv=none; b=R56wfOUOYFsDeqDAZcjmlrCQtGJIquLbdP3fLYUR4aGoN2nRlNh/RMS/8EN2jefCzRqtrx9u0uzb6CQ+lniOUMqCF3rg6dtU8RjdbS4+WxpnSOfK1Yd0ZYCvePx/8fz2mroDK1qr1NS7IUtxOcxwph+1t6nJhGzwG5Z1JBBQ8Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789905634; c=relaxed/simple;
	bh=aiAzmv9XfJSwYzW1Zu54AZXRUeVpVN380RFfZe9VzSs=;
	h=To:Subject:From:Message-Id:Date; b=B3fK1hm7UJKODEX6a2TCWzHT7f1jGuq6EfHqu89t4QpVMqzfdCKMw3NyXy6C2ytzDdu9UmNGZPTF3rknCSKq1ypFWSkZPUp8FsBzD5im3fK15CMTyHecwhdzBAEzUGh6IHOCewVATskIEEOU6a3yfJxhDa/NBOfxOqHXtLip2kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3/SPT4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3/SPT4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA20C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789905633;
	bh=aiAzmv9XfJSwYzW1Zu54AZXRUeVpVN380RFfZe9VzSs=;
	h=To:Subject:From:Date:From;
	b=a3/SPT4lnLoaPDGxXCBrxiJG7FpIbWzPmKwcjdVfw3yPO/7SnYes600YWeye4WSJn
	 1WrVti1Euy8GgpsbfZ0AfJvPUV/eeIf6L31VbRqm7Y+k8NAKOMmzPYKv1f5s0H9e+C
	 co38IrFc4/tPnd7RIeIyF0T+ngGTSS6VLqaqLfhXZoioOAjB64smwfTdYGkuhe0f/d
	 QRrEtYSRBkeGwfoyBAJPfLVZoh+lu5TzUqyTx05DltxPkGp2yF7YOhxxj3fCmgImu6
	 aM/rfQwyhrP+QNKeRgvii7OKj6AoINi+JSIFYNmfEwtxfaJz7BWGYGscv/LYO2IAI8
	 Xw+8yz4Cc3LQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6FBC982E1
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990563368.3953.17187179486241679818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 461b56c35f392afcfcd8a6f5909e4aeb7ee4772b43575ef1ae365d6027735658
Date: Sun, 20 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789905633
