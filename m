Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1458C14A60F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772955894; cv=none; b=eDmZPGv74z9AweINRxTPSNFmuRfQXu+iym5eVW70Jit58g3HzspLibu1LxgEOkqlhWB5fertL44bh6lRiBm2dvhKvLqQBhEJ5s0XM7y461YcS5Lm0gMiNqv3BSa+hp+Hz7wtw47xEZNOCl//TWTy/c+q5DsUaJYwr0xR+do8IBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772955894; c=relaxed/simple;
	bh=GGVaJow/trG7wpItNd0Q/VyvwMsT8SlDecwmS+kpaVA=;
	h=To:Subject:From:Message-Id:Date; b=ue0ksiqpOA/at2Ar/rK8i/Ada3WO3CTnmOPE1tnwzps7hyURetRpW/mXKBSip247waVBnvLZDY2ywtvqtfqTLSMaMu7xAc6ZhQi13O2izvdR3MrU/kWsb4DWnkG5ij1mf7Mu36O1XRuxt/QoYQ61BKjUqKj7TAys/7kroclC3kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s81M7p0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s81M7p0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EF7C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772955893;
	bh=GGVaJow/trG7wpItNd0Q/VyvwMsT8SlDecwmS+kpaVA=;
	h=To:Subject:From:Date:From;
	b=s81M7p0gbBE1cHO4rQgw2uTsljI8B72QcbHJ89Fh+44GAo5MwwUc+Z5rxzlaBgl64
	 F92w6MJc+FAgJHI61kdFld3093goZYz66Q6WTnJNtV6Ld994H+AVodjxRBysONhEJW
	 eTihRC/7KWcO+HQ5oQwHdduj4lO37qiQ5Slpr4di3+2DafbFqiO6QMco1p8XEEP1DZ
	 7DfFhUzWlBbg+hJgo+SgspJU7M9MnRxWn6M2cm4ykjRQN+pjY5RvQZC/D9MmCwN54/
	 KvKh9qy3gRJnSxZ2Rqxwg+IKZ1YJuUY3WKu62GTZmWwu1TgGvMs0ayNcb7DptLMbdL
	 6Qj9bhqu0nXfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96054F55137
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295589358.22906.12877379992749848203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e523a6d8cf909a238889f0b54e6763442010ca9a3aa199ef849af5fda9597017
Date: Sun, 08 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772955893
