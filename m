Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339033BB674
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779361834; cv=none; b=div2JK3Uqp4UgDeqAT7SNWykOwW1eb98HfRhBjGPHs0XQnEZBpDEfCGH74MtRIwD+Qt1BT/yvhVaMV3QDknfoKfeDaj1noXXZgnMhsf79xqlyuonJO7R89wRkGDsyMNG8H/opohhE9QPNjij7irI6kdPeYjrG/2t59xyMgl2/TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779361834; c=relaxed/simple;
	bh=dOv3UdyWUt9Z0vPfPU8JwPwrRZDnj10hnGVv7Ows0eA=;
	h=To:Subject:From:Message-Id:Date; b=CjVXR1DSXjCgwW6w3/UeP3TSGPzRPfsuam5hhmpNZHqueWy4MjDdewyMuRgztuKWjCcJn3Kf5B1uc3eib5y30GMFriVnt39NgVqgvcjjC+LvvP6yj0ODhbGsGcUFdeKLJrN31uch4ad6ksuNpEyc2FtK7xrhhl7f/liC/M8zdxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orRKmv3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orRKmv3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0871C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779361833;
	bh=dOv3UdyWUt9Z0vPfPU8JwPwrRZDnj10hnGVv7Ows0eA=;
	h=To:Subject:From:Date:From;
	b=orRKmv3wzFkf3H+MBnQPWQBvEG2EwY05B0eunphnmPZoFoNmAwmNjsTxnQ64YXQKY
	 fj5/PgfSPrp/F3IXTHuXn3Y0sKnTOOlRvpxhR4uXX5VGpcDeIcHJyD5jNa9ZfEHDwl
	 BmfrwUQaHSt5nKKnh5rRBi4PttSbloa6JWvnA/xGDE8zrxdAhG7eQYxQyQd9BUr0XC
	 RjsogsD7safBeW7G8+G7C1q2bNCHgZOgFtBBYQ213J9sOiJ1Sc5m23Xt4HowYPl/1v
	 O7zS04g7/efJSiNw+0VpZFSv2sWb9mAmwmNZVZPnydYPrE1fODAX92gb1XGA1bBNOm
	 KJTtFfZtOyNrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5787CD4F5E
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936183372.2654.3367693299479622856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878266e74f17e20f2709ac6bf0f949abc7fa5daa281ff73b0dc501a7fac93035
Date: Thu, 21 May 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779361833
