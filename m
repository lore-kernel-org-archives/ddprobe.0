Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DF030AD00
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769712834; cv=none; b=NiITJofaiPFxyEfMAmzH6AUuzoBMQZlrEK3tWfmxtUub1gmEhsNZnUZwknyq9SwCZXaXbkP2dYd5mtSdQFaeTzE/WW+fjitXnRXWK/Kqy2eMS4ReD73eokVfB5+jmUGP9G6RtG3kisQhxiKmihcUr8zaZot+KYhwFcXlxnXrqZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769712834; c=relaxed/simple;
	bh=7ULeK4HbWZT67/TWM6xyidPSMD38j08Dyd0dfbB5X3c=;
	h=To:Subject:From:Message-Id:Date; b=irBDCnTm2WEpB2TkO8PQPNoN1+sKQXEsGT61im9SfRr9f/nSlLpSdmAD1ujyAiFaNBmACq8R/6oSKBQC4jty2jmx6PXoWxaxDelgCWKOB6Ufn2JY5tFgAfaBz0hz2Eahu695csiK851rT+XSodTgjYqWAdMoPV/ceMp4IRq9KqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOi4sm++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOi4sm++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769712833;
	bh=7ULeK4HbWZT67/TWM6xyidPSMD38j08Dyd0dfbB5X3c=;
	h=To:Subject:From:Date:From;
	b=nOi4sm++5LaaUdK0N5qKStMY/SRrNGJBM0yWDs4R35KvNZBBNG2JUes14YBFijYEE
	 D9NkRQx6uM8pNMGph5mi2Hi/l4859YSr8GC8x4Em8dikViVZlEPqUp5wVeoW98taco
	 oIy4fK7YTAhHsOcxZcyJReSDOU4EBLbvcdPHv2whK8OtCjuelPcJSe3X1z4CavDds5
	 y7gwNSgnT5AoBzE9AcJbAn5ibUm/mw3D1xNfpkllAUBxLKltg2rNAM7lHxDnyye0Y3
	 1MXu3bx2D2rFWD7AEQdCmAr6r/JCLKKnEO+L4OYxtE+h52MnEbpMfAO7sZ61ekE+L9
	 bwgMHo6BtGGdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD19D73E84
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971283357.27505.17136116581784073046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fcbac86a7e21d2111fe16644f2894498b96b2676128ccd4d14f59f22fc6ec78
Date: Thu, 29 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769712833
