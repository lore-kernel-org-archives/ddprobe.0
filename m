Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13302274FD0
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783739314; cv=none; b=dOF84dGFl8BnTvGz65s6eNh6U22g5jaJ6M3g8Kxvdt9pEd0sYH2BBdz1BYDrn4ZxunPZBHArV5kexosHqlrph+1j1RvK6QTckju6VuBisDbboFXTXVvw4hUHOP+tmNQ6JuC5bVFcqvTvTYKp/gPKjak/jTe4Gfw/okfuDRdUMpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783739314; c=relaxed/simple;
	bh=nLirWjLwF/Wa1F1VvWjLiPe+YW7QCPXy95Cb2D8TFSY=;
	h=To:Subject:From:Message-Id:Date; b=mV6Y7F3S9g0pywsMaaLbRyJvm3dT35ps9yoK62Y4T7vabUt26fcS8KJtvmAOL6i9yYdbuy0x3IT3tr4+ahY8B1jdGeC1h/U7A0VSwjh6hzSCrz1GAYxhlDMsCyd5FTLPoa8bbFRmVjErfS90NghzJkybnFvjg6MiOPz9ssB06Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSykSexQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSykSexQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8233C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783739313;
	bh=nLirWjLwF/Wa1F1VvWjLiPe+YW7QCPXy95Cb2D8TFSY=;
	h=To:Subject:From:Date:From;
	b=bSykSexQf8tkGRPw9nq8Y4FbGt/NjnkgcaQ4MvfUJ3aKRWZ+6O46mRHq6j0+hGrVr
	 YJ7i9MiC/IruF3e59ed7CZuR/lusLS/04NX2YxHCb5v6DvmUAFCjA4fzZ9PbQk7QTw
	 RT5QkNLNRlzZ/hGl//7tILQmmAK0MNQoVfSm15HKy0eyjDMaZQlz17XQBki0zm+GhM
	 +dh2xWn6gB34zfOrr+GBgITjW51C1OzSChfY1JMzVUjipEkWxJyL6yIBj7+0u4D4mO
	 VRsIL6z07eRrD3bSkZJhfF3L2GKuxo2nGUM4XIwnMVbNKlm9LgHboNTQbmixAnZvAg
	 LItjfpJ0fz78g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8116C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373931368.17431.6851091365136910329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fafb193bf7024fbc1f20154379a73b24def4d02a22521ecc5db330112c21169
Date: Sat, 11 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783739313
