Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FB4170836
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729046154; cv=none; b=UJj4lsFELwSRGFJH20KkO2f3jG9m89UH87XzPY897SDtLGKaoDX1Y5Lhcz9ijAw3LlxXnlvGJWRD80IFtW8hdbopO+sA2M5V7pQ3UYmLjyziekeMDf5ghH6mbJPpjqYYim890xIvR/3FdSkC0lzYCkhF2J9B7buNweHytzwzurQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729046154; c=relaxed/simple;
	bh=IZc/8lWL27OvTTRWhVHliJpVa+/V2OChKiSwMSzJpf4=;
	h=To:Subject:From:Message-Id:Date; b=ANEI+l3TmTi8RBks5rC5hX7+bKi2flnxrGJo8cOs0vuNOFS1UMdVcBNGlrXMAZAiY4JlhDWBss/sX3LXrurb6T/le1iaSqROUw0DNsigao+JC5en5xlbtbuPVUnvHphAFiVgMQrDdGj8AlGRw0JkXVmZbKazc/2m09DkLr6S/to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZN0xNmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZN0xNmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54A1C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729046153;
	bh=IZc/8lWL27OvTTRWhVHliJpVa+/V2OChKiSwMSzJpf4=;
	h=To:Subject:From:Date:From;
	b=mZN0xNmdWm7ry2XD0oG8KC99GmqwgnYvwsywOscKguOWDAWo8Hxanxcdv7e82UV23
	 yd9E6bQOa7ibqaukpTM/l7IK+hkhGPbGvA2awnG9VAVMWZDpsBM8tqhp6t2QfvfcB5
	 FLBzZiqg/HsVheLTmPzXz8hDgHL2K1cjmOm5aqLKLQAGbhEEsicjB8AQSyNVdmWgv3
	 c/vQbpdog4nNCLuWxlbGUruy//jOY/AD/rPyLQRSfyuFoussWUhan9hRNL8zfRgUBY
	 Xudpxqykj++xBiKx4wRz8KZSS2U+KgcXoeqd9HTCLkg555eYnWbqXirJHVpv+qenJG
	 0NFPAg8VEuGVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A50D20691
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172904615359.9193.14842307624377869051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4da7feb5e31c3f32e34d9fec2410dc885b3f56e29b4cabbd6ba066ed177b9b
Date: Wed, 16 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729046153
