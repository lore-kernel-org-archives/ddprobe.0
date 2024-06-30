Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA8A1E878
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 13:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719753263; cv=none; b=rgb2WygiBXx2XXAnyoDLTKDi/mY4gfzesF+ZNQKozYNo9F2J+9HvZtWzhLlS5HFrFFkvm0AhOP2EGq0Ebx7x9fYesW0S9Tb/x8xLwOfhHd9t5TOLhdda0BEqFxncCbrLT1aT5WX6/KIBEWZ0zDs7G7ik08mnH2C5gZ94JzoV1FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719753263; c=relaxed/simple;
	bh=h4vCObAG0t+kOtP5GQ84xb/4J11EjFy4CbLNOLcAjH0=;
	h=To:Subject:From:Message-Id:Date; b=g9BBMrQRKIeVjSD9Rtqf5nPw0EHPSICwLKUoqxRcjer/poskx35l7P4nm1BDIQ8Au/VGUSeoeyOjRiPKqawwHoTZXk6UbggGjjakXWxuKGFl439JX8nNU/hlbpxa510uCs+XDX6+bgVk2KY/PVbUvauG9gR5PKpQUvqF4pV4dwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbFH+wU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbFH+wU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4260C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 13:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719753262;
	bh=h4vCObAG0t+kOtP5GQ84xb/4J11EjFy4CbLNOLcAjH0=;
	h=To:Subject:From:Date:From;
	b=WbFH+wU88J0Ra/eujXtvzbOaAgNPfU+LcHwgy14QpJm7A596knHEWNLuaWDle9IWv
	 LYoxVRZKaaK7lgLaAqvZTFp3Ht0NpjK/qWFPBjrBut4VTagxsnqRV99b6W7lN9Se1t
	 KWxYyAOWeoHKQKl2VhbTppLCx+WvXG0TG1NHNDj4rPEs72kmsSxxOuXAxSdVCYWqbW
	 +hH5k6uCLmv9IsFc273JUi5gf7XS94bXrjm4iLrdv2nJZ1luo1Nt3U0zhN+k3IZP3L
	 jK3nNxqoPEXI/bWaL4X0+Nd2WUMMoFyrqErMfxFgVLm6ZVe0uoZ8qf+v5ZiGfbpDef
	 PNz28iE7QR9uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C020FC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 13:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171975326276.8098.15444814540383770910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aafb2a29c1ea7aec50858343123719e971f73d49583ab76d3a3fae0214446cc4
Date: Sun, 30 Jun 2024 13:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719753262
