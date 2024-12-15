Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE94198837
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734261354; cv=none; b=Qp4oFwN8Tt96x7R2hYugKVGws6f8zi+RbJi3Ba3XFa67AH7MKhQU6fl3dyWSqDFnxMX5HWqID4TQZa1jKrBsSW6cgw5UtIpEMVVROUM17BAYRRDdcoWS6kYxtKguZwif6bmu/3Mwgs6fVgNdftDCiAgBrN9RDybJ8q5ymXew0uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734261354; c=relaxed/simple;
	bh=9lAtXSB0PC2qu3o6V4EkqTVT6bNTixocvrJU3W4KG5o=;
	h=To:Subject:From:Message-Id:Date; b=q0vndXO80Hn2zxqClpM/bmMrU36GYySQ8Kkl4Eeh+DzCdVq72saXSyvOD2po2OC+O8p2n1NDBVgdzZnGjuJH/BIE32dMEExmrp6ug6R2yIKNs1Vq2Wph9RLx45iYlaZD5EB+y5WYCeNTwTcHK2iqfG+p9wtLlj4tms49z+8/UH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duIWWbaq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duIWWbaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA8CC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734261353;
	bh=9lAtXSB0PC2qu3o6V4EkqTVT6bNTixocvrJU3W4KG5o=;
	h=To:Subject:From:Date:From;
	b=duIWWbaq8Fj8siXhvQMyb+++Ko9Psdmv0O6pHiuWN8l5zYjr4T9hwSs06whO4D5qI
	 PnxbAJQejr8c/Sp7Vi3YXu0hjeUAmHCoi79ZgLwJcjsrmXGD9yPF+eOpPSH8Jwqs/E
	 h/Vitf9+/dYnjcsNSxOF2dGr0XKH5wpJou8giejcKhd0v2UGYviJZQqUXaiIUwfWUS
	 8cspqsLo5o5bPpqBnOQOzx+zeAf8i3/Rfxgc7HcPux29aAJvTP9Ycr7xfmzIx7U9j9
	 VSH+03u/WsYoVIbhv9IM/jlOirkN1gZFE19JMjnnQCNfvckm0ucgmVniUpRlPQ2WCu
	 V99dKzBRgXU2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98897E7717F
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173426135359.13688.11537101796667797354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ee8d75ac5c557f45b2109aecef0349ecf9070e4292bd48ee006b0e9510c7ce
Date: Sun, 15 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734261353
