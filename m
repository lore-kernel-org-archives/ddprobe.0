Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF4413C9C4
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743422394; cv=none; b=Zvwi9XNLgiPu8kaxxsRMCoN7CBl4iT+5Yc/DulWyAhpffKoDC0zjisJ+/RtqmR0Q3zOcJKYqmcGfcqc39BMpnVMfCQ4aNrBOEjRkt+/ymBmPJAmxD5AgefLtXl3ktiXKy78ALE062z51+4Qa3o02METgf8NQHwxlGb4q5GIJWVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743422394; c=relaxed/simple;
	bh=JptwvP2ky7jXmSqLUJbf9/BwmHYtt0dnlkB3ZWPRWIU=;
	h=To:Subject:From:Message-Id:Date; b=jbYHta6xGd7hvx+An3rnxduQASbLDzbloL+Et+iezUGDfZOuj7FrSC665QDUsAuhWSoMQqHxFpn3LJMRgAS8FTItxlaQEKeTYnKSw76LW4cpamX2kSPlJ7VovsMHPsG/AhtWPje4piYtVrkW0JQqI6TMte5QwagV9KxMSocfCos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0K4wmlr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0K4wmlr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2B5C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743422393;
	bh=JptwvP2ky7jXmSqLUJbf9/BwmHYtt0dnlkB3ZWPRWIU=;
	h=To:Subject:From:Date:From;
	b=s0K4wmlrStndpSht9sU90deELjD5OoXq9mZVsG62oOkcfJs8golrycjKfFfuekF7S
	 AXww6CmyA8OmCRlAoM4Vq2EDAto9lDs+WxlwtckACLc56ppHXWXf/zaLrkKFKlhPgF
	 isIKBlyk+CApUJv6yUyIvpvbsO/eSIenO4kTK9Yvgrs3FpcP0ApBQV4lO3rNwZtRWz
	 9FwBxcY96PJdb/1oiSTW2f8TNqLW3z05eMGdnNzIAl4B5SJaLV17msRx6DVlGG5Kww
	 7oQSDatSHM6F5UxRpVmQDIlqlGL8b0BAiVh7+Vu+ob+Z+LWpn4tYD8niKmmAzsGtbu
	 zCVw6V/f41TWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6AEEC3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174342239367.30781.3698498997508215362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c4b7b0c3ee1dd49039a2a03f65c695e76f3fad42f18e7943692c0d44dedcd6c
Date: Mon, 31 Mar 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743422393
