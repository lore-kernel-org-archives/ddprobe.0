Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C94542AA9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791691234; cv=none; b=qhS9fNFLC22bRdL6ZrU4v6iGNrAAQ8XOkf9YuMJPjKXC8+QASMEVq0UiHfO+KuMvIOw+FhgyICarlnX/o+yFaEyI8xdz+gWobIObKuy10w01J/c3kvF64/hQqJrFnzIx/DKPuoiG9Fkdz3VnMJTAQWIarCwqB0OAyjLHj01EPa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791691234; c=relaxed/simple;
	bh=olCQFGgH33gFFyIBLue9FW805LZJjoPa5f4qhWcEIsU=;
	h=To:Subject:From:Message-Id:Date; b=pSCfYb9ynbKHK/oBiunLDVY4MtToXthAxNfutKPqR9TaflzeUg2WDGrUfEnOkGSPHaRULpfdRWL6T/l2bnIsV5Rg6w4Cb5z4yCtWNKbAa6I5qym9DtfCi/ybVQNdFXvlqZ0CR6T8BllKKAQzscsGx54202L+XzazIHCHsnzRu7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCQ0mGFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCQ0mGFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49B7C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791691233;
	bh=olCQFGgH33gFFyIBLue9FW805LZJjoPa5f4qhWcEIsU=;
	h=To:Subject:From:Date:From;
	b=XCQ0mGFBIAUkD8+PFNP9haB5ET73+nXo8ulPkEfsV6rIWs2ebfWmUU2v2TJ47l4BU
	 a5T4HMDeYbGmppBzrdRQhpEtB9ME3IxVWrcMxxq+cGtRpqxm5Z8jPwq/aeRlWWXjW9
	 8X0p7t3XIwoEwx5eDrZ+qkKDusMXGVNxm0BUM+kGSA21cb6TsDUOwrgmhTQRqA50Bm
	 DowcqLRnvL7l4GmkXGI/WfoKLF0DZNTWN0Uf8R2KP2f5DOlpTSA3V/tUc4+wHoyh39
	 SB3KSQD5bCLYiROVUXIWhs9l7RTUKFnWMy/g7LTW+cX68IRGm9NxwgvwIwXAakoMm+
	 dxdulj6oM5PdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA13CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169123369.9267.291351842289154785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f2ef6e6b7cc546abe81f70cab694a352aa2ee13df714f5650f3ec125383d36
Date: Sun, 11 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791691233
