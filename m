Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DE937B002
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789276834; cv=none; b=KuNuB2KILZ6JkVi95jQQBWudhCeNYIQEimJ2UiBvPD2cMSH2NTZ/t2SGdWQOcSi4imWWQ+jNGL2h0Gu8/radeDbYnOmZilNMokCGOuUAb/sZUNFkHk67ZnkJ2aqfb4SF7w7XZ9czNSuWn3Gr1mKAwp6n/Dlj6SuSEv7edEci4Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789276834; c=relaxed/simple;
	bh=E2Rs4iOA1qKA580hZ4DIhoODxKiRfTv/qYLUPYkNd48=;
	h=To:Subject:From:Message-Id:Date; b=Fn6Qzk5m8I3xjJWzJ5HoMJjjA3kIJG0eEl6N6pEC2GUDslk6x0gB9Xhb+p7TM85M1cv0dCRTBmkKDIP6q0DMGpzgf9ZJ4yGh7QkWkGpydnreuqIOQzlbz9+olWGFWWkptEd48rDkoUCf4CgP4qe9q2EO5TKdG/+bLFSgJNjNkMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ukz/ZCcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ukz/ZCcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB10EC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789276833;
	bh=E2Rs4iOA1qKA580hZ4DIhoODxKiRfTv/qYLUPYkNd48=;
	h=To:Subject:From:Date:From;
	b=Ukz/ZCcBceANEw/f7LYwXdrKiJEjTOACcLNpqQ3Ix6yHzstLBkvHBpVj8hm59rpR5
	 IboZsL68jFkJ7VuxEWiLkx+cXKJ7CBJ11FOfONkNq6BNohw+nT/GbeWqAil22QmfV5
	 dOrd5abvpIJ4LvTn1E/2kZ/DawiLbUeSGdo6uSTahkKNNpQINsEnjlBqrHDgCr+UpQ
	 /kQyCLDr+UZrdMwauSOq+GOgSvOMjteFji3vqeDOoMf4B4+Zqs0DJu40NGrC8KrQ4L
	 DvbpdKvk1WxWxspt8nr49YmnHFvXDhrCGJujuWBQGXEz49R8zQjpoWRjAe0Y0fcc0N
	 vbl2L5lS2XDtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91FEC88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927683368.24326.8278562965334130483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e553715a6a4c799079d81494b2df56ca7e8b176a1eeb846d98baf2153765e0b
Date: Sun, 13 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789276833
