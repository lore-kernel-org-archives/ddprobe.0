Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0243014BF92
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773829494; cv=none; b=D8xLMsVXTFE5GA9gaS8NTgSYO1U7ERWItpKv3nipGRsQ7lDvsv41U3LZuzV7plxQdQRG/Ky69dcNvhVz3BefBxGWLfey7sfSByKbBJyzhzUkHv0vej8H1aaqeSpdJk1fEujct2wuBv//hwiz27Sjdyvzs7Ut8hfJD228fNDK/e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773829494; c=relaxed/simple;
	bh=acFZMo6m2kYoFOPHX5RmUKrzKE8ZOT4YmmRFMBYi5lc=;
	h=To:Subject:From:Message-Id:Date; b=cCEMJbUC0TsiUd8DxFxKErL6r7HEVflESbbdZZf4gAH+8juQhgRYGiYJgI7poS+nNFNCDDq6m7QVNwRrgHd1CMX0+cj1PSxCkb3AHNpK0cdFDH4xDLLqcAmFU3hfxfVx+sZYU/1TsIIgybnY2xRkWulGU8VKzfHevl0hvi+G2ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqsj08Rr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqsj08Rr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC5FC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773829493;
	bh=acFZMo6m2kYoFOPHX5RmUKrzKE8ZOT4YmmRFMBYi5lc=;
	h=To:Subject:From:Date:From;
	b=jqsj08RrAU0tc7vtmpnRQKjBpYvzvWg05rwuI6vbLdyFTZK8yigqsCA16ZrUHHnek
	 FFJ9ddmz226DVvs5KLA4ZS9uUPVJFXzhmWx9hhGZ76LOp6k81N4QTM9sER42gbcgEo
	 pOARU8KdaLX7aa/h9qowwvuI9FUPfiL/vjDziAGe9hNA59vD7mk3WuWkpr/vVkhUBR
	 SWdlQMe1LOHtf9miTWFK2HOVXzYbC7sSlRaa4OUi4L0DRC3w59osqfjYVZ13JMk/K2
	 nXLm0Phd6RMlOpe2GloGYCfqtZw1ttefW3k3D25P1ZOKVaII96WXS6NiibCBLnpQ2y
	 +qpU26zNS0Clg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F112107BCF2
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382949357.8978.6089423287725947110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab92f1be6842c7957fcb2510b015d3b8a3b4fb17babdc82515b8afdd361311f3
Date: Wed, 18 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773829493
