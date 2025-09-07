Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2AB01EBA07
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757243393; cv=none; b=DniOIl41yvuGufBzonttv0P+gnPdCKHohM3AP1qpgxz+BoIsuLfY5m62ZYnssmcsfE/eyykEeEccYT6eu8iM6Sver307Fpwkpzfbh2VVePXNKU5tFxtnNfewf4UKHYjNLQ/FhGTGXuCiTav6U3X72oKMvfibWLDA/2WMqJ6FgPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757243393; c=relaxed/simple;
	bh=+FbWytX7qSSnK+wRCesDJPN53TeH1w+Uy3ryCQPahL4=;
	h=To:Subject:From:Message-Id:Date; b=olU916qhw4PRMj0ELtTsf50/dYPrXC1pbValk353mIZtFtfe5EjkO5/dd7M2febeCg+vds9/aCO09WcnrCsNVLc5jprRjoCg7QvUGxd03Zz41EWC4VzuadBCXsDni+IcOuMSG49VXUa37ww+7R9yHDVvFTAGk4bOW/a7wfe16fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9zhMIrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9zhMIrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0432C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757243393;
	bh=+FbWytX7qSSnK+wRCesDJPN53TeH1w+Uy3ryCQPahL4=;
	h=To:Subject:From:Date:From;
	b=S9zhMIrb6Ei9lqGrcxQOIuTf3zCjp6/lyK+qClwvIuB+xA5KWbS/BhEDw4BMQYbIn
	 y4nqfZ2bImi/zXe+g6HFEEDsdtqq8H0kDOmK8kszY4Ra7ouCQYCJk1F8fWwsQnrh27
	 TGPeVzct9JAxokyMAmG8eQDDs5dJcJ1ajC3YcoV6Qs0WbrNR3O2d7WfDPd8TYrmOhX
	 iflcHTOHdbIk8/3EE1xWrTjBoP8K4+fqKVwa10/4VcaYxDLcLwecKPZJJGcoKI1TYo
	 3JUQa5CeoziXhUgSR5sp1MQM0shD4Ge3Kq8QQKhKyfi8K70wGOsBuZ99sGwh4kcW1f
	 PrrhrboHKKcnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91816CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724339357.28892.9061698013115589088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ca499e00e8bf955a000642fc56eff66e50f38b6a2b97b045b7b13be1ca8af2
Date: Sun, 07 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757243393
