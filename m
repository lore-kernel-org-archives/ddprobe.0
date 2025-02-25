Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAAC2638AE
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 11:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740482334; cv=none; b=BP8DzZ++xYGPRIy7duMW651krMsEPLjaw8Bnupsnzqlpp8QM4VJli6AswQbH5VoalQ8Sv9poGlxKJ4Pf4K+s+WW2M0EOeS6vM5DglzdxD3xgbd4TfZrAILX69+ZhZE/i4g7ynfVMUcyEE+IZzqwGGs2H2goUqVVEM6bAC9J/Sps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740482334; c=relaxed/simple;
	bh=QABnbQppc4Z58v2qrAYgkIiDdPn4/yKZl8c9P6ilW14=;
	h=To:Subject:From:Message-Id:Date; b=ZkQx7mixBGujWMS5lCHZd4/nMoRdiU3FJ20xHph9Bmuh5nvgbcyW84jZbdPcB+5NBLFEvsm4s7e6PAKWa+auprENXxCO6Dtmz8H0EXOBzEnnlpVO6ntkSAPfVXB+nEwRmBAMU5P1N1pgwCqH31fmer9dbnVoIk1d96W0VRioNvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4lZX3/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4lZX3/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F34C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740482333;
	bh=QABnbQppc4Z58v2qrAYgkIiDdPn4/yKZl8c9P6ilW14=;
	h=To:Subject:From:Date:From;
	b=I4lZX3/X0sEv8pBN3A4IgBYxNmPQseApKVFvIfhBSN67JPSAkZA6jRMsV4uWNHj+S
	 cT8iZrOwCr11Ov3uO2OqG3HmMQliHaKvTvqmdhFgxtfv5p8uXFPPMClwXcmRyvMqft
	 XTF+wynkEU6B12QF6/5HKREEsNVTa7csMR5JYAQi4fiEEpOSsX7+I9ATdgvzLpDzXX
	 ClMJmY/AAba2hIa05rxryqCo/6naNGQclrLyOYEAMXmdbrSrJshZPlu1+2pb2M83fl
	 Hjt0fCO/RNQDzych8T8mson0TEooahmF5nav6CsZBJbUAfIZ6e+lOt+HlCvmXSkX+y
	 ljGR0LnNGxzFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92737C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 11:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174048233359.16261.17809107320387840265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1870c895d20c35382d0e8792a61f9e20b892a756aa35d3df2c5e8809a4adb626
Date: Tue, 25 Feb 2025 11:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740482333
