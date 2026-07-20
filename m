Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950DF3A9DB3
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784528914; cv=none; b=gipDpPALfuK4pFYwsNPFRew3DDigqnCb1ehxSLUp60QZyjpsklwkRM8lLcW/TiuC8D1bqadEFJoXW0UoNBQtVmTvz8zmy1Hv+ejEywBRQpK/Xxk0j7oBAC+tGFnpOa3h/Uxjlcn5+PikFoHOP0+6NvZlfvAwjTEPueh9I7fWNI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784528914; c=relaxed/simple;
	bh=fsVBi9eEk1XhDaRVGWqXrNXQRMX04wfew3DmR41li04=;
	h=To:Subject:From:Message-Id:Date; b=evbNVZLf/15Ge05XpRmM0CK+9t0c8iiJC+U4zbQRzqaUUfpT/EWHdPe85f6H71iz81bnGw7E+uZqmwpZ1O0lI++bZTNOnFKKkfvx5Fgvo9LiVohmLsnOP0CVkHi8/q/M+AnhhMStkWKBpZTGZgi98JymegqOw2E4MdMxMfeDHkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eh8oWDNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eh8oWDNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFBAC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784528913;
	bh=fsVBi9eEk1XhDaRVGWqXrNXQRMX04wfew3DmR41li04=;
	h=To:Subject:From:Date:From;
	b=Eh8oWDNs6q4QOCEQvV6AO5L0U42AJEm6/uh6Hkc3IQvMWL0+prBNKPjJPiU8ASXUI
	 Xb0tAbzfgktqIlu0aS+7tA/CtaH2m269YkRTebK9NXEx1/1ENhQBcCxf/qk+Fqrsur
	 nYvTIY/Hz/+bvajnq6MIgq1AQl1MX5ZbfStEv9KvKVXEZs8LJLpKN2yxrcC06GyzPI
	 uKADVaGfggeaNwgFAW6z9EmlnX6gt07cv6k5xjnSu4F+Yq9R8yqSRtpawG3Z/k72wU
	 huJHpSnc+lN+EaYYL8iv/pKlj19gaNZ2TjzELH0XjOpFoLQeExSmVkK61BMWVubZo1
	 2+bCATMbV7hGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2189C4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452891371.12243.7058272474388102556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f2f2ab27b58af1190460cfbc8f3afbe7be4507c291882b4c599aa7a34a83cb
Date: Mon, 20 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784528913
