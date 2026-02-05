Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17560426D05
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770306834; cv=none; b=e/dS30gFZ6DB8dO5nHyaVum7Xw+PPAmATYxp5XEYVGaU5nGHyAUZXanep8jF3semvyZ7TY91UTC7coSD4a4XeaPgiMedJ9xwYPCpZyu4lLC95lI+/e52X1rToRXThh6acUg3fwYSYhVVR6+sABI9FDq3IIcs2jXWAOppjKaG4/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770306834; c=relaxed/simple;
	bh=FCF/ZMTRx3UTRGPSROMEUycaHmCQ0C6u6fn3cok+yhg=;
	h=To:Subject:From:Message-Id:Date; b=O3t32l5dcj9n4b/gzvS3DDBei89ivv165roK6OX5Szl5NoSHVsTX2tUY4+Txg57m0JHZxRJvtr3cgp//WjGKtELhw5emtXv5/BHqztFJyqB3k4Qtb7hu1a1pyMQ9HamU5g3RMXZGdyeYw1zmcZXGYyJu4WeBWHcHZkhAtRsWyJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIoaY9MY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIoaY9MY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6637C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770306833;
	bh=FCF/ZMTRx3UTRGPSROMEUycaHmCQ0C6u6fn3cok+yhg=;
	h=To:Subject:From:Date:From;
	b=SIoaY9MY8CPByOUg5Qj4pGBM9UlreP1/JJoBmpJLxVNn0yrVp2IqS9ihm9EA18fUc
	 /DT75fw54lEuDODngVhHy1+j1sIFjbi3Z1KRZ5ZJ+doLZNP+G12YRNqSCjnKBTxvHT
	 vNLPEY2QCMy7e/gL69YLEGqb/YBYDXoc4nQzJVCWdEbR5+g+ViZto2pGnlS/N+/4Cj
	 298Gl2jQ/bgqSJklrmhbH2OVf/G25RKAC5w8oG1+yO3/anGdoDcI+QWwjlfFScWaV3
	 bZGmmRtmqg9nxH5iQEW8fCJwvTs9nVaCvUWUmW0/MC8pgnNMjmOXzzmXZ/H+EuZIL3
	 /U7MijiJMCoYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FC6ECD981
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030683365.5446.12814357751965919258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0cab0437976b010065031e97bad7fa65be7b3970efea2fdee29280d148339b
Date: Thu, 05 Feb 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770306833
