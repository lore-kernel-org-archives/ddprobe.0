Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDD1179A3
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767278034; cv=none; b=kfb2dc3SY1ZY3YhoFL517Kr9hg0hmubERmwuH1QNcY0QTx30lJKOM8SXYnAcv1It+ldw//7dM/aN73IaVnZYap8CQ7vdXAVk5TBYPOT/lkTE1Zkrn1kYsSiyn19wC6KHJff/8vztm772PRB0wlA+q8vBBTbxJTeUUJ6qKzF98rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767278034; c=relaxed/simple;
	bh=ULaomPgPpxsBavhrIsBk7StpKX4SKiH3HsBDXwxtwg4=;
	h=To:Subject:From:Message-Id:Date; b=WYqVNRlcwnlhsVPam2ezsAzXqTy/syKUQdC1fv41Ok7k519BQJO7AHbkP81bO8AmcDmfkRJDEyeoNDWYRF8JfRHgV+gfbGNYP2drtbU6d1ymQa4j7G7XVRQ0DpzNAwzWavArJUNUUVYRR3GwJyTfaFo8hCKZaq9UX4JR+DKpL6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJO2QWct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJO2QWct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CA2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767278033;
	bh=ULaomPgPpxsBavhrIsBk7StpKX4SKiH3HsBDXwxtwg4=;
	h=To:Subject:From:Date:From;
	b=WJO2QWct8ykwCI1LMUXvLJh4gd0COcOErICQ1TQ/oXLEABbGfu94xpzKAFMJJNUio
	 LdCqFobZAm/Qkri1PFf9cXNY4tMpcP2vvNEOr9HjfVfQXromICuHGOZIrIzt5Gmsek
	 PpGY4HnflgOnUG12NObo+D64CNaR1yHQ13H9knFmnKMPF+yyRteoxoOMcxmfi/DZwA
	 mnIC6XSznMc/81LtDFcZK8DD26IyngXjObesQsPhq2MWRE1Jmx28AI49tVhGs7zC51
	 7jpQ8OjDE0kQvyspeCH5/aTyuPvyXm/vX3W8osF3FoDOcE2OJXztZOqXerzdeV8V97
	 zz7GjcGMyMs2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95206EED610
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727803357.1015.16361976898095935255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62521238922e69d22af626d337e3f7a5439f1291c362e70e5c6ac884444f24a0
Date: Thu, 01 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767278033
