Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBCB331EAE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781034334; cv=none; b=dAhvtQ8cFnhD0m39Lt8qob8DTiZqiwGMLMDdL9e+iGpCGxsstUqwwBDNavTvPx2fSO7l3vGOLLfAN920IjBsrEFaVlsLtm4JJFeSNFSnpiHfXtNReNEeBqyWZPVH08Zi47v5dqBQ2Uuwy7xit99vy4LBvf/4mBxrShUMIYu6LOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781034334; c=relaxed/simple;
	bh=Kh0ws1g9GP63ocI+t/BSN90nwwJD/exBcYhbAxxqJIk=;
	h=To:Subject:From:Message-Id:Date; b=iJxoRRIXs1XL8ooJKu+nsl4A9YlwbKkJJR1Uiwjo4sHj06jApIOaROUP1OuHHagOjPKh0eW52fnYyzcz3FTfD+EApTcKQSKb15El//PMXaKKxXUHgxytGhXZIla+WohCBfpqCreVmcwJ5gXW+8aoXfxsaMe8EAo6TLnByl3LQZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdEiV7wR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdEiV7wR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3850C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781034333;
	bh=Kh0ws1g9GP63ocI+t/BSN90nwwJD/exBcYhbAxxqJIk=;
	h=To:Subject:From:Date:From;
	b=qdEiV7wRwRuAVnajmvHa5kPWJbZtcctlJAkGgEJu9KJXoCyOG9tFRGunC8f4anb/b
	 1mRyj65cWy1pUpZvQws/1x6cZplxL/s2+98b8SZwCP2rSddUq854JjiklJiZDnbyge
	 xKNsYIKthqTcGYw9vq+oEQ3zeVw0aaPOAL5Tmxpf5FUq7G7y+8JquLmXlClHJNyISn
	 IFnNS6I+m51pX0HmKU1gFly1Ow+TNFgzly7aR+KbuQG/BpaDp8v/vyjS8Wb4CIZc/t
	 3NsKvKaT4uwGc2ukliKkIP4G2gXfF/qXLYYFP0VMs1KLbhEzL8nGgXw5T9+vipbTdY
	 f/Vib0Ndtrieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E7CCD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103433368.18757.4687821008979695237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565d337fac36945dc19a58fd7534268b36279d0104275bc587a6a1867ce9ef5e
Date: Tue, 09 Jun 2026 19:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781034333
