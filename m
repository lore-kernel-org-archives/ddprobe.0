Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE122E1F06
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776418654; cv=none; b=VkwhBppbtSjCCbJv/qgxBCx+gHBDcMrhtTxptUmfjxcUBJoMJ2IdLdIM3W7760axR8ZY3FKXRZBde26r2O1u7eUAM1BooKzmwmqRUri2bcZ1NfScEHPg+eS0faDT33eHGC7tb8Ez1Srf+12o+eKS+RL3DjMSgnlbgwa9C+VHn8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776418654; c=relaxed/simple;
	bh=5IM2J7HacmmP1XN4fuRt0E854+x4cn7vLKznWOBFeIM=;
	h=To:Subject:From:Message-Id:Date; b=nQvRjgi0oXJlkjTwQqOX9njZ+ZWrOsri7GhkYoJ3GfmMnK/MV6NH7S1g+gOngc3Xkm1n3Ljme/6llCPF2QoeXZtpDQ/jQjI2v+XchqoM0XAUko6C8e8f41Dlhlqz9RflULWvjP7JsNuOqkfY/6aOHNSnlNotowoYPocjMIdWBSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhamGI0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhamGI0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75CFC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776418653;
	bh=5IM2J7HacmmP1XN4fuRt0E854+x4cn7vLKznWOBFeIM=;
	h=To:Subject:From:Date:From;
	b=rhamGI0ZgxYlgUtS8ULtDn2S0UIjD4HMWt1jgD2vhepDbi7PuJtPBsskk6EdpgjIH
	 NW5wBOSGTpKy03sZ7OiZBdBJSkTSs750Yi7plmbcmaIqeUiQc2qYiQXeEPq/7JzwEO
	 QS4McASgjqEtxKe8ChilxEMx50pVx1sPxbF61+bf7pJlHCWsMOwa8nlSXMoSejlDdJ
	 S8te/MD2e7wbHcybvFeRciH3gbrKKEvLntiBoQUfc6nZw1l7m7grEQhpnlyIAmJuQD
	 hQM8A4lZm8HZhjdeF8+W1bWZjUe2yrxNYFQ9kVRZCA8tz8t5UCG69ITC98s8SwtFGY
	 aMPvv4Iwzs2qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9081F43689
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641865368.9865.16180780043368619793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088290ab1f7bc7389275d8b2bf4207bd013881386eeeca998ffef326ea3ae788
Date: Fri, 17 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776418653
