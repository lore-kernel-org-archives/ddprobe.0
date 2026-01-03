Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208053C0C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767441234; cv=none; b=M1ru1hhL0aWJJWg8EkFBz9FTbD/6KgutNFxuQ1Qt9XYZdz2xAu/3jC2iyxgKVuKpioGUGHLjPRf5zIpkdfHAD+QfVqEsSqNmy3SCFoI5faUTsa2DzWlfxYZYp83rbntn8EjWQuRlf3mcYuHjVYMYAKa3yE9tUW3YNWNSMlT5Gqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767441234; c=relaxed/simple;
	bh=vfSxJ8ICNhN7kZsd+i6CWQ5sPInhDzvq05wCBuQpY+E=;
	h=To:Subject:From:Message-Id:Date; b=OqYKHtaQRrpEGc258fOTdnJ5RT268NiJghtfhhIAbu6sV5tf6RoZCCEUoAPAmpBFQv2DvBWaGonyn92NLuEGj5MLXOluGJ+emC8sXZ19BbRWESTmkYQWTZ0DLMpmPm7FnDnplfj+hMRFvXsfAdYEOMY3XXzs9kBcLGrpViozi3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/u9lVFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/u9lVFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52E8C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767441233;
	bh=vfSxJ8ICNhN7kZsd+i6CWQ5sPInhDzvq05wCBuQpY+E=;
	h=To:Subject:From:Date:From;
	b=r/u9lVFdz1Ukh8Fx3lHGrRsmsqHFArSNDcCN8b9PJpSqJ62wu0aa55INkYmq71j/g
	 wdI/paLb73OIRW+h2cGnEwAyM2EiOLFKLU/OmBS5qbITrYkn4ua4q96nzKrIrZJZv2
	 iVNmQNIeGe0AO21boBZx2R7LUoySvm2bdkveFZqLztcTFB6k/yFmksShl0doLt/Sl3
	 Lak9zQezq+/bjUkFKdLFtvnSZrUypB+9hfM7YQ76+0RRZuRZwqJHWvwV2eKuFVKQkm
	 Oeus8rMhhhYkXz7DaQ/QuTuiwB/feGfVMohDIIf1Fplg+sH0qNpyOtKAtYZstAVdSU
	 PqT+Tpc+SXTGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927C0FA3750
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744123358.7480.3484313708460896130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826de3303dc0dd30e3a31ecd5da643600307ec81e27e550f0e4fcf4387c249cd
Date: Sat, 03 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767441233
