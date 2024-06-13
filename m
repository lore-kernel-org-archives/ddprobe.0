Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2DC2F50
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 19:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718306903; cv=none; b=BqmubAlK/NRMcFB2gJhbI+SR2y92Id6gw9Cc4U8KiuHv0KjhdPteJGJpyak2Vla9Ehk0pPXD4HtXtfFgUNi9IPyrTWp4VKz84sHhXB3UX2Fxb7iCWmaen0JhWHgXuG7f2Vvws+IJr+wqVAeqOdLePbndO3nKXWfc3TZVzuXOQJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718306903; c=relaxed/simple;
	bh=t6NCNmrCbt+aD8qSNwGx2LWmDpB6h5MARriltF0IyhE=;
	h=To:Subject:From:Message-Id:Date; b=DsSvsrDHSOR+U9yGX06fSNfMVMbrStlwhN+bHgnDWxZIf+OhQ2uucsGZt3MDEM9WEgDeexlsfuITP+jjCpHK3SO01gq9GV2gIX/9fLjc3I+TYjJs1yI1wNVGzBUDpWyyNfBVkoAXAJbR5ZIuD0EckHyXdweCBkTR5UkgFZHGzx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1+syo9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1+syo9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7111C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 19:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718306902;
	bh=t6NCNmrCbt+aD8qSNwGx2LWmDpB6h5MARriltF0IyhE=;
	h=To:Subject:From:Date:From;
	b=F1+syo9UY7TLUUSrn1kEJx5jMw2WSJFDUgrKbaQcQP6lQo6pPSl6eXXa77qVG8yob
	 Z2hcRTtLMTP5BIcpxlAaA9pFOcClNnlcVSTT2WwMTuHVwSf7K+EVrPyfvqxMfr2dJH
	 AM+GZsvw43RHe/P0Lw+wVUTlu71FQskkcNkgd65M0t86/v8HXmYGLEjeJA3IEyW8jM
	 ylEqEX0826s3RJrcWm4V48oLpxhDwICXdLLl4DXeyHGai7BoeZMDSk5elAow/bYFKf
	 V06DBZxY3xp8m8HiZvaTo7H+gOv203OWbcAcua3UmpbY6ve7vwchbGj+a1G7IMHBp8
	 nP+SzdzL/E7Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44B1C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 19:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171830690279.29892.9806391478599445353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23def264b4cf861d7a5916efc4c27c82933d665ab9ae8943e3eba0f229a0764
Date: Thu, 13 Jun 2024 19:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718306902
