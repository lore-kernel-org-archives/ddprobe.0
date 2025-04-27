Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360D82B9BC
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745718595; cv=none; b=Gdj6woKXdpoPV52XCfUP//4pJaHsHH9yCVPVr0aQGxLJoS3Hnd34MZWd3HcMo7g3OzLmvvU98Jx+QFvkdNRZhLv9VkDO6+r8f+bojpWeufPXG/nmuDF3+fS5KXES9l+3o8DQOes8tmsrJymjOock8bPOLQCOetuPG8bbTCkxO+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745718595; c=relaxed/simple;
	bh=4glAOcwqvgXxi4/jkY421iNNLKfzBEFuJvvOhiNpvY0=;
	h=To:Subject:From:Message-Id:Date; b=jK14q6tSLIXLSV6IRYdfH8/j6QZaaOCZzs1uyMl0uVCEbc+ebK5fgbfKWUDiWgGQSxp/ueHUl4MtYaF2Tv6n4o9aWYdNWfu+tVwyjwLsGXyD6pTQ9YXuVDBus2nouZfvMZb9n9gklul69HrpMeSDGsL1aLNe9l/tbUZCfQHoRo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlDADq1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlDADq1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04A9C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745718593;
	bh=4glAOcwqvgXxi4/jkY421iNNLKfzBEFuJvvOhiNpvY0=;
	h=To:Subject:From:Date:From;
	b=FlDADq1L4kzpZdeaVxVklphEuvMiwUS1AWQsxuzzI1OUzJaq++9MA3k6ra1tpePcy
	 MEPdOIT1hx9M+M0Hk8Rz6bR7RflRCpBltrfl6B4Gthbn3DkgzY3bQwEol/aP/GOfTZ
	 2GQoIbYJsNuNWYSthajOLD/qXZIzFh4g0k02Zyr9TG5cr6JFqFeP5TJUHv2ZLX7LY+
	 eefvAboCzE0J8hdk583VDKahQzPIgc0n5gv7euhik9dFbGUa2fhypHTRzCUs3vijyG
	 BW+SxA0crnlr+d1oSBPfqNrnKHv//jn/VFIVxUnrF297oNbJ5yheYVg+ELXeMRX+eX
	 4uRFKffE6EK0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E270C369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571859357.19900.10336502716820312898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e6c87b29572dd5b19122a0290131d8bec25f0676b8e16123a1bc875c825d8e2
Date: Sun, 27 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745718593
