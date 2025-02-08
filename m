Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7AC24111A
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739045154; cv=none; b=bHKeWF6FGagjVEdKrILBZJteU+r8S16r2CYe6QoNFDxUHgiwvPhcmTMJjR9FBnwl/QLC80clutVRnrD0VUOCAIGD1O6Q29aF/cZi1xyasNTCb7R65LXEWuSsiYXf1df53GuWuCpMhg51DURBreeEbOYGR4U1IuzhqL57NCOyB9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739045154; c=relaxed/simple;
	bh=sn0par+OTeIhCWMbsgNEg/QGpH/rpc/7xqZ0xBVpieU=;
	h=To:Subject:From:Message-Id:Date; b=MiRVzMuJct/XsJOOOQ6A8uQUoa+OgI+qHIZbSJMJr50O+tpGVoB7BHXv5jGZ94pg+8MXIkcHwA77Ki6Uho4hluAaTHcyLABv2YEByHp9AtisaVbOYyRXG2HW8Fp01H57+3rdnbFEbZffwfECP2jsKyfxQyQSpIu0xvyw6/gYG/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAoUmqF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAoUmqF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B132FC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739045153;
	bh=sn0par+OTeIhCWMbsgNEg/QGpH/rpc/7xqZ0xBVpieU=;
	h=To:Subject:From:Date:From;
	b=tAoUmqF8P6/IyOcw6s1OcYDFwU4YtdpI+3mhkAwBO6HONPhNX0+92dTPsthb03Mid
	 k6aRIpLlfKeBIiM6MyKAwRzi/80tSKV7Z0w0BjH0bv2Rb2nFXOys138xpYUJlHtfyc
	 02I0YR+E61xO2K9xAgO2CM6Y6lZEFkp1lvuWGH3JD7LMqnz61iabAFD90M/Zz+fk4I
	 y6Zg+mJWPc+O8XlJSCARVSR5VtRMY6X7yGIQPzeBMp9dvOUFpfMor45FxRS9dQyeH3
	 /7ZEYYpkbFyY+k5k/1CSjHhCgkULvHW2XJU8y4/NSTMOMGq3PXbRxHb6TuHsfG2GDi
	 PAL3rUTTTU/mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F764C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173904515364.18912.14835675702371398388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d40bd25c996a3e8d507675c647857e39f58936f1da18c189fefe55993920994b
Date: Sat, 08 Feb 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739045153
