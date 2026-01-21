Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D4C8F5B
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768980834; cv=none; b=MP2zT6Hk20Uh4I/SEnzQLvLgJyMiYV7PJ7oZYZsYa6JKk85TYYw7YjnjFdZYBDlDmqslctE2VsX87PU3ppu/8118P8cuslpoJunDOp3mgZCBSVCUMdNPyD1GzFSdtBWbRMxinZ6qbK8mUXm5DVYhVZq53cFgxjgMgNo4ixZWGdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768980834; c=relaxed/simple;
	bh=e/IVTqZNo3uxItm//4HjKE8fVawNG/7oTIsZ1qOzapc=;
	h=To:Subject:From:Message-Id:Date; b=qZvc93taSJLzU/AKF2QC4vuqX/g7JZUZsR2E7e0OhAdcr9DABuBP8YT+Oz6z+Mhgl0cLhDKjmCo8SvCW38kVcxYlyjg0v+6cL122gYRAi/zwwo/yihmCtWCk8iq1QmwnPIvhKMuj8yVFSfL/x/4m67ehElUHVH4jk4syd1S21WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3BOXd/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3BOXd/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68A3C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768980833;
	bh=e/IVTqZNo3uxItm//4HjKE8fVawNG/7oTIsZ1qOzapc=;
	h=To:Subject:From:Date:From;
	b=q3BOXd/3DUwE2mcvvlMkaB9SHuNVq/nM/MhytgLJQlQKaekJTq4iQAmA07xviG4qM
	 JtJmcl8PdikoYqPBN+JL3zlRbJqTVkqL4iYKl7nEwfnaQLeSnFqo2mM3YmHYZNY7YY
	 yHC+ueFjtnlCbkXQzCmAtKbJtJqTOmcjnrO6ry0uBfLEMe/m0Fu38hTVXP2uRCvtNP
	 P/PknoNWu/UiWHMs6o4ufZsl9GwMk6iJPoWrUMY7hrOhf4/eLSsHDQ3+CxvYkUpRad
	 S+I7NQ4DOTSUYcldb4/rSC4dtng4eiljNihvF8oc3G5MybKTMNElrKO1IfjajK8/9H
	 tbQPEF41jBTog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92079D262B0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898083359.13179.6552067070950024034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b0ddb0d8507d7827d4834820d22a1a45d1f7cecdf90f523bf85d9a02dee202
Date: Wed, 21 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768980833
