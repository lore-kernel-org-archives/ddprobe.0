Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EC0158845
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 18:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715796143; cv=none; b=KqpZMug1PRwNw+lvNLrapcQMElNkT09DfCdUbb2u2T3DO1/Xbv+d5MsXwodwQYFZ86rChwI7s9f4dE5dR8SuPNeAY9QI4QAukr0UXs4CjbTkLJiZzmwhTcff0b5pxxF9cCAEwvZa9VxAVvZ15tYYhoZYj4OpwnEt+dFAYl9WLkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715796143; c=relaxed/simple;
	bh=iTurJYQmteDvHX/3aI/MwkbgaCoVFmHHgOdKKpLBXtU=;
	h=To:Subject:From:Message-Id:Date; b=TU6X/QRCzIS0G8gR8l2u3VHQ2hCCEBvjtQ1lAf6e+6PA8jrrD2tqbJElQl1y3PYlNYRwLNwn4kX7n0sDWLLSsaGuhrupURjmUuyGujUxGwbxb2+qhvu5uDwTkOfY1PaAOi/zGTOhs9S9nOQvgQwIdrfN0soyYBBsrQTP2gCygcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+dtPtxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+dtPtxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01F1C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 18:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715796142;
	bh=iTurJYQmteDvHX/3aI/MwkbgaCoVFmHHgOdKKpLBXtU=;
	h=To:Subject:From:Date:From;
	b=e+dtPtxLtdHnvpOxbhYRam+z/zMO0MxKV+5Q6MHyXQ3kKOCyQHoKKsqo0+VaR0eeB
	 fYf82P0ttOU0AhjvdlOcZ+QxuFej0GzGTBGcBAI/ElpKc5umdleAiH5sUdFuh+95ct
	 WfeyXrzfgYW3eqm2YAeIo8ZOuXd/YLiS/E4oEsw9l7n6tsYMPAx1oXTGJokF5+WfDg
	 6k2ZB2QymI9PtOX/A7X7BsE4zJl2Lx4IogBNhFGeGJi/Dx8EDLpvKcjUDRBSs/KcOx
	 mkMacK5tADlzxlOpx1Fk7vwpYZgnOU0/1xUAxiwhL/F8TmomsAoel+Qfe1VmsXOiQC
	 +K/z/ABPxa5cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6269C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 18:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171579614280.20862.9614197269227739072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f3b3ee8307f6b8f90a84c68f485a2e14bdf9960bd20880afd54270ebed3829
Date: Wed, 15 May 2024 18:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715796142
