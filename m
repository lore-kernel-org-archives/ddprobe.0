Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E159149C53
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746059396; cv=none; b=AQQlVel1Gul2iC8Iha03scUSIiVrAUhffSPwuRGdCP6sL88UEJ3KYAnHsomXiftvdC/E9GMMeSpXyWLngJic5BS5nM2RTHCi5xVwfeerNupKFiAXPKaJDOk3PmOHKG6M74OrTVFXhCDd7OMUPkSP+oCdJ34tHN8s3ouLetJMADs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746059396; c=relaxed/simple;
	bh=d2WAYLlsvKZNUXmwBuYLhw5AGkST5d3V7vtQ/eSDUVc=;
	h=To:Subject:From:Message-Id:Date; b=cjeu8gF93QEOLSI1Kmsiq2CDzk7Gh/VP03Irx32u+oNclV++Q5S9CiwyMb1qf0SzGE8crlLugtuNnwvRc5mTwQV82PXqMFBMb+/Suzxz1NrEhpZCUaNSK5Tk7zQpQFi3idzkEfZS6zW3Zihlfn/LTG0k0cihLIUgRDGtYKFm8S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoi6Jsi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoi6Jsi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DEDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746059393;
	bh=d2WAYLlsvKZNUXmwBuYLhw5AGkST5d3V7vtQ/eSDUVc=;
	h=To:Subject:From:Date:From;
	b=hoi6Jsi6v2GUi171u76pV0KDKhAyjgN8KLcCroI7gayqkNDBmp7xOVoKAmAWiRRGt
	 Crdp/+MK2jEfPupDRc1CcuSf/z0CfNGto2ss1V/rAjlrNHtMTZ5UXk5Dbsztv+u+D1
	 H22XeLaz9YxDuB7ikNjIYxeZiwnU9lBSzTiGCfnLiJNwaCzxRgcnwM1QxFZ7rg4oJo
	 FojFc2mShGPphiQB3OH6Q8/kcL/M9vNFeNJohsLs1rPNRnz8C0vCK8BTpLRNC/qZ0a
	 Jp7Ez2JIJujo/hVRXfl1HMD3wbS6i/YAxtjA81od/NpVhtno1ZkRCHqpy7qalSLN3N
	 hzSlAOmSZOA4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6BBC369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605939358.6150.12399441268840906222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527bb61bd49ee078589a0b008c858b92af88fb20adaa94a80575e26a06940ee4
Date: Thu, 01 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746059393
