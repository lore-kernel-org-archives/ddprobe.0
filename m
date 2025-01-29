Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590943398B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738110954; cv=none; b=KkNEIEWa/5oDLFI7WnoBSFWzvX+JIY89vVVvh+l7Mk3SLDdaurCo7xiyasruJqAidlctL0IJlP3v1ABeQSE5rwd90QExh5548OEo6ImpLT5N3k3RC6YtvgBFUV6kZmqgIxLoiire6CMmL5yAd2eKJ2qqQKuZrswOkSYVnDhgDWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738110954; c=relaxed/simple;
	bh=kQxgnRqhSFEJFpbOu+y1zumVx69A2lwBNl05216X8Sc=;
	h=To:Subject:From:Message-Id:Date; b=MKIkrQ/S0SzWlvLbjz0scqtRM+Y89dtCfJ52e/EeYAYVrW1fb++aVRWo0Bt0Y0rwwbrzKlWmsg/xKAq30t1usUEK/lStaLxLbJ/X9sVrCBCqccN5b9gcCXvM5GvIXYYYjVnFA1vEQYjLkzpuRA6eFqwfzzTAXcr4MKTmqRqn8z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wh85ofjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wh85ofjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06CCC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738110953;
	bh=kQxgnRqhSFEJFpbOu+y1zumVx69A2lwBNl05216X8Sc=;
	h=To:Subject:From:Date:From;
	b=Wh85ofjfkVqRECediwDOd9TXvW/Gvr5tFfM3+vBufEZNWt5VaKTo3czcAxSif+BQc
	 QofHp+e9th6xBWWTJrqsjNkuLzwZ0jGREd0LAVjzdYKKmeHlZzsVDX7Xr0IGgLuHTU
	 bHkWZMP+q4QVyCSE/7hmA++pvq3noUol+k/V4GX1HXsbSrttUiTfoMhSeTQpZLPeAU
	 Z/j7pELrymO8dqOlh1jJy+AF4JjkFJeul59MCy2rpyeUWs5SPUxuXnOKkPHAzT1xWk
	 reygMGZd5gONiOS7FzG3Do6Ri8LI1YWcJJqar6oaja/MyqJzgfeJF80wnInKYsAsDM
	 I0UC6gJrXJrCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9954BC0218A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173811095360.10575.14261203401562533100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25bf22c6492c6baa300455a0c605ea1e21c1213c7bde71057a097deddf0d27bf
Date: Wed, 29 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738110953
