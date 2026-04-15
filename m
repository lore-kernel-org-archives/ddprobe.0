Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4403232AABD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776250054; cv=none; b=uc7QaeW0+hZEX7LEn6YhNmnxKm2roctl5Th1Q7mY+eRbgDNZClUwc2AAVYiudbrlGOZxfh0RmyDga5B/lsUYodt3frW8lPYZ/HuWCTBdRqCJi38WqUJYu6NFcFNI1yDYbypP2RSFAupLWLEyQW94Teo0fVpwuRyFhd7qGnsgsos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776250054; c=relaxed/simple;
	bh=7EHt1dMoZtG28XRwkFY+7qdIKm8wkpAz2SebqFYGAMk=;
	h=To:Subject:From:Message-Id:Date; b=UlkWnwrG0DRLaUYjZFFa0KLm9dGxNATXbCUBnBpbTOuLsyzvCgRcYvlEXHsvLuMB6Dt3Egg5oE46mhuoPuN5Us8uY0zeXu31EpBh7pv30HJXx5Aj4kP6gWBcUm2LRry0hKbUPXTUPXnYLRD4AJPEf4l34Ty91bz5Lrvwe70KvAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rd6mKQbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rd6mKQbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C0EC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776250053;
	bh=7EHt1dMoZtG28XRwkFY+7qdIKm8wkpAz2SebqFYGAMk=;
	h=To:Subject:From:Date:From;
	b=Rd6mKQbMNq9QtnxGb70n0sTGht0pM/dwTMXRExK5ryMZiUseSaYrdMKeHbYsdQ3dk
	 qN7nFiLCXT7KgAcu0c9t+5/oQxnLHD1/tr1/RNnNkHeoVDhT43+3YyTP/+RVmsMctc
	 06782zBpWUiXz01K8VgQTfafiWm6yxoZbPxD/p2yN5BRreBh1zGpo+11PGpIy01Cwr
	 5mtQzJtqHpOI6RqOzdQN/tWo+FNfXRdSzpBImfxHW94vJxBpES3iDIyRPTU9utiJOM
	 DPmf13HiqsH7kXGK9XYD0Sr90BEk3jxKQP6scujWt3Rqn5jwrRjpnA5B460hinghR6
	 o4dundQqzYHlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8BDF41986
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625005368.1331.15901272008454734784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ce1625f6c7cdc6cd7a859d4e19171086777396610f4316440f09c15edd2504
Date: Wed, 15 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776250053
