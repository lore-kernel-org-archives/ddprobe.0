Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E2EE56A
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778632234; cv=none; b=AY/DJRlYclHYBKGy7dqrPm40oakuJ19n53xV7JaMUqBncD/PXefzRsCuBwPIKmtVxJfckhsbM7YVQhUpah9qLP/ub6znDXizUVx5AQyvtP8gMz6HbgOo1Kv7VGVVv1IYlt8i5otB+J+u28ZdWL2IJFGTvePzXPQb3E7g7JivKYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778632234; c=relaxed/simple;
	bh=LJZT/Y5UlNrvTXJlZyyZt0g7vqbiv7BjAHX3P0Lw0EE=;
	h=To:Subject:From:Message-Id:Date; b=C86xEAVLEN5+3C2oWRFXT79PjDa0110FWXmC4ufYmkNLGud4HL3Eu5CcRUAamoBcqluW1jv0EGQ4wru2l3gtKhcY+etByaT3J6k8XHXeDgPeMLoYhbt83JuiqAZ+br6FbLCwRZ+IKwPwhIXWxpB6A828AaCl/2jQ6GvXGZOgwBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqT0tlpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqT0tlpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97F3C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778632233;
	bh=LJZT/Y5UlNrvTXJlZyyZt0g7vqbiv7BjAHX3P0Lw0EE=;
	h=To:Subject:From:Date:From;
	b=gqT0tlpYnF/RI/noSxuIOic9ViRI22h2IWBt6uKBZxk42JAB+hlXwgaIpMi63ys3F
	 Jq/WCKarPHV7zAdoUs8N+jf2i4ccLiu9KmxpzXi6aD+YgPR/vmRR6WCGi9hyuGqW6z
	 6Q5gMX58akZF6qUNYGqcf1pkhTuDEXRE3gUxbIOmnUiCaNqF9bh4DPHfI3xVPXhVgU
	 9xKP/nFP2UHagCPrIldtT/ueAlByoldnVJHD/jTzgLfyuT+aMxzQIt7xso6d0+SvIp
	 F4vbKL9d2W4rpRpXtinlpeEymmeYamvhJgI4+qaOdidZ9P/wHEyjGo7ish7WTUJzm+
	 dL6CGudmvRatw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB15FCD343F
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863223369.2020.11611376357669515113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce4ce158983de459f4dc62da9441fb812dd72def61bff0f33d9d78c30eab8ff
Date: Wed, 13 May 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778632233
