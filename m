Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D8E2206BC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753682994; cv=none; b=R/nFZvGQzVp1YAJWA5UrS3By1IHk4kfbQZBH0pRbnv8dmKL0iLndNc+7WAVvdaqHl354h84xyPekpkULZM9P8gp5loehTeJ9iIaq66odtZIVHl/RwqI3TL7H0pDOR7DHs34iQ0Y/pgMSjoexmupXmuegFXz3GMNRnERkatrQbEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753682994; c=relaxed/simple;
	bh=/zOxSlxnIW1b7feO84vA11ZsqSUQZMu9nd52isJDThE=;
	h=To:Subject:From:Message-Id:Date; b=LoBTN4e8JpddnOLBKDLzzqmFR72aBpHzbuXIXOsu1PqH+BVUCmRAPM4pZjWXOB31CCXSgXaRu9755lKAazmQZLgGjeV88GUMuvhnWUG9pbfzMdvX98nkL46vr9hBTX+wTIgqMPXWTccU41kitCfOl3IRfMruzCp1OYCOJ4h73w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7DznZsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7DznZsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFB9C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753682993;
	bh=/zOxSlxnIW1b7feO84vA11ZsqSUQZMu9nd52isJDThE=;
	h=To:Subject:From:Date:From;
	b=Y7DznZswB2++eA5Ot5PrOPTNwsEXQkLh2Ww7lqWUSJjXzZz2Tt3Fpy4NdijOOy1kI
	 kOq/CH2k9y+cuq2pCB9IWmt3oAmaAj4IGzG73Pgbq3jDCCL2FU4SujrTRFCHoWIflV
	 4yR3vES887XTPeGuzraR7Zujf2upyyc+Md80pju3PeB9lf7SMBuDNi2JdtjZXkoLW+
	 hSqxDqbdXSU+l42bedai14WFFE99dXX7Gmq725BZMpDrEzrQMMToISzBbD87r97w+0
	 CqQwWWRBVLHJf+QtLnCjO1Zc9gUWKNNjSgq6Qw0h4rRmy1Mua2Ifczb4f7xywxjI96
	 3rl5bpvZ5H6/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F81DC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368299357.17507.13865690290156533256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c291018bd1a20e4aa9ba1f9dd3f81712e7cd2d64766ea178a73858730cf5a284
Date: Mon, 28 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753682993
