Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5069015D5A3
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717023263; cv=none; b=p3AQ4bE8Cm+MKvWayneyA/286LDlav0iJzEzhtTiAfPLPIBjM39DCctfW+l1zb6pIxA+CRxbfJ5B9zTfYOlwH4qDaHIPzVMetUQKmBIwnciLABMFmP2xTqJI+U6i066qrlPmEV8FoOUB3bjfKgLuv4cG1OuckfpfbhS/K/GiUtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717023263; c=relaxed/simple;
	bh=XCb0sqMJkUQNnP8/X5sJkXcd2/qjeMxpvLH0zxdDU+A=;
	h=To:Subject:From:Message-Id:Date; b=t5nhGNzbuvbspVfQROha1cwOEpXsShsRBezvia2/YcamUtZHvQ6Pb/ntrvYI7uRhdyt7PDPvHUFsIWS+iD0xh0niwSBxtniWX5MWuK+cRAkbsYI7jT/q5h8ZTfoh952+rxXKg5nIhS/4x6YHMfXf7kRdxg8LsZizkWlrgRqbr+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltRZ4NgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltRZ4NgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D887BC113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717023262;
	bh=XCb0sqMJkUQNnP8/X5sJkXcd2/qjeMxpvLH0zxdDU+A=;
	h=To:Subject:From:Date:From;
	b=ltRZ4NgDGWUs7ugCLkrD0nwvpSO7Bm2PZkRGbEmOxk9if83majOccRYplLObW8xo1
	 q2mGNh7rYulybQeVadhCEyyEK2GcbmI+6zcJgrOsA4S/BfCJEiOEgvDkFA0uNbkr55
	 FOK2KKTfoDpW15Wtj9ff+Ld8hh58FhLQ6+ByioaNNisDd9EuF+Sh72x32pQuXMijOo
	 l5/XtJX+CPvceT3Hk9woXLM8AcQT3s30/35DV0YpX1tJnA9gA50se3i34zKRzj6cPK
	 F8juuGfacnh4VvcJg41V/MlRIxPMikW3H6ocYJEtW11gI6XMgRGcWspg/T9nWdav4A
	 TDSU14g8CTGxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6074C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702326278.16241.6191503938263343871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261646e4001e090b1dbed8240500b35cfb3f1139da1c14fee4a14b35a9bfed05
Date: Wed, 29 May 2024 22:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717023262
