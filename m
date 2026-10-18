Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5391A3C4B79
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792317034; cv=none; b=No/BMmyryk3vHjoy0TEvulgUu/lQ+Im02Sr+1WT9539SkathlZXBvFRdU7xz61ig2Ld/Eo5U0zw4mCwrhpnFbUFf4m7XnTjlTSK1O+4Bx4kSM9c4Y7AUG+XJY/Og7MHASRlomXXX7om6Dafm7BEMfdOQ/D6z8Hiiwl5BAdXYV9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792317034; c=relaxed/simple;
	bh=M2nz9FcTsi7hUYlLPukhBePlfHbmFsxVIR4ooJiNFYw=;
	h=To:Subject:From:Message-Id:Date; b=f3seYK9B1JWPChW8lcNOi8aQdRHb87Vxlbo983UCBrCbw23LAEptn5CIgBDdswUSryRE7QUp8BehHenMWurxbbyJesetH0P5Ir5pyj1Du5Ui46atmCz87ErMj1dmn8/JQKF2S+hos9LYK8VAqj4TRhv7LXEftPmhlNh8qw2ZaiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ou5o9Mv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ou5o9Mv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33B0C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792317033;
	bh=M2nz9FcTsi7hUYlLPukhBePlfHbmFsxVIR4ooJiNFYw=;
	h=To:Subject:From:Date:From;
	b=Ou5o9Mv22p/3DkkpwHf2Vn53SZB9ppFeE4Gx/OSypAwnpx1RtC9dK8v4d+4/iGlKz
	 6hRXLp8xp8cXSVdHoKaITjvjqQq2zr93M6UabNBkcKuoX5kZ/8OROMo6SY395rMv5A
	 +lq/SoJHoQmS/X7l7Y1SQUy1zv7+YANy4mT8FEONp0MNBpaGb/GNqDfj8+OMZIpOxM
	 Sk4DEhV0FZUbpy/YWbXVniwGjUGYcVRHC0xyBncoX5YXazwOt/wunhBdDAJRKibSBb
	 vo0ZBLWfGMq3mgUlHio+/H+Kv/v1FbEATZHNYcu5lvDYNY+z+B8DPDZMX7VHilFhDR
	 WP+gBx+OX82LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF694CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231703368.10741.9758529548467801134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ec0ac6aa7d6ff3f8eb4cd31339dacda4c4a9e6c7b7b3105d45a0cdf82ec2ea
Date: Sun, 18 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792317033
