Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1300C358D00
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783864114; cv=none; b=JyeppZ6lkNC4ddCipLTH9SrqdUPSCB/mHE5V83LKd6cU5+WejLf3Fm/J35v7sj7TzhOwZQkN1aMY5HwxIamyGeFuTH0UepNL1HJE469lpJdaYQDpak1xvC53Rji70DV17n7mV9QkCCiYOuklYp/GZL5TiAT7hjoIW1iveQBQSt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783864114; c=relaxed/simple;
	bh=Oql3nYF4noGFh9qXqKWio7L0edAWqdoUlqQOxrvSfFo=;
	h=To:Subject:From:Message-Id:Date; b=XmfhqGWswklw1ka2xvQOjsVxHckYdxaVZuVnXWJYmhzfYTjNLe83kTpuUGk3j0kCVoAyMJva2mIcTn038kCG+l7Rynfx++JtgZli6kCkaCGEBQ/4RpnB/r6Sfz21ic5g3Cmdqf3F6Ux1F9e+6sDr0752N8E66TqckQqM+0AJFmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWIpQlFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWIpQlFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2932C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783864113;
	bh=Oql3nYF4noGFh9qXqKWio7L0edAWqdoUlqQOxrvSfFo=;
	h=To:Subject:From:Date:From;
	b=UWIpQlFZ07n4080lyUGt7zeFZ6eyPyUG3udmI3PyCVUf4HfLYPvrCk7cTPsq1Mkb/
	 Poj5fyijDBKK4BANYWxyDKdqZqYxpX3W/K9CavDt+QwmjN17Gf/DNTY8xyEuOxz6U4
	 BDS164OEr8jpt3/9/kxCOy2mwB0Zq7kv6l44KxNErEnBgmuZLj0xBljHT3yHbffsSN
	 +PJLYBOHqtmxHVTHfBTz/eeguSJAL/zfoKYzoTZ9GuTQQsd7Dei989GOR82lYmMNqT
	 tPH+GvZzOhe5BDA15rnkA+L5hwNG5ErWqwJmhzpS/n8Y+7vkslk79nd8gLqpKbJYMN
	 qRNQ86BlQcbKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB12C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386411368.21342.7105627220870723602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43de5b64d48ac68af76320dcbce82c42d2268285bcc73eacf81984294dad556b
Date: Sun, 12 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783864113
