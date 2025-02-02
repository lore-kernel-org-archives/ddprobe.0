Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574941494BB
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738496154; cv=none; b=hzCQiIBmZNcHKb2th3fZKz8YvgXhakZaj2Myjz6H1aFTXCsHWDpkrLdzl85p7TMQm9JTxdKRvF1gGV2Xq7pWzpTeMjKBzFwABWpf4jYsrQtY0Tkqlz0cB/3dTfsHbzEn7nMMVTH6sp/XkWf5IaLIhy4egnm0BPk2vaBVKeAnrkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738496154; c=relaxed/simple;
	bh=Fqdo1Jk5XXMlmQkcSdYIKYV2of9QjLe276hrqgrnWR4=;
	h=To:Subject:From:Message-Id:Date; b=uj5RsFUWC19vdcMeWV7T4X2iqjQ7sk4NdQN3uCvkuf4jdYDDv/T6LzTdGAdIpaZSR52rydCWK4xRknF42MQxUPfk3CzQSYNH78NaQWjrjY1IQsLbRSgNIZtcVqEC9Deq+X70Bug3pPB4gZkBo3RqAWWMF0hP4s2PESu7e+7LsYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ll1Z3Pj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ll1Z3Pj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6419C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738496153;
	bh=Fqdo1Jk5XXMlmQkcSdYIKYV2of9QjLe276hrqgrnWR4=;
	h=To:Subject:From:Date:From;
	b=Ll1Z3Pj/PZ/Ml+nVgnfNbchZhmimLyanU/1YrP1NJGLE3Y41TnudPo5gRxVPtrSoM
	 pKHMDn0Yn8DzV22xFOZxE6t2IRh4WvtWXc41ZWQAra5m/1edozHJlWv7Bv+8jUikAi
	 xNlTt/eQKRaKGUlGiLFuVZZ0gH6sOUrBpmqzylhoRmW90Lv9hzA9Y5dlU5WRd93O/M
	 R2dOQAZUQYAe8IZvG+M+5KAhMzEtBuPjI1i/qf3oz7QOZPKrVHDxO9ffpEcorWtDBq
	 8zS+rDVH9gTL7wj5qt2LUrpBBWtx9GszeU78GVrdIMUS3hYDzpCucxnEUM1yKyQYU0
	 7UzD0yVNh2+6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0A4C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173849615360.25983.17245407037426711827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a9b54ca7c2766ca605bc7b64ab628d2d0a073020b76fdade3d4907684dcd4b5
Date: Sun, 02 Feb 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738496153
