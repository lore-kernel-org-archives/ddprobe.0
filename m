Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC761A9FA4
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782515914; cv=none; b=LASy7aZdZXdD+SWz4PJG2KWoV2RS/F98Eos9gKSNbQD7z7nbPNGjtTHj4koTDRpw90lNet8wl7tfNYHZJHKyoc1hx7D8SjsTEFls8+ekrvAnqh2TZKp4sgakrRjXORopU2YYLCcfzPkIVVK8MMqmFlk+Me/y3tjEdxP6ZdkIup8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782515914; c=relaxed/simple;
	bh=NgV+RF2I/rbSfmOTEanQNGIfasmHRBEdeFrOgAOkDfE=;
	h=To:Subject:From:Message-Id:Date; b=SXvxEE/wRtyYCI9vm6QTqzPmNY5uBJt/2DM4akYJT8dHcnz0MAOQEGci3BcdNsrwXWlPys99jGqUM0D3Km7gBkmHE2AyC8bskFgHG/jYYfsfjov+THK+B38kkd5oc2PgEwd5vvlJnpvk4YRq/3uGfHaUzsB+EG0BGvnWz3Y2s+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDZVRa4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDZVRa4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7579C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782515913;
	bh=NgV+RF2I/rbSfmOTEanQNGIfasmHRBEdeFrOgAOkDfE=;
	h=To:Subject:From:Date:From;
	b=aDZVRa4qQ/k3tgph399H2/aLYVBp6BNhMhjQmMfdTaIT35+Bl2xzYGf0tbOjQAhRe
	 dA/O9bNOd9w/tW4+jsFcvcSlhC0h90PH2YXMNM5udJwTbizPbrlQgu2Wm4WBWf2jJw
	 Havaod6xgp48/rH15cknwjFoBT24cspGBtgwQiviFi4n6ArtlPUz+QC7V6yphu6Jch
	 gnxCFF2txyPIUi1AX7LVsCSBs2YyO52tWPwcAHdHztfNjbXk/1FR3gJWg63URetfpK
	 bqC5ZmnehJIyDd0MTBSKWhmnG3I4pSldm5VVYK3X8cuPrxGwOI4TpUc4CsB/pqUTdK
	 p3VvBeuv8osUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F8C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251591369.884.5093764576593391024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444cb5348eeca37b959c2cf1359b038ed56a16881ba02fbbeb1bfd528144f653
Date: Fri, 26 Jun 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782515913
