Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF4E27A107
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771054494; cv=none; b=X/b7Zyoxu0L/29ftl8ToAVKLsm8c9ceQItGPuYZD0LC+qPWEYgr54Et0av4dsyUF2SdpjuerdGLc/O8rzst1EELN+CsE0EWaZkXlKP1Tcnl+bLdfXXWbz8QGJxczUQp7sAucwIqYp/tCwBhP+rh0sIZmngMT2t3hNq4wv56k7kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771054494; c=relaxed/simple;
	bh=eNuTaVlMz6Q7wRt0wmRd1+CXiDvRdqevnTUGcorTczU=;
	h=To:Subject:From:Message-Id:Date; b=eM+XNt+cA4bKMU5FB92xlndydzhSl+vY0brSHsuyZdazdlmRMBSS2MO0U4NXEeWZhVoVrKSZkqp+O5xGfoKNrYK9GBODKx14C6a64WF3V0BmHM+MTxC+GhDGcg6mtOt5OM5NVNOQgnow634OHST/3aimvHEITizOUiAqSIT1hxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCCFnW2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCCFnW2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE34CC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771054493;
	bh=eNuTaVlMz6Q7wRt0wmRd1+CXiDvRdqevnTUGcorTczU=;
	h=To:Subject:From:Date:From;
	b=jCCFnW2u9/TvLBDS388P6eh/0uSrCwoRSP2VbjHfZ1Te5ReORQOOz02y5KXYLo+Hj
	 t7E0anPkYsbsZD4ruKLGyfrU6/xIginpEgkLtkrN+kHEzPWeHqsMlIk/8EtZZibMaU
	 UQR7yGqM2UCEimWSpTegSolrbuTGO/0wPi7VsuoDd7fbiDmlr6zM8EC2gLoE30fgaU
	 FIMrbJpjD2KSWNXX+Z2L01zZRkcDwxk6q5DxquJZUcXzzAqSbOL4Xz5+7OE/ersH/R
	 XsvGPZqNv9hUZ8u07+OpD8yzMQFFej7xvwFnmM8CLYb0j9JFjZ1XAxlaj6tVngYhFR
	 +831+oh/Y0Fug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8374EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105449362.3443.7631369082420162869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b132c4b3286293fa7d7c021227405958d8b270785cb33b32c79b6206024e6dbd
Date: Sat, 14 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771054493
