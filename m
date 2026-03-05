Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91CA217704
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772705093; cv=none; b=G6OjjL1KA+6RAyMimpSxfeU8CcR++l37yy+hghQ5KvXobRCY+H82QnrrZCUJVf37ZPB44F6YbbWVVM+/0x6n0fK8EBzb/fVchaj9goF71tP/lQmYm4AL2Fio5nqF8Rh7lPZAddd1HCQJAsljB1wX92wVEfPcgiA4RuJBEgRt8bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772705093; c=relaxed/simple;
	bh=h4+wxMXbEgZnsMNC7ZnlLELg619RG+66ySsrZiqxiyI=;
	h=To:Subject:From:Message-Id:Date; b=pt1VD6s+nn3c6DiM4A4FCqsBExRafL+WPDU2O4W0ZlVEmssdvmDJQoPBmlRrKsPtEcor3jbvmJK+V2Y8f3odlijWiD+tBLng5cxWc6X91nfkCv9GPCfQ5ynz59fWluJ+wZqwR6DVOeH49/t9CO/KRod95OLQOp+WNYSi+WyY0j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVAMoGIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVAMoGIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7B6C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772705093;
	bh=h4+wxMXbEgZnsMNC7ZnlLELg619RG+66ySsrZiqxiyI=;
	h=To:Subject:From:Date:From;
	b=NVAMoGIzQB0b/1uSEypiVVLr+/8QCZydkHxBcXGDjgrjeMMxGKTFaWP5MWEIXE4mm
	 QnOUm4ceK4xz9mgByjElJItd+gy3Zt2EbkubBdqKGQWIsA4CEs7spwNXLgBlCJptgo
	 jc98HJKp2L5MYD8r0uMCGosmZOXqCCflcDwdeYbFdK2gcZSxh1+Rs6anfSqLdK6of9
	 AlSWd+80ouVRf3zE+RXBblhCFBcgMqwMy6YBmor93la/JWbkF3AO2ffOH1F4tboVQB
	 ettX9yXiUcwrYbOQxzYmfh3iVuWicRn51mimZZAMYeEfxWrw7CNpltHykT2/B/UgCq
	 eGpX8H3AeTLwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B673F30928
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270509362.15922.14410529753760259510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afcdf90112dc4661499abe8adf302b883632b7265e8d3b482118aff8376d442
Date: Thu, 05 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772705093
