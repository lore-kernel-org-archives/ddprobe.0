Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9BB18F2C6
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 16:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719420803; cv=none; b=r88+kUMELlhaI+R9XH3JfXv0uYXnBEPBX3TpNtvdScRCDfYEhVUxMYmpCUVN72yYicwabwDi5G0HCURpA5Lv+f1kxXOcte8lZJ7VHi4u3auVlTBuknnQVy4ABu/mRNYyPMaVTFVXqlWMJuyiYxd0376iJhqkL2ub7ZYNmC1hEjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719420803; c=relaxed/simple;
	bh=tHq2stm6X2GQixKy+tyyixDG7ebdoB1NuoCiZ+sL8F8=;
	h=To:Subject:From:Message-Id:Date; b=V4Xfq9rQOnjZuT+mWThwUgRIz/6MH/nFdCdDIsMMwQuAy0qMPxaGB6OA+G8EDR4AS3YN+fpWk2czPneJn+0IpKs7dKbAvon2dUblCIKwOlo4+9xZAxDAKdGKqpTFPuWa8cVvW9qanHXZ3E9fovttNI7T+asfZ1EnNvpLKiJMPxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPTNgc1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPTNgc1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35BCC32782
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 16:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719420802;
	bh=tHq2stm6X2GQixKy+tyyixDG7ebdoB1NuoCiZ+sL8F8=;
	h=To:Subject:From:Date:From;
	b=fPTNgc1pO7zyM4L3KrU4JIo9xz0W9vYOIORGQHiWuCP1NgLk5t9tO6w5EYezZwQTV
	 a7qL53/ajBT7gw08TMEl3W4pzL9K+bxxJg8qVOlV8DQP0Nf447VLfZzETNO0WPLc8j
	 R9UWU5wvJAicV3jgnM8R9/9zf23YA4RaMfGYMGGjmMU2kBz0gE53eTGQnUipxLUnet
	 0NIcvmruvqZqugwHwcfdDqk+DNFU6fyIsg4iABRqrNGGMPdy4AlhfTb2EvUuAqnP5l
	 0oP38DxMwLs6u5mqRqPEuBy1ZjIcRvIxHy5tS5aPMPE1VwFSPM2iN+t9Syo/8aKF7v
	 el6hU8hUordew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF576C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 16:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942080277.3589.4253496198363158414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8fa9c7d2c8444026d60e80edc68791b1bac0fe9681ab31bc5efec37535ee1ef
Date: Wed, 26 Jun 2024 16:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719420802
