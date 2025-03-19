Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B44021A43B
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742421594; cv=none; b=Qd8LTRr8KavJatINu1HgA1F4Vhf+3IxatKxwZGHu6tzdr7xZss70R870IXmS4lFJTtzGe4yFjACHlk7ryZZCZ1Qd34ID7QqePbHnZ1GbaR50DnLUyz+1v3EgaoY1KdvtqOQZlUVNfQhLLQKs7f9Zn7OKxVkASwnCa4pGZiOQBDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742421594; c=relaxed/simple;
	bh=S1OmwJm8uiWkhEVeOUmoknge/CnVLjmhHbIUOf8u7mg=;
	h=To:Subject:From:Message-Id:Date; b=GjlRoZ8R11DfqPaiS7g97s0DMz9jVWoGDqd/NkG3ywHKs0me8YVEINL0oXxGYgdLFBP1AmlNJiQhy4FZ9kvxSvKS5f8bR2CY+s1rQnOAyP8x1W8ZBFR09MV58EDJe025ZzgiHCJgubcav9YYoIsxyduk2mo9YgH53QeCvzapMhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDhknoji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDhknoji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47B3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742421593;
	bh=S1OmwJm8uiWkhEVeOUmoknge/CnVLjmhHbIUOf8u7mg=;
	h=To:Subject:From:Date:From;
	b=gDhknojiy/0+bRxZ0kCNZMFn7+d4ECycVU1kdCtbU6Omf1WRrny6EwnPZMz6JQEhE
	 4p7qwRmxUPSLrA2cH+MbS/9wxeaOHAQAwJmLKjT8vcrFBxkhc/0WlppC8BDXP8QYsw
	 IqhxkJBHTo0+0Q6pZp05udngwf8xVnUp/LShwGyCple7IvIuaRMbDWtog/VrhcLqVN
	 2c+WFKztIdVYDqdl43PS1fh/cNRB5k2uM4JbTerOzI9b3dbpKrScL21Bv+uqDgXIWc
	 StqfEjpf+B2NWmYB4o8ICI20KqZtGqMt6k2zMbA16qVP2axSwY3yab6kBR+u1MzeDX
	 JFVB6VI0GZu9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0707C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242159371.25418.16415451350530578554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cfc091879a113ef823bc7d147bc56fa570cd9f80cc98e824026bc05fccc1590
Date: Wed, 19 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742421593
