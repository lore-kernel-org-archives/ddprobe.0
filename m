Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5176686358
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737892554; cv=none; b=T36TLic0g0Fv6Bkh1crFJdPLRCfvbWVPuMb16GDVeSUEMC7Z2f9naO9a1KW7lohUAVNQAxmmkuPonw4xPd/QqhfK7MYRqtmI4mp982uh+n7cJoT6ugjiJ+GqRIrZaYfjxGsRDqsvkNk6r451YHPn6XWeZHg9tWWUSkb2BIJd2IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737892554; c=relaxed/simple;
	bh=HxjEb6SG31SjVDNmK7DWIkAmH9GLs5PrIDmJhGJ+EYo=;
	h=To:Subject:From:Message-Id:Date; b=a8PVaTKdxybERpgw7Zriw8d1u2BtFmOaHmblxntB00Td5KocXThKnn0NFL/nK+PidzyYBYI1rIc2ieaW+SRmpqee6I4wTblU09rAFqsR8nBitRv+J1MvNr9iq+YfnTlNQmyrDykEFY8dpmHYkczL4hhhkSJtt/sQDV1XU59fB7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2R4e6JT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2R4e6JT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF98C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737892553;
	bh=HxjEb6SG31SjVDNmK7DWIkAmH9GLs5PrIDmJhGJ+EYo=;
	h=To:Subject:From:Date:From;
	b=g2R4e6JTfosrzCvfUX37mG7JNEpHtNc3OdmvSx0wDYp3VbAF2tq3bfgH2X3aJ4gbf
	 xDbwawtP3TwhqpRxaQOLQcgGNW1EWdLqS28OmT3QcfMXX0wAXkDlEpZxAR61/U17GD
	 3UAymsPwRgeuSLefaML7i690CZVeVY7NKhvijQ1KpGvjEUy1UB2yaCUiax1+/PWFLn
	 0B0mzcBT1ND8wsLfKIz2sU6sVMnzQoiwq3B4nbhlQGZblmKllCXEVDZXP+pIoRcfE5
	 A2Ln+ZSO3PRF/ilZay5MEl+ITjiXjlQaQtepnrq5p3vo0299I4gGe10CtNDatshSdP
	 xJvBGa1BvMEJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941C4C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173789255357.19243.16831004925066968737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a5d6625720b6ee9df940244933a9ffb6d7a5145be32cde9892d4671392bf4a
Date: Sun, 26 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737892553
