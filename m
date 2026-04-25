Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F12223DE7
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777150654; cv=none; b=EZRMd0TUqQvtTlwb2vMu1dp+VAODX+vMzY2kAdrVYbQcwlzrV0wJqtpBV8tTwU6I/ru+vufDQCOP+IAcEaxB1/z+6gowc8shjZoT10DncXeH5rLB9RcW78uJ1IbGnhi1YkTGunculoQy1xX4gAssRhkkdxz3pRw3MXK3ZHtL7GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777150654; c=relaxed/simple;
	bh=x/0GgJA0GhiRF4IA3PD18EnLPXhR0V5FLvSkIQDjzY0=;
	h=To:Subject:From:Message-Id:Date; b=f0CVzOcdfOip8G4Nv3ED/gkxEsD+4GU7Gv/OM4VcRMetSky62/PRgej0HSW4r239U0agi/WsiPfzVCBWO7NZRDsR1ujcJ6P/CYDU7yJ9dnunHwMtWygBp3Z+ECu9e5K4ED+o5nAseMIOSGesBSQb4r/mrlPIupl9puU+lyNqj3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjQmz7OT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjQmz7OT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C058CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777150653;
	bh=x/0GgJA0GhiRF4IA3PD18EnLPXhR0V5FLvSkIQDjzY0=;
	h=To:Subject:From:Date:From;
	b=bjQmz7OThPMDTe4KiUWXyJ3gonLER/ET3d05opKspTujBG21WWjkCNHCGW3t4hMmG
	 6+JUvHta/wHwdaT9y1mt9/l5AcQz2fhMG85aYDzdcR8uH0T02v8CkEDcRc1yhF7NIz
	 2jc6qFGGOij4LUS6WF/pIWQsUckE+x7KKs7RS4RBhGaQ1k0nybPt/hQrSS3SAgg9FI
	 7x/5oGL/tS/orVK/AldU2FgK6ic50AFa8X0YR5oii10N7gsZhDeaRgFkii6IkRrdi1
	 FIeYStuAzs6RVlA8IlGCFx6xmfm6D2vTzgsl30FAa5OmvMq5Uid9oNxx/nPkXraEu1
	 ZY+L7JF4zD4hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4D7FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715065368.3774.10426441801091693070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ec71ffc2a51b997e05646e80d9269ffffa9940dda32eb9a8756f984b3fc5d7
Date: Sat, 25 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777150653
