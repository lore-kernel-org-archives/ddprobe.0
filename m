Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B5250095F
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768025034; cv=none; b=riSbAER7xx61lLrmTRDqaHprMl97mEBz0l+olfzFTmV/Sol00n5MLy+mzSa3iVA4GYJcVQAFz8IZMrL2jKzUhnfUrsMI0ROiYrOSG411FD3ZuzkLlnm6m/2dVbr3Q/wPYKO5YmNMsC6MsTfXZkPs39nV4mu4o4BvycjSiiyIeD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768025034; c=relaxed/simple;
	bh=9Np2hPonzY7tDJTZtFptC3uLcBzhrZ+92A2kvp491rw=;
	h=To:Subject:From:Message-Id:Date; b=i+8ahAf6SupEUdR3KLLwjxoAcJVQMOBoc42LLHo1TF1pJ9Coi/38YTr5K3oStxozJFUl1EwCQl754qy5owCpyc2SmPH7ZYbxcNNeGc8UgMOlLNFggLYeI4PF8bKDbpJtnSXxlhtK0npiheMpltYDhtQwqbwAvrpdL/N2RctTYO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lP24rIll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lP24rIll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2576C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768025033;
	bh=9Np2hPonzY7tDJTZtFptC3uLcBzhrZ+92A2kvp491rw=;
	h=To:Subject:From:Date:From;
	b=lP24rIllnVZ+TK14jC+jwxPdXY7E8LpY2NoXHeQy2DMBbosRFQebFxozEolJLbYH2
	 4CGTKT3ZDco9mnX9M21XMroYIyxv+mRQ/Ui0M7sfR9kuWNTUSx314R8SCg9vGt90Uf
	 8Xp+XE4tEcPy+Sz5ucK17yfzQw6RwZVyA3m5KnCP500pcjRaY1yZ1Nvw1C8JX4yJkY
	 uoRG0NpmOJSgDEN9zYXaqhfbpB1w4jjF50hADU5isQyKHNUHGp5ruM/ov8E7qSB6wJ
	 YpTcZ2lkA38g1dsFTd0NL79uoB/Dh1y3Aw3n3MOl6XDNeWmAZ9bnurKOjaDl8DlJLm
	 qotOAgaF/LyRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E21D277D1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802503359.1835.13208401242511431621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd3a09dbe9a767a0838a7a3e7e5857ce023a27e9ef2b59738aef5edd7daf7a2e
Date: Sat, 10 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768025033
