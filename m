Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA071C84D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753532995; cv=none; b=kiPaUY9MxUl1lqyELqnjDrBIpXkos/XPh80KXqX8z7eWUD3h7NjTHlKXuP/ax2OMz5Ve82w+PXEmDcTmatQGK6kexXwykxcHtEO3P1tmEipAnvXGDnPCpoZt2Hpa+i0zCksXlCyQHf68BA14LYI+DHe5dsBMFQJVmWrEotGigIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753532995; c=relaxed/simple;
	bh=FUwjNmLPv8KRCyEgHsle4bPixdRafTbuf4wgP9Um09I=;
	h=To:Subject:From:Message-Id:Date; b=qHO1nOG9g1yc3fZ98o442prvIdL30GBsjp1YQn0lT79k6P8mtWa4JFuX5VeLQW/WLlm/widkL5ubg/ZWwyR9T1ThvXtmVxQ2DychpvWMMK3pJmVKlFAPjvVpGQeFGqVe6OTPC2NYI6qTkheV3F/wHrQAk7mCztfwMtH+NjZRQMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C27QflT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C27QflT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1869C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753532993;
	bh=FUwjNmLPv8KRCyEgHsle4bPixdRafTbuf4wgP9Um09I=;
	h=To:Subject:From:Date:From;
	b=C27QflT67ixZnVw5y7PnzqGmixfFHFKKy0DtL+U4yizWdlK5i/kR/3JACiODvGo5w
	 Ypn/wSJumqtpZsGp2VQQjGHNhKrqEnCSRa2RuzM8Ea2Z9P/gXuGicTFiIJ0SwPmfaA
	 4qIuyIprlMlUBOYfv0TX5/ugLKVXo1E2L4slV/b9301sx+qqkc0x1vOvAvZ/1FvR4f
	 5GcJzAOJCv6VAyz0Mgp2+nXGwn+ZHEQLUn9deqmUGZetcSkv5PwZgcooRaMKY5Bheg
	 6Y04ljzg3R/EZDoKSects8SaXKCauulKzu139gW7ioDIdUV0kC3o3kZlmlTDFYgz5t
	 /ABto8ji/mn/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F815C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353299357.11611.364213518183972932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcad857e99e845e714a5ea21c4bae392b0eb55267de1344fc84b12f1bb506baa
Date: Sat, 26 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753532993
