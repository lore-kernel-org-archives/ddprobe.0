Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCE3233920
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784556514; cv=none; b=q3DLqArbLdqlzjNLxcDe8gIzI5HaPxGPm/8NhFko3SOB6yyuvMR8EGFehCs25e0FQW3rOR3xLfulXGQL4yBYq06J8ilFR9XE+po9ML0Cj36J/4WU33naF8T1MMwqBdXpQI7UYrtnQI2qkOCyry1lKkJkhY50lGW0MVwmJUY2VgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784556514; c=relaxed/simple;
	bh=XXTM7HSswnGEDMHk+E9q214A3E8MhYeQrSXGQw6jem0=;
	h=To:Subject:From:Message-Id:Date; b=YFLPB5D4bVQLgCrKpuHvi54JvIBXHtGSfs7ks+vFuQgu93wp7cT7RajvmUIWdBCuxW1uH4oRISMJvuX9/4hR9hRocieFDZI1QsaPZYMVwqfH8SJZd53LcJ5JabVymTB+JqTPk7WeSM/zPW6vgfsRThQnFYZ3K56eN/qT3iIFtfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Drq0KbXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Drq0KbXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCCBC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784556513;
	bh=XXTM7HSswnGEDMHk+E9q214A3E8MhYeQrSXGQw6jem0=;
	h=To:Subject:From:Date:From;
	b=Drq0KbXNJ2FB89rIFz1cNGem8Db8MrztssbjqHWNDrmXpZq0QMVcyeD2PH/8JiBN8
	 VJ5TtmHgB2tuDxSq/AQdbXcO+XMQi/xgbq6rWhrm5I7TYmBc6yCIUncvtXz/CuDDO1
	 3NyRc0T256ozTd43kTHYZLJnqnPmJYbh5Bb/D7sHGCry/yI6LnSq5kAgm0rI8Bju3I
	 AHVKtoAWZA8vXvnvB292iqstpuj65Sjdw9HsLBslxuFHdEj2IagEXx2u14PRj+EXg8
	 KadaXbOzFFdm19h/58hiZII8bBx8pZ03ZfpVqBEztu/Q+1JViMZqWa3grGlhgfiMxg
	 uQxhZr/mICqMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F92C4452A
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455651368.31873.9748452510067704734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507b5d43c39c1ac399f1769a8c03200350b6f1f6fe9eb662d90717dc3af9f88b
Date: Mon, 20 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784556513
