Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265D06A035
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712576897; cv=none; b=QKL3bpno3kwEy2QHJXDqG9JVJIQGlSXzBisCVD/nExzIFMixLT5nnZiyic4+XWuM9gPq5/bBI2C3HgHw7JC5upgM1muqUN/VT4AcZQV86ci3zNsCunhmb4gtShVnjEYdUaRIQeg191sK/ANrAFHOUxMl4kwIG5GugLScEQ7gqbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712576897; c=relaxed/simple;
	bh=ADoBaDp+IzQHh0QfxqfsKD2gGRgaJEPkC/BYiV8aeDQ=;
	h=To:Subject:From:Message-Id:Date; b=cUjw/aFBGZrtOwL3KmPVHCm0mzA+DROxRMPr0XEjW4ErJVjV1oTSFvvtAvL7TXaP4u0bHH9Lw2mTjkXn5eU/LYnzL1d/6D075SlVfPBgP/OsV8HRWztR6oimSGZpTwuTqzWmsUZssVxZ6k4H2kEgVajbEbp8bf/9xtoartraI0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVPo1P7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVPo1P7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C77CC433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712576896;
	bh=ADoBaDp+IzQHh0QfxqfsKD2gGRgaJEPkC/BYiV8aeDQ=;
	h=To:Subject:From:Date:From;
	b=IVPo1P7uZ6NXaTgq6FwZYFxb4rlWhsMCt0NxXzcg5wS5HPoz8Rh0DJcPEuRBikrR+
	 nBAI//sQ6PUw03+vxLy1Qld7ZuqosDbEl5vV3o9Hy6LwUDqGtd1SFxCYuhiLIkMfoV
	 4nV8GYOdOA+4oL2VSgMPv9eLh4s8KpTHJEj4qkJw/YHL02lEJ0UqCsSn86PhhFm9Xg
	 eX/ALQirRk96jKxF0zlqA9AqoUNkYQP0sQAqEEpBThe/FK93NUyDl4Sp4ZS7VdftHb
	 sUMeJG+MJvJkAU5xF4ka2BluGotIWf6DdmzuC3J8JrFoy9rExpGZo4cuyFqtZnFMFM
	 MeGqTFms5NK6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75969C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171257689643.10301.8629157884474059150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33618e87a739618364e8c2d55ab177ccfde4abef7b7a1c560ce504a09b9f6bef
Date: Mon, 08 Apr 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712576896
