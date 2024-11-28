Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A48C288DB
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732787754; cv=none; b=JZPb5rwlZdhYcbBFz/593+efF4jUD5ODrlbifoSDMXCE0fTtqcVSHI6vFFqn+GPpiD/oAtaUVvH28ilcMJu7PpYwjQoQjW5gG4CMIDvlsZJmRD3rmYp53e+0fRd1eSsjm7GNpz5IaHN1HCVYbPR9mtJO9Z5uYFa76e0/CmJ0trk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732787754; c=relaxed/simple;
	bh=6VDpY8EC/e5ZLD8z8X7xDhbPFio2Cmbt7mO0Dv7Z4j0=;
	h=To:Subject:From:Message-Id:Date; b=rzaVdXtfKiww098nOChLCNNu6XNsdDSEaBnymv6CrvT+bdTeshLx6vF0FxoFHPLt06JzBN3ZzSxADCxCWYajh6msb0tKRy6H+Yht6Zo2jXU4CmHHdTUoNUyonrSyq7PGKTxC69DqU+7vCq1elM8e3DtYV8Ip4s09qKibGxvSuIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSnpX3KY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSnpX3KY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3BEC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732787753;
	bh=6VDpY8EC/e5ZLD8z8X7xDhbPFio2Cmbt7mO0Dv7Z4j0=;
	h=To:Subject:From:Date:From;
	b=VSnpX3KYokjQCC8ZAfYKff+OuNimwDQ4odWRBjGLmnN12WmVXDakKbyNqeuGt9j78
	 v6QFQ9p282y6Bea+ayA73bYdmU7jAm/Dx4Swc001A3IZcnoz4H08x388VtjEOJKEGD
	 gvgfnyeSzhxoqNKjpDZkYssQFE14g5FW9Wk/cXCWlp5cByg2kUTos46b2ACVUfQfbB
	 4THmubko81ZOIgJEAy7QIdQ3ihIRdgfW9fFjROTPxwgdhIVwwCXjTB93qK3jVgJQ4U
	 nr4sTsfI+J2v6eZE2bTpsr4H83i2GwCXk7Skq8OAQmcJPkyWKQaL0afPfYk9CqN77g
	 w29Z+EHfmtoDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9AAD690EF
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173278775357.13760.14703144879635021782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95242b858d6393fc80b9c852aca407f8d924c6e6dca7d009db71b915c87216c3
Date: Thu, 28 Nov 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732787753
