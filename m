Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D402E11D0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749854994; cv=none; b=QgPIfUTZbrozOF8uz9ad2r6z/tF60Af0wtoP1ghNK84snt9vcbAN4LARxAsG7xH/X19gDfD9xCbofF6QtKfkwjHFr/SW5otULpfg2ulkKIJDy/qSPk3PUGN9fukEMCWm2NNO5h+y7F7/ewE4aEY4t8bP1b3dJJgv0efGaS2YBR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749854994; c=relaxed/simple;
	bh=EVzZxgoSLLKIONSVMe6TFhejZN2FMKybsRAIqM92Atk=;
	h=To:Subject:From:Message-Id:Date; b=aDlLNKGCL0MbbzSOKBw/C+FGuUr/hn4LfSsI2Dn38jk79El8KQaO8vMy+HcG6Y1LZxUk/bAxpUJW0Mfj8Pn5uD7TzgjDhmqwLUoDVwu0qiJkRxUCPEqXczEE+hOpI5O0xyaN6kaJ/IuKmj3gTcQ5LTfcZAhyV/ePHWF50UNGjUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7KKS/qj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7KKS/qj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B3EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749854993;
	bh=EVzZxgoSLLKIONSVMe6TFhejZN2FMKybsRAIqM92Atk=;
	h=To:Subject:From:Date:From;
	b=L7KKS/qjLJuXk1gLDxWoGDNe+/MP6CT23uxXFtnwJiL0N8RcUQseefRvuXpAPA0A3
	 K41A1o1e9cD2+qnW7dzl5KIZpBZTMfGOYTErMsSjIKWVuG0D11JQNFlBrJtFZrCOzo
	 /nSOeOWWemJiy43o9YtHyhgXFffwM1BpeMEmX2NnxVNq9+hgpjlT7wQiy6RxhR4IKD
	 x0KQCASK2eZhnEfzuxDWU0exiyKt0Vgxc4YwR89S1PyWTqL4mgM218aLz9yNwvTB9E
	 eOwZKwSUh2XZd6jZmNRL8xc/ZG99L786JnHYaexAnrvg4ML4DSIA49+t9XlRq1AF6M
	 /y7eO6bBHlu0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC1EC71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985499358.32617.11727761103101462085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b091ae5d43b9b6ba7aff218658e1586df12bd5bf9eb2bf76ebfd670c78a8127
Date: Fri, 13 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749854993
