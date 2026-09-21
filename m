Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181A335676A
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790033435; cv=none; b=ZmOJij1agPFsTxeHLbS+eYt0/LZss9pZG06KKftZGnUclpZDpbWpNGGgl1CQjOMWveAKY/YaozzrJhGnRCCXpQfEiqDGD8rFSNNGBIz9iY5z21lnRGZZ35lpzBYiypB3FO52jNer7bAE0q3eCxQzZTqYOs3zlziCIMJQj7u6U18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790033435; c=relaxed/simple;
	bh=h8pcQwM4VpcFkTrbTXmhtLj6E7a7OUgA9BfshnSB3mQ=;
	h=To:Subject:From:Message-Id:Date; b=p7YWNaAKAzx3+4MKzki44BJiORhG7ofxs5hnjdUKJb/zdBZzsijROCLrR1txcAwq40YbfzXV1MQEaZNGq1b481a1Jei+yAd4v8pwc5Fo0jS4DjkR6YN9VMV8X8OWcbcKDsefMXDTMMcrigaew2CG5yyisuHZsJrRWs5kinwjYW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbclA+Ap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbclA+Ap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E2ABC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790033434;
	bh=h8pcQwM4VpcFkTrbTXmhtLj6E7a7OUgA9BfshnSB3mQ=;
	h=To:Subject:From:Date:From;
	b=bbclA+Ap6+b0BScMUg6+Jf9d1IuPI9zzUZWlie59EAY0K8IFIHh9HDBem50zdCUCh
	 bsM1u1zqHpWCliwUOsV/W0XUkz7y5yjJDp8hwaojdX2fhLjpE64H/k3NQQNzXli9mr
	 URRO/fsvw3zAjAMbFDMvtz87gAycj6mB4VoUwHRreGLpeSkZvOh6NatVAvPddfueLu
	 ZvWHJ4A0pKeixv/CQxpq+N9YCKjxk6Ga38guRFL+HN7cJh/bDtwUGElOm11z4UC/Ik
	 iRyIjxzF9rGONYTI9d4pExiTyMz9HBTI3Z1TVJOogSa4ZU3DFP6EkHpZ1SN+ViLG7d
	 L8ZRtBR/52K0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C955EC982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003343379.4097.4963676203521326447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400136b432c0c33bf20c7df6b2f4da20a2c86801fa74e0641de6fd4c84f45912
Date: Mon, 21 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790033433
