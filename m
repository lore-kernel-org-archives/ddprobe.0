Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC1342B737
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769030034; cv=none; b=CneC+vmU5s0tyFXE7sl9I3BPd9+5XnP06VJUgHQcny4T3kjXWqoT4MQrib3vJF3MhGkFYDFxtUO5FKp8oHzwXY3KyL8tqh8UFLAqh3fqL8Knd1w8a2o/r5ZkrcQeifw8VygG+uj+SApYTfCAG3toz6bJrJOJUGA3HeApk/scXYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769030034; c=relaxed/simple;
	bh=8gYSEfE+tFbTBj8CKELpIGLJdX+FZXwLiw0AlSSOfS0=;
	h=To:Subject:From:Message-Id:Date; b=ILSJnrhCckVbGNO1GFTprdQqsflbkZ63ycqPQUwu3+jr9VuN1rZjYrhn5wPfTrZTXL3zuq2hP06KDFK085tBr4QDbzPmcYcFWRGRAi7TYgHmIXUyY/zOcS85PftsZx2MvwlfF4An4Zfqq0cxW8Ki1uLgU90ocMm9DoNMiYnntp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zl0adzpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zl0adzpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0291C19422
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769030033;
	bh=8gYSEfE+tFbTBj8CKELpIGLJdX+FZXwLiw0AlSSOfS0=;
	h=To:Subject:From:Date:From;
	b=Zl0adzpnmtyOaLeh7GqHbIyped7Zt7jl1WqMeiO4++5gyyu1Z1jYtFssAEHXUKn+z
	 fWZjpz8HPlsVPCABT+5gx0lSLBtroc0n5awnQJw5sgwxES/5PfXcyPz4sYTtRh2opx
	 Vnszaul/ET+fXKWMHkkINa/eAIzdGxq2uN5mER0/ht0zYWTV5/u/BzM5t8r9iZO3oL
	 bNa72SlGCnNiaMp/gjIdc+vDleHysP3AcMZwucdsAlRFFFT0Qj2qBmdz+7/VCT/iU/
	 Mkid3XVDbF3jGTehWyyJzfdW5jsxH3T3R5J0R1emgpR9Rx1KLOriBefnj4hEbUwioO
	 8Cp7U0IoFfkGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F32CC44500
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903003361.7658.16445090184261917710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e77c2217b0f64180ca4157ad01a652d31a92d6e62f624103b6e6ae3b9cdd6a2
Date: Wed, 21 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769030033
