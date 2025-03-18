Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6531D1DE4C9
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742279394; cv=none; b=LEIg2/T7BhwGac95b9YXtjtgajXAHsD066ZwAdZZJwq9EQpMrdZDQMLl9otNw3N4GTW63uAvkF6GQCquotXfXxWJQ6xHXykayn5WTiLnRC6oH2JBG4sQroWfWz1Bg5lS/5gLZlsebIyA9g0TQPs3iDreMfm8WFN4zhOADJvANL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742279394; c=relaxed/simple;
	bh=rt15W92GtBT0SehclTGZSfDdxA4gGFhA6gRodI7al3k=;
	h=To:Subject:From:Message-Id:Date; b=B5ior3NN8wpFxuF3bKlh2UwxEtwj6lM/fb9mUUy1FfXpFAHvlt7X+7ASwFm1Tmm/W6ePX6SH+b3ET31ydIfuhQrP3ccTp7juWUneOX6qY6AxqVIMmFM6/Uq1t6HIHzAcZOXEDt31x+fcWFJnNFDJ1bLP27dtWBIIRVdACzUkoxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQ1LEuj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQ1LEuj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5C4C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742279393;
	bh=rt15W92GtBT0SehclTGZSfDdxA4gGFhA6gRodI7al3k=;
	h=To:Subject:From:Date:From;
	b=ZQ1LEuj+XRTT5GYgSXCmwKXTeQSY3WlfO+lLv1a7ploEK+toCoYVddM7UABL0S5d0
	 HsZxgu07wuAI0h5zUjaXuiD+gGJ+7qt/Te1ThYLoBaWUfr4za9fgYise0toShK9Dt0
	 OERfNeFI+SoVoWD/aFN3sFrTfa3GUgO7Z/PhE0H520EvqM09F21QLp3fWCmsvmznEc
	 u3dLlvkNe+Y6+gCIBB9q8UyD4tR8UrAsWZB5nprZw97YIeBYY7NfCXxL1Q9vsjG+F6
	 MxI/oz0HMVA5xWYDzRfcygVw+b+Y4BF5JVlc65RjYSPdlkpDw6+4wdGwKRJ+TFpdGM
	 2KtzZ+UIke7PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B784FC28B28
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174227939373.8078.7234894338314753006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6bb039950201da86664f47f6d972166ba528dc1641fea1fa31fb6fd596c0036
Date: Tue, 18 Mar 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742279393
