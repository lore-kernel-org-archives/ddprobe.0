Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4374D1EF381
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 23:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741564734; cv=none; b=BSlJU7WbYJppjFYkmtSVMEvXlphut+kjI+o6AZptu+01+92ZEVLXoHp5599wJ/ELuhcfdhPRd4JFKY5b0ixRqgu9c/ZrYTFdNUUk0aiQZgb/pTqphtEXIGFM4QR9mXKCwQjcDdNvSy4FXVXGucPye3DjWuoopiQINJ4h57jsyEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741564734; c=relaxed/simple;
	bh=D9aYKTYAd75RP6vftekF6k127op3ytNKQpSHoDXoUOk=;
	h=To:Subject:From:Message-Id:Date; b=lzl+iZ+T7rYaYgqtLfUk4nYfsUzDM2Zje3jjVWHWkGcRMHe6ZYKdkp3pP/dPtZShwY9tj2SDKQHmsYWFhWpuQqZzas++7BHGDA4UMVdu4DeKek8ZoGgqxHlfgS+aW/AoBqbvvpmRflmyFLMzkfwvUUjfTPSdfL6wJIBFude2VhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQFCzBVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQFCzBVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7031C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 23:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741564733;
	bh=D9aYKTYAd75RP6vftekF6k127op3ytNKQpSHoDXoUOk=;
	h=To:Subject:From:Date:From;
	b=TQFCzBVx1batMFAdeb3YtvKYIKxdmF8/U/IicqCP99aVrx6vgkDT/wqUVCj3nA4d1
	 +TESxkKZUpORbXc2bYuDhk5IgMDXpa8oX6es459k5Wa8fHSF+fRN0vHNpP8nFkC31D
	 Nv+WPreo+ceT42iTw68rbgAdg4QAm6gvv7spbUG5UVr9YLWs61KI9Huqr9YZD/6+nt
	 lVCn3XcaPcYPdTCMg6mnmLsdMMYH3UkEa7L44M7hZ67KhFmmSfLA9B+z3x2hFLjXcO
	 Mq3UH0DI6/iI9Bm4dhS6fEG5e9jK6EusQX+dy57Dlyy5noB7Hs7ENzFBrzzudonGT3
	 T9bCQ/0c+9tIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DEAC28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 23:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174156473358.9674.5386397910744179533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82584ba890630f154dde9b1e76de17b5e2678cbb3a302f26617b37fd588ed624
Date: Sun, 09 Mar 2025 23:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741564733
