Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4943BE17B
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788109834; cv=none; b=hV5jTiYpZ9QEHUTmvDdhw2rjwOis838NXaiDD+OgiPTaGTzesQfHc1Q9xCRnXj7PmANmYReHVIA/jFRn9qwdcHg0F4Vs3EpS/Pguoa3gQLlicAabVDLvEVv/CQ6MfHwBo5E45AWZa1kDjkCuY4tdyv1c/+3GbfQIlk7ut9sSQ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788109834; c=relaxed/simple;
	bh=hO+BKEiEeFNegZCbkfUUWo/7UvSaCVGTrsoHrfqNvr4=;
	h=To:Subject:From:Message-Id:Date; b=o6D8T5ozU6cj7+Sm1I58Lr3CUKHfSfVN6gC9WEyV1RTvnG4p9f2NpH1kwXy3//UaennPu0Fh6v/93K08K6Wi/M9ayuIcFr3sbcXYO20XrFfCjQmTnvHQ+YkNeNBLBNh93yWW1/ensLI0dehqcB5j54sek6lfnekMVewu+z8rSrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMVfneJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMVfneJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0549C2BCFB
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788109833;
	bh=hO+BKEiEeFNegZCbkfUUWo/7UvSaCVGTrsoHrfqNvr4=;
	h=To:Subject:From:Date:From;
	b=VMVfneJ00NeVZ8BAwxQb8ZnzaIos5c2kEa/7CJ2x03lsIKB01iDbHrDlp5R2Ajwuf
	 oJXyJdhuRq+4mvKc2x2BE/14SrNF3ERBo41LFfFaRei7/O5jfd56aiN/iDBHNfoU8L
	 hK7mTmfYFuTbsUUY8tAbtMQa/bGvM7CCwoDXCDxux8rT76yaQFXHdZ3pHDlZE4GiaA
	 x246vjBRmWRcPP9PxAIap9ZHf9uHE6vjEa8KKSm2VVpnRwBJoIjC5eTET5FWGCqx2c
	 Vbi5aLfyX1NcmFWTBXGfzfUUamoq6nn07TbFJVXStPP229x66dVmPLhc2K9NzzevYl
	 MWtoRQDqNwTsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9B1C61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810983369.3943.7827888596108719769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc2b5c6424e0b247f1d65bfd898d910d7f547beae51424d57a4a08e5573a88e
Date: Sun, 30 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788109833
