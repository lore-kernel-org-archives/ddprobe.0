Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA3F1C6FFA
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745734194; cv=none; b=Nyg245/mcZaYUy/jHZqgsIF3rCQ0KlmWy9qHhKM2AaJmSfVWZA0oq9p0ob+0i2RKT0+9kK2laLHcZw1egOIhVxeJ2nhl1qjxmjzkQclpFxOIoa83zwKwMi+tiq72EOkM/WzvypGoE8eUudQ9v+g0YkIbNFagggrvHSE97+8mhbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745734194; c=relaxed/simple;
	bh=kOSh8At6I2k95LrBCCTd5rHKQRyb/HaPFgoa/9GKZhw=;
	h=To:Subject:From:Message-Id:Date; b=dZU1F8zpJeLlBe3+nnKYbLX/eWqXeF0UbVU2VnG2vKqw9SjI+r4kearP/oHf4WnF7DVuL/tFNjuFnO3XLPLB+K7Cv2TNgTNlsY/65NlugCg3KGRRdUWng6X4Z+mDvhiVWY7FwoYKqskuiMQdNLyblrJWWGQyR7fUDyiv025UE/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3Gu7tKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3Gu7tKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BC7C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745734193;
	bh=kOSh8At6I2k95LrBCCTd5rHKQRyb/HaPFgoa/9GKZhw=;
	h=To:Subject:From:Date:From;
	b=A3Gu7tKrqIuEaTwCBEs3jOygUnxpmsCDvGHzDOLHtH/pihSRZ3SBJpHrPHc8tFFzh
	 J57v6R5zkjt6S/8S3jNtJqY72Bbl8U6uLSOp0TT/zpd35YnSSGzHlqKsEILOyv7JyV
	 j1eU8JiMPVcdSQzwGBbnoAtvTNpwmBK7pwo/dnKdzTKTK4zSbk1N2h2f1dYTbUngS4
	 M6ashY6Q+it5O6BxqzrN3RILsvCuU+NhRGXaxycXG7ioN2qPGVQBHbo/CwB5aXikEQ
	 1gjp+Y4zJz/5aHMrn98ZmW9HeUEqBsPzQWZGuC7zPluwi+pB/zfux/9znelsVmwC7A
	 hwIxcyVFJ4YAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9484FC369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573419357.4325.3175471557615292058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9861e2e2b0bbc718e8ef584396b0f331c74f19792f2ae64aaea5dacdbe99e608
Date: Sun, 27 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745734193
