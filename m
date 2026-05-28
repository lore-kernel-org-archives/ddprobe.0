Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90F9131A807
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779950554; cv=none; b=NejFApErpEOhI7LlQLP8KaajljrKaMnQJIKb7K7b1zVgTJaYTCPEA1GepGN1PnmvzDBUHafsIb/h5XEXu4y7/Ac1EX3CtjHnglq+FiCqUareCjTOfi8khimofhwt+n/jaxQKe0d/dDjpMWeW7yry7H2jjw6RFO0ELMAALkc2WRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779950554; c=relaxed/simple;
	bh=SLeKIbOkbu9UdOUdrWu6CEKZQZ7cl1JXaNQZtyOO4qg=;
	h=To:Subject:From:Message-Id:Date; b=MXx418/O5/3HX8q7xIkdy3UK3PXL8ClkLJiAwUineCr9CZ/xQziIebRLdxZQyvTDlHl+zCftOvMR5PLUL1AEsH3L8k8t3S0jaA9m9y/S+puV4JL/mU4S2E7pvxRJQmUwvz7qT4/CEYQt9Ybszn2/HAx/0vi7AXU9e6y/rERqNCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qh8mLcix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qh8mLcix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF776C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779950553;
	bh=SLeKIbOkbu9UdOUdrWu6CEKZQZ7cl1JXaNQZtyOO4qg=;
	h=To:Subject:From:Date:From;
	b=Qh8mLcixNGnDrRysJQKxi7Iu3+yLIU4cOxGkTfItXVNZPavwuPz0LtECgqti5VOJ5
	 se9BYee5O5St2oHcUCPO16d8wm+zK3fG/4EkumhtvuFXuD9ljiBefuKVZFkmUQFKky
	 AmyHL2TTgeSBGFEWUhoH54k+a27KIZ3Q9Fyy699U8IbtBQuDlNspnDfdyOp1a2jZqy
	 TUpqSFYFQMGx9YjbuqereJbrJ8NpxLWBxKNYiA1hABO8itULDXWJxnjdii3mRkvuUj
	 Q/48r1mIf9ElHFuIPDTk+X20dOzl23gEPDr+rn0KxigreSuBEzM7Rc/r2lLCTrmXi9
	 YxLc1GymuNp1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BD9CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995055368.26777.8649284860531191222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a8db0460abbca7baf84a1574fb82194de56377398279f4a14ece848c805221
Date: Thu, 28 May 2026 06:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779950553
