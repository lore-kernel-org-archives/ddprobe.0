Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2963B18A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781483194; cv=none; b=kOmyggbOoCPeJMpgGBNlsdsq8tBH4GXTtCqD4glt9lGaxnGA5miJ3Zgj3MCgujR5NlXfqqym+HVyeDZrfA7VlIKOH9e8uhIV3ZklIJFsPbSweyNC2xauui5FZVhb0d7D8nYy1Jktlv77CDN/3qD8eGbrQUC0Y8nZIE4x/E0T1tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781483194; c=relaxed/simple;
	bh=Ry46Gyz3l9+27D//bRhq9u7li7FmC4yMot8ujvlvlqY=;
	h=To:Subject:From:Message-Id:Date; b=OsrVmMh0HgJps7PidX6sEYkLGLWBc9BOtxSJmnuYYfgCh0Uj9l2QjVt2Bbq0IYtvuZBYEk8Z3j82/3nCZRxZpsazOk7g3icYnMZxvMgNtdPqd4y5pxVF7xWlwYPgco6S2fUDaK5kawpe+9uur6CgiQ38ioLh1NpWhVSAAyMCo6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJHkdUbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJHkdUbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E71A9C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781483193;
	bh=Ry46Gyz3l9+27D//bRhq9u7li7FmC4yMot8ujvlvlqY=;
	h=To:Subject:From:Date:From;
	b=oJHkdUbWkFVksZGYQOfN4OaPzxMF0DuMptkTSHaokab6JPgz2Vewv+OwFOn+l/i40
	 Xfc1cggQN4pigO87KZPJvmtocPV+QTYG0pUXKl2wEf6PxvCol6MojQ+4GJqt4e/O5j
	 FtcFBpjSw43NnmxAlO4Mp9ebKvjoe5fMy56vVKE+mruhCpv7zfQFrHCf3KFKamS4dw
	 klCi9KIdGVb3JmtM9eC51Ht5nLJk9ml40Qlc2dOXCYHXgAn+f29Gte0j/h2bD53Gu6
	 MdbCJNzX4jGt87RYfcM7vyA2Sk4rRFnWg8QbpKhYo4T/8N89ygKnek7e+5HkzFyvbw
	 76Zi9IFlCBTfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C04C1CD8CA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148319374.7130.2412855337258118987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0420eb5e06b15d90a3387068e040015326b716bf0bcc0b1a2fd5e0c99013fc1
Date: Mon, 15 Jun 2026 00:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781483193
