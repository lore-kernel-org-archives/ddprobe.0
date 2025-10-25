Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6672E1D5CEA
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761355194; cv=none; b=AgPzzctTQFwEXKnED5hxung0tNb4LXmX+7m4xrbONIckxIhr9ZPYTM9OuHzueL9aJota+wY2udoWLPFZ+l+bkjP2kBD76YOm+6UKJMmjthuhFM3u+ZYSSrb/nqDrFseVw4TWCYTsZK6dBn8Abpgr4V2LPWEgRIiBXQVv087WkJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761355194; c=relaxed/simple;
	bh=+LI3bhqZlPIyhgVaTckjV627W25iai8o2dTiH9i0rps=;
	h=To:Subject:From:Message-Id:Date; b=Mz5ul9WJMu6un8sIcQymeYbVDgByMp/lU9xLkD98p6xzWU2h7DSFuJ/socnxph6dw4DI3MOVBstwnwmmaKuHJhnqG1IGSlc7ixnownN3JbooH+NOeiOrgK1ussKIx6o4Pl1yXIHhQBfvkel/PujPb7v2At2QFVOv3SQ6Hewc3h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCDBiaTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCDBiaTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB55C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761355193;
	bh=+LI3bhqZlPIyhgVaTckjV627W25iai8o2dTiH9i0rps=;
	h=To:Subject:From:Date:From;
	b=vCDBiaTl3it7SKJLBg7/mtxDvl8pv1KcPMyQs51K37IRmHAdKvN0CR3fOniPjkeTy
	 qfQcmGXyF219bdn7iIMQCcv7HAdFTkeol4cllrrxLkAJabnmDpqgJV4tMLq9S3LQww
	 OwBJ04t/Zrv26cfRSUMtqQ3+3fFQQ7Phk0ErJ6gAb8KVVnXGjopRUQqWhrASDmQGg7
	 OFQ+jXETgAZpalkx5tcyxkuMX0vjH8IC/gYvi3cvuYh9By1cmcZHcG5AylRAmr2+Fs
	 cDDEy1dUJH4JicQAfvnp0DHbFmbPdms93uTdzhFh8y3HeAN83LexhhG9FjhAu6sj+k
	 k+HyUo5dfYxfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF15CCF9E0
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135519360.8920.9352844530100070768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e8ff0736b0b5d69b30ad3352f5e83368c2d7900981a14bd49073d6cfad5357
Date: Sat, 25 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761355193
