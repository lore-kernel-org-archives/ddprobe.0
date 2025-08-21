Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26553393DD8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755812394; cv=none; b=pa0+N3z3HMCkhQCu2kkxqwvBoUAdULmmRrZIDLcikq/1e/vKo5yMs52DZC8NOfceHCfvMsbIf5OCRNGUnjByRZXbx1KC1vNU+SRJ4QOqBYfZipZTgmoK/oxV19FnqagXRM+xzWqn9ERxja0ucizuGJ9CBmWirQVx8eSnNK4vvVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755812394; c=relaxed/simple;
	bh=+LVdA94sI5EiUR9PiFx1s87gn+GmfSdFuWEucZa0rRg=;
	h=To:Subject:From:Message-Id:Date; b=SsrEfB9HCZRV0tMptWjS3j3osJCqcRtbIrmeiL9Rf3VDFjR/fA2Dhsqp1v8nZUaeP5m/u1QkuGU3yuuzvrR6iT571PnMkNBAaKZyYsldCHBgi2/rKMEsFz5athqVq/r9Fxo9MLUTATrJuG+MEwyx7CgICRx3xSOAjboiPmq4DOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZoPTHUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZoPTHUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A64C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755812393;
	bh=+LVdA94sI5EiUR9PiFx1s87gn+GmfSdFuWEucZa0rRg=;
	h=To:Subject:From:Date:From;
	b=JZoPTHUuNYBiEGyZmuC7maHaSYJ+kmLurBxADUXy+oowMuLml0xagPZgtobMZa/Yu
	 rPZsk5NDrrB5H1wp1dqcxpcy3o79+eZ+biEs3XO7OfkHVjW1dtjFbNR4WdNHji3nOT
	 dAi21TaUckC2WFJyQCm+nd4+94+Lbqfri5vJ9MkUfgNKYHpg4peJ8SG4mLUOG0O/v6
	 TjM5IyGKbRItbsu0oWTRRfM2hrbAm3yKHclu05Tn2AgoIRjPYXbfDLvBlcLl7QozoE
	 F/tD/0d0fVWRzkjYUeEpTY8cQRWmvLQdIViO1h2FjyRmC2RAtnhaVtJacDFDsPK3TJ
	 rWUPz7Kfczcvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC9ACA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581239357.29253.18225666602621652745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463d0deb6f81d64c2b97e4f57ac06345ef415f5858b1d4ab19817c85fa04c18c
Date: Thu, 21 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755812393
