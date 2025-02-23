Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618EB3A8F7
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740339534; cv=none; b=o/XyohImXpzKdTYLiYWEnfZ5t4xJxp8XK/F/nAMbtLF9S/BQ/ume510Vq2drAgVSbIhRXes2tvWtrpW8nB4OqX/LYEBWetJnbQKeN2ncJiwTUCe7Z94MKCQa7ZVOAAlEFpyrWHS0E1Z2A9gtb8KHjybxeh+CTOwWnvNXHlnqmPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740339534; c=relaxed/simple;
	bh=wBra77XHbD61Qpv1OwfI8YyBkPjp9TPIg09UsBKm3r4=;
	h=To:Subject:From:Message-Id:Date; b=BQzqo5xsWvlE6k+5r7iw0BsnRX5gaLljsOMm26grYIVk6zHUA2RkWGGn/IyrQd4Z7ux8B9QJxA23mm4WVB+d9lu9ikDNiEmBletVC7dogiOIYvvFcN2G7Y/oVN1AN4J8LB6pSo6RaVpEEAW8f70T9OIs31HLJ78Es6VLq4rx6jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7sZI35q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7sZI35q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1B3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740339533;
	bh=wBra77XHbD61Qpv1OwfI8YyBkPjp9TPIg09UsBKm3r4=;
	h=To:Subject:From:Date:From;
	b=W7sZI35qiIzJ2j9OkOr5IH3Ry5hS187L61Hl41EOj0xnaFgm/PBESWsGpTx3A8PmE
	 CfKNAy8SeAooGB+tXs+TVgoUF4A7pZtIegjSgJXQ+MnThyZTfDMCbFZhG7dQkKKx5w
	 60ggzEQtTzeao1e5f6kZmIxnQu0EASFh5eEQ0qmlytusMrtv9pXNmg8YSBbKDSJG4e
	 NEWMZ5IO+4Q64hqqwiC1GUc84psPx/aIwdyM49xJPRUEK9GtTptRzrobAsMRfCdVbx
	 QF9OCms7rGi56MSLvhrdw4RXPExOFMtIqAMwVRDWi7niK+zSKI2gcfnZZPyz/mhD+s
	 XDomfKC2ZuCCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96411C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174033953358.23459.390044861032312451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4d8722cc23f7d94ab635cea457498370b07df214f340cdf0bfd39561ad7e1b
Date: Sun, 23 Feb 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740339533
