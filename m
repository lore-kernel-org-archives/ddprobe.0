Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E66D1AC88B
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723719954; cv=none; b=tRILU1Wi/R0TPjc7razUfIzTJihLFBI/2Gz4ymVU/wsrdPkUrtJ+ym70VML3sEGsps/isYosq2IaaUm5IPw48/mBN2a85ObDoULHuFdKbasp8NEh0/XpKW/Vt0w6EPbhWmBBaKXVoDyQLAEcrwhLBJnQSi24pjBU/JsS2hKtb14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723719954; c=relaxed/simple;
	bh=V4nZSlcFvsS9xSO4QGbb9eS++Sdn8LTp9wWoM1xAPrk=;
	h=To:Subject:From:Message-Id:Date; b=cDF5ddUHO90yIig2J1C2x6KrHKc0Yjp4y048hLpcyATTLfVjG/Vun08JVZ8YsigJ0iAezm5l1HFgfTabwcUroWozAn36gCXqxXV2dotUUvzj9gDp/buta/DJM6Q/yeKdT5UGqlxxOS0yi3mQ7ZjDhkbaIie8SKSeR+PvVt3wkmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhQ0n8Af; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhQ0n8Af"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2FAC4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723719953;
	bh=V4nZSlcFvsS9xSO4QGbb9eS++Sdn8LTp9wWoM1xAPrk=;
	h=To:Subject:From:Date:From;
	b=FhQ0n8AfWXhkR1Bwvf+soge+761FcF4j0JpsCn3CTH2C6O5EoxGdS3pYazjKGhQ77
	 6xSas5CeDzUCjsOoHsFVFc6IcSfKTR8UfTVDkUtqbHfa4+RBVMkIQ6lR1tsJc4Am6X
	 ixF3BQNne9k40H8LsWdjXDbWnQymzUh2hgmNHzaq+o17ktoy3oPuqLwA5ju+vaP7Ql
	 4STs3U7SOXY4yYgN0mg73ul7BP7Fbv5njFz+j6GbYGglIdaWkDxCgJcoyHttEgI+2B
	 8tUG0Xl/IMH5ebNkXNUBcKuh/YR6qv8Eyq+T4t4irq+gm80UNLLXj18xxuN2dLwen9
	 lbivgZyif6JVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96200C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172371995360.15031.12339994089694715044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67a51995310debb943cd6bc6820ca050b8cad8d0a0cdc054a37db70382a7dda
Date: Thu, 15 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723719953
