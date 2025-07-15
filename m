Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5896823E352
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752572394; cv=none; b=er7wIRWEfjlzGmljx6Zp3cumIPTVAd+2PzAGI/3lNZA16xw5ipydnUQ7H7LgivU0pyD+UahfCjKoaAuPQDtDxeiYOPzBbwZFyVzPbsIB8quYiIYBR8/DSB4vms/LMumWK3pTKCCk9vh2G/OvpSryKYGYRiUTHhVVTvTezZIxReg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752572394; c=relaxed/simple;
	bh=guqswf880/F4ejonAzgiLQYm6DoIcdDpW01VwVOlv1o=;
	h=To:Subject:From:Message-Id:Date; b=PlJotGpU+ZO4L5m8lHZnmPmcOzSktwcqub1ggnmvBXnwngFJrX4EBUV/0djJ7IKP9r2VxCB7ABy6cJPmafdZK/bDgomNslCaMmJsHxWp5gQUpkW7cjexyAQ+aDWMdYRE+7QA83QHXZ+KsFt3bWPZdfD9bRANvoXK2UQHPVqr72I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bhjcmy7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bhjcmy7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D9DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752572393;
	bh=guqswf880/F4ejonAzgiLQYm6DoIcdDpW01VwVOlv1o=;
	h=To:Subject:From:Date:From;
	b=Bhjcmy7ltuVddJ0zV1Gzwo/3Mg3NPKv0T9HuHT3+W0Guc/XA2zx3TWpoH9ncD9B6N
	 bZp9W88X5nMFlwm+G3IfyrcwVxjEoevreiJrsELw2HanbNZQhdwZgn2rf3FG5LbmCd
	 XppaoApicz2VgdmDKMGbs01iTPLiFuU2uuaiLRIX9XXpHXQtgYPo+0mBqdIc9k2pP+
	 eh34vKOkGLoy6opQS+oGHgFBbbWe64yn9Ne+cXWV9n0dwpSPFxX81ubc+hW066kkHG
	 EPzEIi/nldoCXWAVogZoGo/UmZ4E1fPupoyvmQA3Y/0O0MHYApp/QgYf6I0wxWm5Qs
	 UmTRNPDGWUbhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E857C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257239357.2142.2846416581775264560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bce6b66f003150da93569d5eb2aba4b0ee5a73b03d2def155578788e71c6bfd
Date: Tue, 15 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752572393
