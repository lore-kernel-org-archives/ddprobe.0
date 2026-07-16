Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CDA40315F
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784205514; cv=none; b=e74Qc4ZvgHH30xTCWeLfPdxcu2L44Fi/B6/FyXig2OPi/cnU9jinZIC4kRH3axXerrGj3SLYX2ji8uSEEv4sIds/SHvePpNGDzqyXQDBNwHc/7WjOmWz+YC6Nsxq8ARLYS9n4SFyZl2H0tWYtLltQlGiDsZc0NrCXocPeC2Nwf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784205514; c=relaxed/simple;
	bh=HlroeIEUNCCiQO2ZlunSaKwsjiNu1tdZ1MVfmnDzDow=;
	h=To:Subject:From:Message-Id:Date; b=WmnwE1jUlyVwbZRWIDf8k8yT1kTt3BsdC/Wv8WWTeLdKx6i6XUsuBE98XfVUDqnhwmZ/Hthk629xbw+nr/3M0L4aFZdU1A6DrZ59PFU+b0mvbkyqJhdn+VaJOuIKFP/iFgENr+q2eBe/P4hqQzQO0SyaVyr2k5YF53lpl0iYVLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6MN74aW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6MN74aW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAEFC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784205513;
	bh=HlroeIEUNCCiQO2ZlunSaKwsjiNu1tdZ1MVfmnDzDow=;
	h=To:Subject:From:Date:From;
	b=Q6MN74aW+Wte9USiEHt0/2EuXXvQ+LJ4wW7C8DVZgqJOSLnm4vfwtX+J0XK0vPD5X
	 ypjPC84MbXKOTV5GdguPuAw695Z+PpsgMk5gF9XNUHN8sjVphHWiItXzX32/hzF1gg
	 F3kagQNs8lLjXIT3/k6+KEBZZC7xHolwjzHZ4TLWc+qpxOCkbWDlzIfcwZbwNe5Sx8
	 Qu9RWLpH1FnGjJNNpY+Us29EcRlVVtHKCET67yIrehf+vwwpJhlyBejwrPDcpDLPe0
	 qU4E9sduGUq6U8MiQH94TFXqyLLph4DXAa0cslp+y0RCXrp8bsbdHm8WxFuWnPrGEN
	 EWcTIx9nblp5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A998FC44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420551368.28985.976170335769362113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83400917e1f65adfe9e599915bf60031584da68cca6d3a7b30a7cce627ed9615
Date: Thu, 16 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784205513
