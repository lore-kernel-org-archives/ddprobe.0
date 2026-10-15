Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2648E33993
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792023034; cv=none; b=tLeCTJVqlOK3hAYo6CyKHnnEDFfHVZ5s8AGZXJtgbmSefSU3YqlFwK0zngGROCGle34zH3u4d9GjkwrSzmrxggIMKGYDkt5L364sqr3ILJEJbL9hREHXtTPFYLzM39jVGeSzq/rep6PuhwHnhvt74Q02jyhtoZ+qAiajR64lNL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792023034; c=relaxed/simple;
	bh=x+j3lPzO9NfiAMFrmQOz+tsMQsNExTc3kH7SX/NdEfQ=;
	h=To:Subject:From:Message-Id:Date; b=GgPytUDihjMZ7K+iJCvHSKKcb6kTyY342qmqo5nRo21SwTjFP6AfrcOuF3+JZMETV4pZzU3C8J04HHRd5J6YSFSPoSjXqTxctY3l5azX3uTOPu2FYjll9/k292hPFMHVGLgJAWPqDbbTw3VKf1g7ZiWqQWrQh7sL+15MxkLndhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDKW0Mkc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDKW0Mkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AE7C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792023033;
	bh=x+j3lPzO9NfiAMFrmQOz+tsMQsNExTc3kH7SX/NdEfQ=;
	h=To:Subject:From:Date:From;
	b=eDKW0MkcNwmwMyEizr6iz7SSxvFGpGIOg2i2wjHmdhyXRzMDujZK7hfuLZhvVZpUm
	 QiJrK7rzUL7gRkbOOdBKv6xGLANzWPDva+2M4LsOF9294AXQMOdi3RviSC2/GzwmRh
	 8B2adgUjsWxusfQ3+77fjPptTmbZiEFqaqa3Ud8mQINdFXuCgK4TjLMHnEabzPJ3p+
	 PqlPyTgZloY0XxiXG8zqm6lwnbI2RGU9iQMMv8I1PTQ34qp5mvfwo26f+ZsitGXZfv
	 HM0PhVCboknjBu6ggPUY41yHwQI/CXNJcKP9eIn2sUbuRC0K59IrQuAw8THOyfmKqm
	 mQB3MCsW39mvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC80CC6B2D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202303369.5189.5975312903486371823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b9764a10691f02976ff907715aabbb6c6e138888db60e7fcbec34ed4457afb6
Date: Thu, 15 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792023033
