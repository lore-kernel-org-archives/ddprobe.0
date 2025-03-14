Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B88B67F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741954734; cv=none; b=IkSzoIDWrGGLVuclZBng61kvSHPna6HIjMItlK/EmY/HsUuzW9flsZWNhNWJY9T+RZfufd9ylixj6KOtcKBhnLslGhRcQctzWbJC4eSi9kES6ZIp4yySuyDJmVf7hyB+EQoPfAMohAVJ1qpTVlqfQo75vHEe+jQ+QqFw5rXJGN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741954734; c=relaxed/simple;
	bh=DhNUl5nnbsmJNRc9+CkXyHcbb8Bq5MlOL++cRZPmEpo=;
	h=To:Subject:From:Message-Id:Date; b=kkwAi2BMIFDNS87/bHyluHA7KRLycudXSPfizKYJLTfr+gtITnrsamXcr6+CVZaGltSyiCKDmXr83/42Nk23IGXYVL9O4DaPXBfwc8NSQcwd+o+KpBZkk1tEpzFVQJVxxifhLL7KnYqRUhDCosUOYkQAPVT2+ZC8p12EU+o2hrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQuhEAnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQuhEAnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F60C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741954733;
	bh=DhNUl5nnbsmJNRc9+CkXyHcbb8Bq5MlOL++cRZPmEpo=;
	h=To:Subject:From:Date:From;
	b=IQuhEAnbTV1uRtvBiXacgoVGQ4VpgFSaaQ0ICRlkF3LBoahuPL6n2JuokUrn9MB+t
	 NV+ab6/LJoyCAEK0m+Rsq4pCnzJv5sLmUivvjSdZ7P+cB33hjISiiOX6rk9aFN7JLb
	 Q4O3lN5h51uLAtkP/wK/tqdysZY+JWr5/+mkHY+rIO/heirT+hw/EIIzAIvMq+0TC+
	 0CPeoo34MWYyLFDcOZ+sXkR2NV9jEQXL2ZvAKVtF2mWz7ScY29kD3MVWue0kQCUjsH
	 CCfxXh5iCAif7oazQL3CnD/kRiPgWyFuyGdXeX3N2sbBfGmEkvre0wilhOYInVSfI2
	 khCJC6Bfy80tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970F1C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195473360.23866.6142278097135399476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0794bde3da3428a071b003ab75209664690fc711f87f9130ab97c56dc06c08f
Date: Fri, 14 Mar 2025 12:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741954733
