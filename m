Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26136233721
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760261994; cv=none; b=OcJMa6nZauYSao34L8XO88A9i2/Lgm40aDf4g0C9z+nAJ018GIlwEUBrZPss1UjTlAFhoEdOr/7bsEPMnd7yYR5gUuZt07TW9n2+5RxEoF7X9AeTuWwqK2lVc+r2br+U7Rkx5TwnZxcb0B+u1BwwhgG2HL+oY6a2FXrBnIE25Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760261994; c=relaxed/simple;
	bh=m74fPtGLKqReGX8G7HMPJeGTt7MKG64pqigXDImNW4E=;
	h=To:Subject:From:Message-Id:Date; b=a06PnPSYTU1w5GDrHBqHvQg4qLEaYw+X4UhLqCG30gDcYdTvlEAaMZ1VDnWg3aeTm3Gb5wwyUC/TRyQmfhqOCMv39kRCWOPuTsyTAgCquJ+zdLh7lTjLZ4D7cQfBTQxb2AnpwsFQ/BDC3YMdKtmh902+UA2hww4E6sF3Mdl4qSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wea7iE+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wea7iE+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6993C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760261993;
	bh=m74fPtGLKqReGX8G7HMPJeGTt7MKG64pqigXDImNW4E=;
	h=To:Subject:From:Date:From;
	b=Wea7iE+c01zD3xfC2Teq00ZJeJPbRkHv8oC9PVTP7wWTBzwB1lLTu3ILk5QMnmSTO
	 eBJ06apModFAN4EdV/abjR411WOIldQ7fdHAzu2XOiC3c7QTdBPhfmB/Q9bP3g7yyq
	 pUsFHENYOq75rAlKO8moBbioehApFDanCRn8O0yYDLwfssdSFZcBRapEKwCCOH6lIf
	 1p/ozO1ioRFjO1knu8bmR0KoInu7jpINypTVDLFSgabnWNvLTB3zU+urYZ85SkeJv5
	 s9wie9/2qBaRSdSJz4GNgklqeeKAc3O3vOUAb7kaVY7EnWfDf2LMmUFLYf8D/Y6nl7
	 AmgJWhnp79wZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BEFCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026199358.25728.8982877556617474054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58932c5d33e7a4af8c95906d04e4f15a48b73ade50f1a4af1bf81b19bc96c8a6
Date: Sun, 12 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760261993
