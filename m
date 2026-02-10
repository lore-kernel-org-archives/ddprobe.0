Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645A720C463
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770689034; cv=none; b=dkD4skwtdvj8sL1lPFhhbHthl2dPAFHM5NP+uD5qIVsn6qQI//ocBZwWV07WEunMUIHyVrol4Kw+onZUvjll+daGGZkIemQSpiSK+2jSW1pWZh2WXTToL1l/LnMEAppSPOeliX0/kQ5pSiQat027fSnZJHWDRoVAgafaSHUPMtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770689034; c=relaxed/simple;
	bh=tBhV/PZJ+JIA+R+q98Uw7zuHXilgxNj6LDjpTswu7b8=;
	h=To:Subject:From:Message-Id:Date; b=HIC/OjjOl0O8tyUXhFlqsWNR4eCf2uF+JYvd1o3QhJCBKQza0f4jxH/dPHJPzkMnSzAkSHWTUrQIhKu4n+imi0aTOrcKgCyhEAcyGSdo4yiA3UidIEiqC5AMnLkPOrCtPc3lAQ8dGSMjR7JImb0Ph31Zx5ioDnmc73FqPKh2pV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlThLHIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlThLHIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D10C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770689033;
	bh=tBhV/PZJ+JIA+R+q98Uw7zuHXilgxNj6LDjpTswu7b8=;
	h=To:Subject:From:Date:From;
	b=nlThLHIT2FncDd9KbCbB4pgllqmlgAr/7kX6fuxvSblLCM7+cVtCIxQTma8aWrp27
	 OwqOmzW3bKOQXgfYIg35AmnT/JpnyIg5vTiH9e+ZDTedjxlW4M7LuKw5P28QeIJf93
	 KwLWspb9/MRk8KPh5U5Jg498ZDA3i7DWZhTnIkqCxR7vyGqa+XY50Vvi2snrF824WJ
	 5oF0S569amzl8E71q0gzjhPbWKWdkAQQSPIorcm7YQ2P4zg17Omc1Ap1w9P4yI+sZ5
	 7n9brX7jizFV8FJzvdpUrv6cAk7tblfVzhlkdEggWo7ZYAF1j3j1BR7AppO+KQbPnP
	 tVKNkRlevgLsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C742FE94625
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068903376.14495.575970722580085981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d823a0c34714677f0cec83cbdd880728492329f38175d31ade9b1ede456dc9
Date: Tue, 10 Feb 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770689033
