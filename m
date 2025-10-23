Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A890B313274
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761221994; cv=none; b=UiloWNQMCJOafuR5b2EeaoQ+K7EM2KexpsP5Hb1GoYe7CrrXgnsTiQs7lMhxeylhRp04cXrZQOTnc7xwdPMSac5qrHY0d6OxakBtT3/EWcUXp2FCYhUbuiEBYRaTI7nHyMIcewiFMrrraVkjtogjLOm+9LrHAcGROPPnOUVSxc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761221994; c=relaxed/simple;
	bh=mwU7kH5zX8PS+wV7Yc36VVUrADO03Udf0Xv4exEc5tk=;
	h=To:Subject:From:Message-Id:Date; b=nJQcKzaV2J3U0Yqu6oN+askJfuBhFGTlCTn+3u3DdAXfkS1Dy97ZEDuRPPm7Goitig6oL9DmQuZ44f8Ii7FIEFwjHPJxryAI07fmZtMxsCUbwSlV0Bq26YqPIkSSs/bYBqnDfAgX6VHguJm+uH2mfsAIClNFeR3BBVwPQTCby6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=recdzOs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="recdzOs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E85C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761221993;
	bh=mwU7kH5zX8PS+wV7Yc36VVUrADO03Udf0Xv4exEc5tk=;
	h=To:Subject:From:Date:From;
	b=recdzOs+o0YDxjvrLOBXFp5+LOZsDknHEWti/czrMGjUXadlDaZJv+1iDqQ9zHVgp
	 TVJ+B/NmCKWONpTbnWpA6iWACde3KuQlqt5uRKr1llx30WH9iHLXNWRgIskSN86/ab
	 teJU2uvjq91Jp3lPlh42f2jvqdnBWgcERdVf3ZnGITvaYXdtCOgFufT98vMQNeZWWe
	 P9tZ7SD876eNdGhk/gHYCgT/FjtBdWKLEigEuyIXhTxbUILDWL/uPEdtG5LRmMXdNI
	 4NpLOokSboHkpUNwoPZDq/FwClyID8J36cydcoD5/AOuT4Ub77IOLmBqE9Yepp27LN
	 GxGM3orRnN6tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F7CCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122199359.1479.14088997249560402053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0109dcb0ee4e6e0b7521b6c64044e07dc0cb85405b5d938a286ad9893bc5c54a
Date: Thu, 23 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761221993
