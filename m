Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A543382CB
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790960434; cv=none; b=HikivuwYXiVFoiiEtgzxoHQjv42lhkkJzaMtjcSKhOjCaHa0ZBho+KaCRN5ITymReEUrkySfbOhowdxrYCJkmJoXJwlOYzKjOm7m57UQ775F+C6D9Cb6RZ3RbmuifPJpOeODKGQOzKHET1eb209wtSiadJA+RG2ctL8M+EF7Xi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790960434; c=relaxed/simple;
	bh=AgJjZiKu+EDH14lEYZUrpTGYW+svNEfGY6eKlB34Swo=;
	h=To:Subject:From:Message-Id:Date; b=dVMabBx1RS4+uZlMbZINUeE238szZyhTj0G3XBa2PHRl0bxST2UW4XmFfXcWVXyhT9ZYdOTIJzTiSSI1KKXj/kqhVYBlHK0XJY9L7vdA8hJ7qUH0hhqoFbXGSrhr4oT9M2jAG36N8yFhW7XUrNg8ymV+FTmiwoCeAXpcLpoQjf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qecTlAV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qecTlAV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC09C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790960433;
	bh=AgJjZiKu+EDH14lEYZUrpTGYW+svNEfGY6eKlB34Swo=;
	h=To:Subject:From:Date:From;
	b=qecTlAV7m210xpdpTQxkGxFuM1r35YqG+S/631ZEvx47TzGAmH3n+ETaMVwC+6rwJ
	 d/44H9L9fuag5pU3/kvitmC0fIt8IrKbAYRdcxCcS4WyYiZ3wImV1sKsv8zcfsoaSW
	 Jvw5BGTG3GPmEihCL/vlb8AIirFHtPIJnBIadWtOgAfxCDv8zv8x8T4GKz4T76pUjm
	 Fd07891FSNeiMvXe2sa6SD9buy62yJmMkd4OK6aRuAv8mpRt2WQmV8d7kCzImrKAID
	 X7wiuAdogiha4Ul3kqqwqsVU8va0LbYs/XSe1yMtZ1bEzrqNbJ4haiDbRzOKV4WKqx
	 88ldbjZkl0Mmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D3CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096043368.21487.2699596573064063093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a922adc9aa9537b99884e53c97d520362ef70bfacb93ea83ca7e7922b58ba66
Date: Fri, 02 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790960433
