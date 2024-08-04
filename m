Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3382B1CD2C
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722767154; cv=none; b=ZDraKgGmH4rfCoiF93RSc9R3MD/xeuoKICv/MovBij5evHqlYZhstbzdtYrJaBRVVV2kl4W7N0oeneftIgW90lpHfyH5G+EEYT+5GI/a0+j8bBIks7zyzqbhBvTnpjoR2vZms4eGRbqvsh8FtoZs6wU9kCq7Gc1hmJ43hBqe8+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722767154; c=relaxed/simple;
	bh=ggqpFcJ2imSwl678IhwdCIJMujDTGVbP+W9JxRKj3Jk=;
	h=To:Subject:From:Message-Id:Date; b=Ky9wxya7Z3j+G5/MnTMSlmUba+BB8EnUg2HHZXwYg2yWI0BAFII2/ujzfeYoWyGWizc0HN493IgeAygQhfsvCLPL3v4qw5ytsj1cJVYFcoBiQbw5nRaAIMyEPozXh8ogvQpobZkOw0hXQtQ6q49pLA358qwig6AGsHs6UjPIpF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgeAZr3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgeAZr3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC87AC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722767153;
	bh=ggqpFcJ2imSwl678IhwdCIJMujDTGVbP+W9JxRKj3Jk=;
	h=To:Subject:From:Date:From;
	b=HgeAZr3vDfInHpXAgJt3BjY1aNhyDojT1wwohklUiiwDuPwzCSpzM5hK1xQbesAvp
	 XJk0GP7bC9qduWUZsrOsJtj98Csg2IZmhdOcrMDwd+MdYe75MzZLIqy8aTMro9XvLD
	 v+kvTNIxeca9k6fJZpeTXpJcIXIpv414UBXJOZ9CVquz1kBY2CC8zl5I6LoPw7hQUG
	 l5S9cV1K4zfOBaS70J1xCajbrePSP+yCEUv53Z5yxUcbWATPY0nyiL8PFWMFzLvYwf
	 7nmyJAS5APjLF1vNzzk2yquvicRlrya79FsNmPOF6ObeZcnn1iPyyPIWNuS7fGtwuc
	 uw2ZzIiTcazDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95901C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172276715359.22775.8682023823341253815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4d2a945f833b17d43c06a989ba4403f735be3efb71d7879f1fb0db9908abd0e
Date: Sun, 04 Aug 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722767153
