Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8E13595B
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768667634; cv=none; b=QjcGzGxrdcvdF1bgdnM6IqFoH8QJvdG140kUyCwJbdffGLOJXR+g7BXgOGxHc0tGLvmv4FtG19TGzpHSTxvyo2l2wQ/dVLrHfIr+wc5zM2cwBPFOSxacwmHI55iYn6mb9JvHKWK1GK++lBsc5ei9yVCkRJtiTBW7sLcKotp7l/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768667634; c=relaxed/simple;
	bh=sXY0wPFL4WqbfGDUnCOxo+AP8QbImI/g/65g+ZGdPQA=;
	h=To:Subject:From:Message-Id:Date; b=BMZbRA/BPJcviV1DR7YcB3NC5oxFOrphvfCzq0sq55ZJPnN+G4oSY7AgD+RNDxf9VV27WvfmupZnEG1pFzqOwecD7pEPI6X9z7oVTdKQHQ7JXsNWfvmY3mU3kPm5o7UQbx15vJoM89kCKz8bkKLu/8ZGo6I9W9YfzIXJfzILE7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcBdC43G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcBdC43G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EA0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768667633;
	bh=sXY0wPFL4WqbfGDUnCOxo+AP8QbImI/g/65g+ZGdPQA=;
	h=To:Subject:From:Date:From;
	b=NcBdC43GNRqNyAswPWmdbKc5G/pCCreLsDoa8KZtXoFmEr2n0AUgzeFlM+tDopZdd
	 ElPGKUEc1TNBWS86MGhsz2QrsV2Dy7++t5PjSQTOwKHndb3IfNYQcDzhvo3bJOTq3i
	 ew8+gXUv+rFARvzBG8KOX6c+s6W3cUJdOcr9LxinZQGVmAB//JbbifWzWr8OlL4z2G
	 3hCyjZYCjt9vvSMyhaWzROTe4Imzl71fvXA0DwM9NE/6/G57LH2lTHe8aVoYxPGIaW
	 9/6+p+7gIV48FAyxrjymENf20Ogzm6DhQIUfWBjI4kuLnn44nC0DhwxYDsrXrU/XQ4
	 hFGlh31x+8dsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A19C98327
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866763358.11040.3763641325744326868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb083a156a1fbb4a0f38b13600064ebff4a17bce98bc6fbb116dd90c9d9eaa0
Date: Sat, 17 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768667633
