Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB71EACE
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729404954; cv=none; b=NcWgqP8lo1V2rgVCqnfjE1XHJhnpwYQf+IQ2E+JNRMvJWnBU+175lmXthgVz9PljpYIlzVabut1e1M96kN59DTlvZhCSaUXR1tviP2We9X0FB3hQcBUQhhvGCeFvUYtQHuJb6QMv5S/QHtSkmPxT883zcO9Q6rIPPAedlizng4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729404954; c=relaxed/simple;
	bh=/Mq43vxaFxLzuSHbWn4fZ7oUANNhulEXGXDyvcgVxe8=;
	h=To:Subject:From:Message-Id:Date; b=P7rdMdpLgKgeB+0w2RBzCDfoq66G6Oom5WYFJrPo2enMiSudyD43nPez6lWmLFKkUlinE8oWIckPpIvx9nF7jhPUKxn6yZSkgMfrDUQE/yB5BlRmj7CZQ+rjrWFHIgXFVgqWwJhIXu0SAfO8FVtLiUUIFqr5a0vThtx474xEJp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMZD9P3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMZD9P3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFD4C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729404953;
	bh=/Mq43vxaFxLzuSHbWn4fZ7oUANNhulEXGXDyvcgVxe8=;
	h=To:Subject:From:Date:From;
	b=XMZD9P3/8/w2NPS0quVIhJcBUz3UXX0R+Scduv4kjPQCHdgt/5imX128Ck3ZZChuA
	 IN8zcRniBU6A0R4+AVnuJRTg6zMzF+q06ynTwNLL6X4lKbTeXdB4x2G39OMH0DhQww
	 9ESUgbxxHCIMF2fwLbMrCfEvuWRGmATAqxdguLv1shT+nDiUXhd7gAJ5CeVRVUs2tU
	 wSQlkfTsHNJufdD3VXmC3AOXzVeBcHMVDpItKf7KTo9ZlhJJwXMjAkv631WofhqcgO
	 jfHCBH8+J3veT1++cN7ZfiRET1JcH+6X86up1coTDLNYCUnNrDwyynbgMd6n76veJa
	 1k8QWyaHcu8hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F72D3C927
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172940495358.5999.279263361763888280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a10b2b0aef48f783b88aef3ef54339ee25a5b77fa292a13ef550a7ed00a030
Date: Sun, 20 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729404953
