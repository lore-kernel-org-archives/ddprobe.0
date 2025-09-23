Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234E62AE99
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758602395; cv=none; b=XUmxj1zYYjIAWiRx9LMJK+4QzDG5i0a4IUJ8VEr2dNzmcTm+ZM1qzEqUvR6EhAmVM1BFu2TP9e6vPo+DpqSKc5uSjtnaTkR02EhUgzvSmd+EGT+dr9gSWiFtfN/xnZVNm/YLrsEuXjVIlwsSfUACz5LtLhjXkoMXgE1DobciUpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758602395; c=relaxed/simple;
	bh=4Pp8kqHbiD8IyCfg5OBowWMRuB437IXuEpViMzYlP2g=;
	h=To:Subject:From:Message-Id:Date; b=Jr3cdDLiMpLSATCfueoVmBWa8tLczk+/RBmo86ocp4kx/FQ+59QLS8y77oFvIZXzweECZKX2kdIqOvJ6708UiccrHjamsmPdiGRh9TfwCIJvzCvXo1EBBfkPifGlvW57luo9wG754mmP1bb7SG96//PM9HbeavWrwCQeJvjo+5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rov3fLY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rov3fLY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F83C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758602393;
	bh=4Pp8kqHbiD8IyCfg5OBowWMRuB437IXuEpViMzYlP2g=;
	h=To:Subject:From:Date:From;
	b=Rov3fLY+szYY3ZLq3wRhy9hrj4Vtpiqvr/hzuBlthxlSdELEgL9tzUcpw2n5WW5Dm
	 t9VPGPzy/uuLne4ii+PaESucDuujWxYYzzfVqZ9JI7CaBgsZ2fIIciF+07OkMTAkQB
	 flZh3ZV4uXKwA+21q6L/EttpPQ3pRCS4wmyXAqp1qUQq/zz74Zmpfv05JPGjssTPP/
	 jehp7+S/1YxPWO9UMilvw1K1SDNcCDpFKaRjdaJDWvEVOPavvdo6s+/6ryxwmU5Cdo
	 jSaBHHn9eEciBTMTFXI25eLoQe+xp6D/JYkJil4e0l5+s8dRRnfJvWsWvouSHAxQGK
	 zprYxMKhJc2/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EACAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860239357.31181.2818687251077324953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bd809e62906d3a6028c7730ac1f6c0f1a654f08417d638a0ce0c72a348a9d77
Date: Tue, 23 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758602393
