Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFE6218ADD
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752097794; cv=none; b=QCCpNqWwxm2BgL/aSTglSwiba5CXQhVU/l//J/T5vOvt8ZxzN0ihHpLDBMEcY905e3bp6YSqavHaD/47kQIYXEWoUt92XcERYKwQV2kJnlCeZfGwpREqHjmSVqbdZCo3GBsyBJDlSAM89MDU4F7gpR2yyEElgQdvOK8s1l7Xci8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752097794; c=relaxed/simple;
	bh=w2VsXDrzaYNVnl0RnrmwHdKKhhrbPF4sW83CZAryxrM=;
	h=To:Subject:From:Message-Id:Date; b=Q7fRAdPPXvHfauSHVfrK+RZVwJPvOARA+WBe5aixcMd7cM6a35vOzzFzGccVShTq41CJ9tMPJcVzroecPzK+ZT/qI6xvIEneO3T42azLgB+2XtqmYx4wAMp+tHofCKrODpVF49mjpgnKjga5iYxjP6kWM3nqFsYkrss5B1nOGUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VecBL5Mu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VecBL5Mu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA18C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752097793;
	bh=w2VsXDrzaYNVnl0RnrmwHdKKhhrbPF4sW83CZAryxrM=;
	h=To:Subject:From:Date:From;
	b=VecBL5MuYmnf43PwafjtyDMGWbNpUOcW06YcoxlxOe4N7p5mVOZu8iaPo2JJs6vMW
	 RC+QN30G2vc/kaEZak7qIR3QeypzigfNNN7PT9xbgkj3+L9ACFX9e9iL3aXk79pQ3r
	 6lhAz+a2CLYSwr261ENTUHEML+7gX/WVYbXarhgR/nlYAOWHxAgnHvmq44POR6SK6p
	 OgeesnpemWR+PRvV8sui4ZjcWSJny8Eyzj6+xfH6wrIoM/u4s0fzu3YrhsTlgLeebD
	 oDBcH5VuiPbaiG8JY7JwBIzDrNPFt7X46SO4fJN17uMZUAkghiyKHWuHU4rcRvW7GU
	 9EkF/Sw2VyVag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E365C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209779357.30432.15246653848496248358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df4d63716a5d5a6045591d69fc2f3acb41eca3c45a86e316484f5de9b6ea12b
Date: Wed, 09 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752097793
