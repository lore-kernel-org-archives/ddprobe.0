Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6449B26AC3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786926634; cv=none; b=ViIVTav3fd/fAQF3Nl2iU844TP2vT2NWdpWVBVbCfaCsoqrKIRFAqSSwEuruf1xSYyHvR50GgXyf7Wn1+KktOeF7aGKX2DAg9cnPHkL72f8kAltvhoBKbfJoe3Y9N2SWGUVDstZ8vaV9sLAWblGWzb0NJhx5mbtYogJV5LLjAmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786926634; c=relaxed/simple;
	bh=Unf7QHwJ/vgtIAVb2auiDURZk/uJuxF8//oYyb/xzl8=;
	h=To:Subject:From:Message-Id:Date; b=stQZm4z0KqUQ4O/NN8bsAq7QB5SYV3yF4sfUlxf2BbeA0MwUlcHOdTBN409OWwhstk8fWMtEGVoNLOvSsF6GLALABV13Xkx3DFRnr2QlNiuF5oeu2ROUzPQoxGqc2y4jBvj673eEx2e5uKuVPipCfl44+217WSzbrabSasmvjD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Li/J7SpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Li/J7SpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8145C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786926633;
	bh=Unf7QHwJ/vgtIAVb2auiDURZk/uJuxF8//oYyb/xzl8=;
	h=To:Subject:From:Date:From;
	b=Li/J7SpUEuGfymWsAe1AHrXOocbWNMSDPibDl4wqU6W0HJeeqpNvsfgqzVSmSvIWm
	 mlQGPwVHgKRXVwpQ+WeG10W+OWmHDCyFVV8/cL5ek3cxojSTlFwVYg7/KT6FG4SHF2
	 +GXr8CrtUaiXU+kwKY5GLHLLOpyNBTuRNXj9G8WKa6fg2Zvlk7422PfC9faHdHKHgO
	 bZmFgKVsfMfvkE6FZN6E38OLoY/RR4DZXw03K6g2hbkaIqnl3VFXHcTbCssXIpjfwN
	 I8edxqvpRN7wyfe48eBFzwKjC0khhH8sUwkoFTyN/sjDlhY6Mn5YxDKjDjKKhxmKVq
	 Drx3wq0oaByHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23CCC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692663369.10102.15086418443331658357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae234ac86725c3aeaca35b942aa0a8febc11fac16c091befd94596bb64c93639
Date: Mon, 17 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786926633
