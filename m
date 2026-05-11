Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262B03BF675
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778521234; cv=none; b=YMDoZC16AN36svKMlC3TEOJ2+24LgDPoesLbsgHEj9aquM41TK96Kc4t5KELbkmbQvzxbg+9Bgk1Z23eHuw5vJ8+1rSRdE3qnkt8FmcnrLGdHumlQWustPVEu7xb/55QFqnj4ILg/LF6QQWYAkeQSRaO/49DgGRsSld3xOfe7Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778521234; c=relaxed/simple;
	bh=LzIwkQGs1tC640WK2fmfp5S9kGnpVKj0ZY2sqTk/9jM=;
	h=To:Subject:From:Message-Id:Date; b=pH0iODploa6fxXHg52ySO+oqho2+xNVRacwJrnbeMbklyPMJMVO/h8girYWF4rmmJgg3YZzGb6+FMoNH6APE6wpR+yYsjP/4rRNIWxPIMjULux4SXT6aGUuOWCD5y7aM13i0rs7OLLZk+071XGRqIKb5Ybt2FvDxDj0xB//p4gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eswMM4qI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eswMM4qI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C372AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778521233;
	bh=LzIwkQGs1tC640WK2fmfp5S9kGnpVKj0ZY2sqTk/9jM=;
	h=To:Subject:From:Date:From;
	b=eswMM4qIHHr29JrW18NsolPS1FTA1ALIKcxyN7KlrvbI51NdmtUtmk4CnUd+GlQPF
	 LJ8nV1yS9TRE3gO2SePUfS0fnhxRx4u6mmwL2cJt021381/1liDGciWJZBlii0T74B
	 YcRvkq20NskO/c4r7G0lcNiTDTV3UAqWXpQUrdOEQxrtlMs+pW61dWVFzIIJsprDk8
	 e+GHWDg0BKQx3sGaTtKkBl+K6Rp4Ui7Wz24LOuQi5udS+3Po/Td2witSZmInmmRy2m
	 Mr+a4hCfVHGIJPNkTThz9JmirUV48W91YTowFlNSa5WPqdD9RS7iVK69jEicbY7SP+
	 W48Zz4haX15Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB5ACD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852123369.3649.9956047238223913360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70037992a7d7125113414a8fa91f5775c2f0202aab26578f58b539fa8d30905e
Date: Mon, 11 May 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778521233
