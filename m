Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133DDF9D6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736164554; cv=none; b=e/b0ADJjLCKsB9q8xesul2g+S+p/E6AhUtr2MDNotsKAm6jlL7zY/7N5n6mIOLHsKaQ3QV4ISmU76XUh2aWxsYmyBUMyqO5BJhEwcl8/+aG1v7ANyVesIzBcTH0G7ug9da1bGKbwd4UQq7qHqY0Annl7o0Vi4enqOYhK3h9Etm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736164554; c=relaxed/simple;
	bh=kfO4qnQwUvIMFpuxF3XjnKdztbdwwrcXnbTurN5jhng=;
	h=To:Subject:From:Message-Id:Date; b=CeOadTZcEu7QTzKstesG9Emwrr3X0cnHii63uGWUvSnDVY8fySNjOVQwgtM9amHyBKLRahkCYEWMayJRaCHHq8EYXVd2PbUqVaR1X7JcNu0Tt/yDf/w7fXrS4k6kz3WINl0ZOV882FnGp5XNL5dxpbczUni9TPcHIdN3w6cYEbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsT1CzNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsT1CzNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0679C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736164553;
	bh=kfO4qnQwUvIMFpuxF3XjnKdztbdwwrcXnbTurN5jhng=;
	h=To:Subject:From:Date:From;
	b=PsT1CzNIs0Xgq9Tlur2glEvix5ke/vviWQPL99WlKphBwuVExDL0digIAt3vKlGSf
	 hewyci7GZcZn/tSkwEeU3Na9CB9ZcWFgR/GnWCDGdZkZrqiVAILUheZTiinXJM55Jx
	 wZkca3O798ZF5Jz3oBWlGs+GigdI7czlGlvQuZts6qktAWfpsbPXyGCi2VYQ3meDPs
	 T8qBnh2CG9qKFBbB3audH4YCYb5LD40kPJNC+V1sBpfC+UP29yY/F+sUbb2Z3uuL9r
	 yeVOubSjC6zxypJo0FIqZ+6780qb61Y5h9JIzg0unlGFAO6vPdIJVlD0DaDwwgvrI9
	 QZIC1RZDNOmow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C2E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173616455358.8221.8962618189404118121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3460502c81e69638701ca2c5bfd3f2693bb372ebe029fc132ad1c3e03d3b441
Date: Mon, 06 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736164553
