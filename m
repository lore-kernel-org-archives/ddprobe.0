Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C71D33B962
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768420434; cv=none; b=Ab2+e7Ok+X4A600V5KPnapDo7I6NHVl8ek6ogn4FXBS0gxcSNjs+08I5VwXL1iIA4qgYwFQHs0KVslTS8WFbA1M02ehMJVHQE2ZgpuezMbwu8yqTJ9ctIKiWUaZ6wckpQ65KAcuUqPuP6S+FjEMuhip/vo5kq6hEpSeqT12ZOd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768420434; c=relaxed/simple;
	bh=iqu6dKUlKRRHGF2qdkfub6ySWbpJksqv2v8jOVtkXnY=;
	h=To:Subject:From:Message-Id:Date; b=LxsV55pFMUJqC81JXebCQG3YccNUdLucZh348FfuWoNjdQLIJHrdVaPR55SolwJdU+rnvgWZL00/qX7cONKXkafwUBf35xBjd3ALdN5vxMLdqzbvW5IKQEVTCaesyMdUbVbieiPdv96rjGlX+kiC3synawA7cLx8Fy440EFLcO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuW5ZoLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuW5ZoLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E35C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768420433;
	bh=iqu6dKUlKRRHGF2qdkfub6ySWbpJksqv2v8jOVtkXnY=;
	h=To:Subject:From:Date:From;
	b=EuW5ZoLtzWyS8EI3m0stA4n8ERwL+Mz64hFJ7082XLpW5+O5LGQvA3CzOTazqatLo
	 juOLbYQCWdD77saOlS6XBJJ5r5PUy3B7LduqqmosJ+kqKQVp5hOz+m3OGBYwYaniPZ
	 DVRGX/eBnpu4SCWMgAYI3gmyKZ0alJtV/S74fQgcQZJv/wgEGyBMWHTYXHItZ2e2V2
	 vIzBW89KIcoddR57bwNqVIsIi7RAUnXAJNgzj6r3MuSRRSBCveLCC1Gw3VpWALaPbh
	 qNmEZUG2fz2DQlYTVpslQFOEBt8jbKJXHUbrXMEqryLkpq05jisPMyyPUm9pHGpOss
	 XtyQrwd1NjdZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FDED39014
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842043358.17494.9548144225897755606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc35a7f38a40a5391df5f0f9f9734e8d48410f8f72e8ae3e2990479b9a77a2a
Date: Wed, 14 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768420433
