Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA63734F48D
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773355494; cv=none; b=IA6VCIVtZCQ/huPalncN78kab7iUXq3JDoTpD5nzeb6jpbV/XHQ2lKzXIkGMbXkrb8ILVGS639k8STHPbIn2xGCXtV0YJs9eoyQ6RcGHUEtmdF0j6QDlUyLC5WwDH/ak5RZ5ya9Iv6j0TGeXKK8oJFYJtMjPQnSnH+6AC30XQYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773355494; c=relaxed/simple;
	bh=7T5VS9TNuxJClY85fwZck8qcAoH5Mz+tEH8+WiBo+ak=;
	h=To:Subject:From:Message-Id:Date; b=mAQqZAKSNvSCQLoRuNckTlsf7vDQAmjFt+5BHibWxhTTzd8UuB+bvOKOosp2wX8FoboH2CFE/HQ21NGBo24lNFZOY6cCWBKO0w2iYTjIB7HKHN2t4kAQ6qW7fdqYowoZMUbe2zNRXVMNfWt3A8kSug+beKVdp1ljaRsqUFhV3J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRnujvkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRnujvkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A062EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773355493;
	bh=7T5VS9TNuxJClY85fwZck8qcAoH5Mz+tEH8+WiBo+ak=;
	h=To:Subject:From:Date:From;
	b=LRnujvkfyIisxZosOoY/a42yTDib2wbeYdVPnLZCElGsyo1uY957ClaIc828GDAXJ
	 L9Zl+Yv98NDgHE4BA1WQG16+ajkmA197jQurqN0/ZPNp/z5WRJW5zI31ICIhRHCOCL
	 Drt2GhCp2TpjTtgfIyMfRAToS5FiWEARkmOOJ0YH4/JgR16a1PaGLcJmv+f75XcrJG
	 e/i/I6Br0aEtrOP5kEVw5T7+7qagcgxU1e91kWmTLJ2BCztt4u6BMdutZjJowUhLsy
	 KbAGb0u+4SNg1Qw+XQbeqPQe2lfKtozzap467vjw36gsWYeoulcul6iwkC/v5pVmQA
	 83PczvyfZaB1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906DA106ACF2
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335549358.30254.14150142164973216044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5752708cecf3897e21bdf680a07c273343e5303a02d0bc7e97a579259b3320d
Date: Thu, 12 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773355493
