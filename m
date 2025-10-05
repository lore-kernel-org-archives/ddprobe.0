Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D33AAD51
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759625994; cv=none; b=EdDs36t/S1KSOVkM0sGpckc9DWmyEusyyevp4OdNMo2Onjye+fTdEPNwkDwJLu8ro8LGDwd9nbdnr2nvZtk6fEM68dJyU2wNCM/Qac4BaEN0OFJxLWg/ujUYIG/G1MfhGwTf+ohFhYWgdZq7grjlzFJj2RROtK5wR3Y9uyFA1KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759625994; c=relaxed/simple;
	bh=/j58xd6kaAqLN/WY/oj9CQN6ANbYTw8SDFEUx0K7EpA=;
	h=To:Subject:From:Message-Id:Date; b=SX+69IZ0vGHSZeOma+uOawwMPt/ngHDYe1+jWYpfWbdiJL1dpB46ZHqEy3it2khPsxnKEgfCBfYK18wknSVLA6yJqsdBJPJ8za/nmCnPAT1rPdXMH+8WYEBRsycMMb9LU0xUpSPGMT79CG020iGIqVYuCli4I54CBVZ0SI8487U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoC+j+wJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoC+j+wJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60C1C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759625993;
	bh=/j58xd6kaAqLN/WY/oj9CQN6ANbYTw8SDFEUx0K7EpA=;
	h=To:Subject:From:Date:From;
	b=aoC+j+wJf9N75ExFfRDJFfHFDWfxC9hXayFj+UprD/apyPsiykQVSVxgPsZHSL1kO
	 HU8OFXIyiO/9neUd2VNIqU4rQcgOtZiweV1wZcbU6MEd6lizuLzZfVJOpXfUTcPQBe
	 2VBP6Vvs4X+Q4vLBo8r1YfAvVIBE8vjXA7oyVv4Wroz41WaHlDjXIBXpTTHU5nFGZt
	 l/8zAuctoNNbw781SW/qpUcLpsX65iYPteIyM8c+Wocw7QcQjYhX70krXOtWDRUm/a
	 5ZBEco01/l8y+hWRxUhfoE0KyF/t0T4bZH5oxDIcHak0IJuGbJLgunncIYhrQLMSg9
	 ggkGrof0SDcwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9164BCAC5B0
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962599357.26819.1337875321795172145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7acd0e0d42ab8e0f3ad12316318c3a1020654c22ec83d63b6dc14086b755f86a
Date: Sun, 05 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759625993
