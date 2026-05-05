Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B28527380A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778004454; cv=none; b=utrJ/KsD6UBaZkqqLLwiHHPMUJ6TBk2oI4n2cJ8VgtrevVfm8cM7gXxwN6pB1EP1xKrt8zmMedLqIwdXN6wbzUa3MQduKooRABhkNBlaM83dWiWPYVAhyFFjbKf9EiFtZ+E4CUqba3rsNJPGubO2GHl1kt4Dl9PQdN2C5gDVAZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778004454; c=relaxed/simple;
	bh=f7os2QuW3HSmTb3+ZOqkzIwTlS5sn1JrY3lUTUCRbws=;
	h=To:Subject:From:Message-Id:Date; b=HUKGjEt2maBYWgiO8Wvl4t2dkhEt3OQwZO3MyCZONtSWcNepLqSzyu+zb8B+tEipp9COUMIvNdv9QkHHCpqk66E+sl2tlYt5V6wyD+BuLVw620OikWBqKeOqHRRBFiOHqFIsQy8Fu8FgCV6Ce/jDKVTh7kwga0kGyKF1cA/pTCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bp0zqMJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bp0zqMJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3F2C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778004453;
	bh=f7os2QuW3HSmTb3+ZOqkzIwTlS5sn1JrY3lUTUCRbws=;
	h=To:Subject:From:Date:From;
	b=Bp0zqMJ8/0ApEiocT+DH2P4CQP7AIVonyRfH8tKst/N6H4ZyMsJHozzFOatIOJTMD
	 LGsjFLSAKf1oPk0s0n+xLxGm9raCwvbvSIvUJ7OM8flayj1M0yQtlJG8LbL7aEReGX
	 qJBDGD8puBel3FhBL4JlurfAFAf/X1cH6un0jIN2ogCg8ervahIEGazsvFNsQhIICW
	 Oe+mWzGxvYDndycNlD9KhtS4IEb9YWxFxKptWaSEhilO2wIumrp+pYXiq7cCJ2omqv
	 jYjMUGMM496PQDX1soygoqv2QPFktzp8GcqXnMbIaTPgCYngIqoRX1HbrnEUYPixy5
	 fRzTOw0myF3mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC018CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800445369.2891.13175445655565928472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58defdb58692b00b50a531c0fa0e304833eb8f34f9a6c39f1b553f543887227
Date: Tue, 05 May 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778004453
