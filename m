Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618EB1F03D3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743679194; cv=none; b=DG+nAHDO/QZYQjUrXLW3th5bv88+htU0AbiMvfAzj3YA36qnZ/8zSPFnk7y9Tx17xHXTiYCdrUPAMKJmfte1CRWOpFDQCx/iFyHXPCh9uApSix06yZoHxgHgCs9t+HlvGXc2CFrABol/m2nhiW0VSOU3eW5FnSf7rppk0rjBkys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743679194; c=relaxed/simple;
	bh=RW1kGVuVIEwyXxzyPoIrDSgFSXNCq9iWzkS+ksJZctk=;
	h=To:Subject:From:Message-Id:Date; b=B+I4Qc9tU4UWK0k3+wftX/jN2vblNEUKCtMCH5szwe7tiCxxbo00mjKRBf9lMfF2C/8kwcy3FW86H3bif3GPpIyDRnNlQvukyIFrima+YVq7keYQeEchUa8UNWmy8Tum8kcSBLcj0uDU+8c6F7z2CubdzyvPCZ3LjF7AkBzxatY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKYao9n3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKYao9n3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE43DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743679193;
	bh=RW1kGVuVIEwyXxzyPoIrDSgFSXNCq9iWzkS+ksJZctk=;
	h=To:Subject:From:Date:From;
	b=PKYao9n3a0qGaexQv5PH8b1qh9uuqRvoHXeJbQLEWf7yXC6Vy0/rjz34Q3X0DQ2SE
	 oApN//9cnaGJ4cgJV7eMTo5m86RRNfjEJtSwIU3RXVr1NkzNzl1J1TsadvYuFPAhWr
	 3lLvROCZXCOK4ELdfzQFfAh5uWVBdOyKjhkm5WNod6xoZ9x6wL+QFVN5ehk8mDiqov
	 YuDnlIJsQQTjkr1IcMILRAhcyZpXId6A0wjG/2qzjAZCNiGZh+GfysWq4trhtUidA2
	 vg3LcdtVG78KVSrQ2qnEWZg4EWsvFh39Wy1R/6XOk4kRTorF79n/zjmdYDsAedzHAE
	 7gFT2rWylFm8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96354C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367919360.3915.9438958400548020039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42870589bf4b8a7ae0589527a11eae3e52a125f80b9e97b818d27e9d3a7aaac
Date: Thu, 03 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743679193
