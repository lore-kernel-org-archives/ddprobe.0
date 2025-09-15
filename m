Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB6A2853F9
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757977794; cv=none; b=TpyicI+hxHCwRbxOOcPdXPcVoS7cW7ED/6dxsE/VT49jAoI1EQlLbX77S2soskuStVDuIMIHJlz8F6Oa29hWoDVAQo+JozO5hNphoRY+yMDhn5bEKk1z2vuuJrh3TzJ9wByEm/pS44UZHBt1v8MSTDhOTs1ONvULMEhOo9xXFVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757977794; c=relaxed/simple;
	bh=sCw6C8cAVllmjeUedJi2lcBgxnmXBFvz2dTYQiNQUCo=;
	h=To:Subject:From:Message-Id:Date; b=by1xrtoS5qyx2VBGfMK/dxcoR2ZCNsiQlRA3yq6NwQ1wJvSBr4wbDzXbyVjYv3GX8YjKjoL8K6P7iZCcHsPYGpxrox9wpEMhNH1OHq7QSOwV3pt1qD9EYBfd5wdfCGTZHEEYBp4Ji1NVUXEpNkZ8i1KoPxqUTqp+xgALi1pXnpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoVfRDRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoVfRDRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D03C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757977793;
	bh=sCw6C8cAVllmjeUedJi2lcBgxnmXBFvz2dTYQiNQUCo=;
	h=To:Subject:From:Date:From;
	b=IoVfRDRoSlGAvGh5607iRqGcOnXWLyZQjiQ9mJX549nUvScNGvJdvzRgM7A/aXltk
	 TpyCq3yfVlF3Q+A39xJKInp1dlzRreiMqG1UXWrDFr+XNbn55TM27xIfo83jXNOQVl
	 0iZoS63njyAEwXizjHmFYxBThxoLP2ZzSha61MNYf2M6UdPZcjAFjgAXfOghRNqVRU
	 gnb0PHPc76DTt67rmPsWan77MVMmJVqn6C4Rx9QNfqBAELt9eTTEZSoVNBHFB1h5VU
	 QsMubvus2Hlsxgcpc8ghnZ2CUjDeLUGNV79fBW4oysjSQkEaJ/N6XTzYNc+mV9ow8L
	 v0TKAKIo5Nh0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F837CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797779357.22313.18441665159713543734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59bb3e4897f64eb448e683d1f808fbe1c156a3c32a24e11e2ca16e08b7847c2
Date: Mon, 15 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757977793
