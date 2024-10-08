Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B07318C937
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728386154; cv=none; b=meJJO5l6w1kfcH/RwtTgKZvgBSrLu4flJPT3/OXX6Bnq34vd3hqguAfmwPvLAI8JoPQLw2yI43NYPqlacacdkmFCRp3ILBhhbFMXSfXZ9yC88MHRNUxehLVZXGHG+TBdVvLifVmkDsZF3fJqyQU6yzw5zS3We0mBwJF3TxBvcZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728386154; c=relaxed/simple;
	bh=HEEqy3z4ID++e/GVzYp4e+Ir2R4gw99H4JWkRRfv0/4=;
	h=To:Subject:From:Message-Id:Date; b=IbAyOev7w/+FYuoK5fUaFUJ0o7iJPCF8rLdvle78Cexk4jLnC0g0VYYqhHgPlnYWEsKrQwsWbhsvhLHOzGxZXENtIIQ9vOdiCfYYXh7pkdyT3qmrkmBbY+1nFguZwVMB2LD+e/ZSgOUrujUC6K3QFJrfWCCI5GnOjbVM1B9lxl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rD9jSjH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rD9jSjH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA971C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728386153;
	bh=HEEqy3z4ID++e/GVzYp4e+Ir2R4gw99H4JWkRRfv0/4=;
	h=To:Subject:From:Date:From;
	b=rD9jSjH6GTRxkDJtdcfkUrQATeqVdpVAMkAzWJVOSfVxebmF/994Nrr3DAPyEGKSH
	 JYuSThmhZXP3PNHGIywqM/mRIBcikAxpxCngCMB2GHZEmFvswLQmzU9KOPXxxhTcEu
	 BnpCsJErxg2pRP4sjhLQGpUERm9kcfuU4C8mZa/sh+t9+LLhQxNeuDPKVHVwCmSJ3k
	 hSZ+h2ZSXjF31qoVfmksLjFoKoXOqTIBhrdz8IhkB4zr5HOJksnsljTQrI4r7Oa4XN
	 OhJEoJSPGQGNgiq2BE132E0/S2V8gA/t2xFaFBB+0wqMnAU6nKPutkwJAkegvMuttC
	 hZ4PUBnAjbplg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3AACEF151
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172838615360.5796.4712252629539200688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788c45a5cb5da1059af20974868ad3e0df87d632d268451a77ef0ab5d3c3832f
Date: Tue, 08 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728386153
