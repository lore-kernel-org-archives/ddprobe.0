Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EC0DDDA
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 20:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716064343; cv=none; b=TMyqUNLGPKSPd0+ZzW21B72xfw09iVilK7sofwXP37wUTuI/bu4L5OoesntQnM4x6jP4ZE7ZBk0lMUxYS0LFfIJFxkIAjGQEODdKT1hGUHN/769Ddd2ptfkP7Z2++Ek/8A+xARaqy4ft0Ad+cmGwe80W/KJEHlUxg/gL1advmBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716064343; c=relaxed/simple;
	bh=vpWxvvLUFPNJc4ocI64rT8WiSNOzDmyXKoYGPJ9HwHM=;
	h=To:Subject:From:Message-Id:Date; b=FCvQh9q9yR7bdQlL9J71PK1T3IErR1iFCbEHwJ+Ws502GsFhI5OqSVGaV+/i+ERnpPE1kzlFPE/Ba8SPifQnai+VkpfVzLDQQeGXU8vHtFo3+lj0Mr10rnuebjcHGyWz8HYDjI2mf/2ML0V2ui3tHqXE9Z59FSKbNJvxmzDkomI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5VpG0sW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5VpG0sW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE120C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716064342;
	bh=vpWxvvLUFPNJc4ocI64rT8WiSNOzDmyXKoYGPJ9HwHM=;
	h=To:Subject:From:Date:From;
	b=h5VpG0sWd7+w0sye0UUJCsI/LK8NC2ZpFfKwTVraTPrm3t/66xwZURDW8VStW7W5W
	 agVeG/Z+JMfOzyKR0/1XOlYZUWr1FvNxmzwDFYeyA/PxN3UBAcWOQ9wk0uhD7+dLUZ
	 ndyNNk46Yvx3YnkWNoeX7DIZlfbeclepUEQy/erfDI7yHBdTBJgaoB0a7AWxNfGdjr
	 LZPlMXQwF8LoJHg1U+l5Uy5fQ6GrhtmaDawpbNELmfde/l0kQgr1EiVUtmDElNV8P9
	 Rt5cKzOufP30CKKIOgoNKLvjwJ8KrYTw7cDwysibeBDI893OYRou3b9cFlA5oGvyKE
	 Wfi3v/iB0CaKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DF8C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171606434278.2749.13961900770343865857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f096dd40dfb0f889280c8f6623b662b1f681c1c01340a7a7432bdff8cb35a99b
Date: Sat, 18 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716064342
