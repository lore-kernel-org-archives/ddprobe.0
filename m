Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38354339A1
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749054594; cv=none; b=RvrPoQZvWU2iCysRB6t5uD0eaD5QmuVCFWuk8LIoMpwRDD4aXHWrnBk2pGJFtnFqwRnABUW+5lixgY9cNwxZadIpGRsqCalqMiX4anrrYFK1gRX2RhAZwRDEbMQFvCWQFFWJMHnpIjc2K0jEDPamb4NwIbWqWwReukXoHUa1Jmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749054594; c=relaxed/simple;
	bh=AhhqToPd3tHBV0Mc9HCrXgJw7ZJ5BcHICTaqZ5C7/o8=;
	h=To:Subject:From:Message-Id:Date; b=U9jOBsR0NAKbMcjawoiuqokdTP//3L3RgVDmARlL+Y2B4r6higF9r0EStL4z5o3N156eCDBR9dfxcmq5+REcXzyp3PeJD51s7CElocGIuyGhXqfdzM8geYyycCcqC5Ue6mlxuBFJs2/uraAjZhSRxC+Jellb7klohSW9Wg81JAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSQh04gM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSQh04gM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AFAC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749054593;
	bh=AhhqToPd3tHBV0Mc9HCrXgJw7ZJ5BcHICTaqZ5C7/o8=;
	h=To:Subject:From:Date:From;
	b=nSQh04gMqmWtXaABjsPNB3GYRRelY+VSFc5O5pHMpcdaMfhFVMTitAVojScvNkZ2N
	 /Ra3PUjI1TlcCE/4GRNJN3hZGkPgm/+SkHYxH8qzZlCN4lbX+BubUKRXdh0uMGicac
	 d14ed9KCoHczLHZAm/d0MPvTeLFONnZlLD6XTZjBzWUjBkCVE+G03DH9mUnKOpjoS5
	 h8xa4VR6p9a5PPNtZ0lS6mu+RORtHdo2Jr43UFwebeioikqX0pO/yYmI0Esn04dhZB
	 kOsar1BoXS3VpDIM3IVLoWAn82xOiqVT/wCAIiCmN321maqNm/gLGq0/pmi1GtjVIO
	 mSoxX0XY+Qzew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9342EC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905459358.32521.7479376251382344148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9acd9de8485fd3964b34b7e3e2a76555df9e1d9a18e3799c497ed4128e9439f5
Date: Wed, 04 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749054593
