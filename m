Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAEE15AAB8
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726502754; cv=none; b=jL2PTH0gAm7d8MmHFFw+dVPnQzLEnYmSrgwTQoCXJdcBQ8x2L9OXEfupI1rENowdJQfk3HpL3DJB6zvi2idb/D0LvScj8dTLG/IcGIJacYjjNy7qX7X3XGCCOXg8iCWu2U+qh2PnHNwxNKkNpWWc1U4qks+ThbHDRHE92hECg/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726502754; c=relaxed/simple;
	bh=RmyF5bQ+KqYPt/FTGNyFCF+I66K/7DKx6GwMVi778KY=;
	h=To:Subject:From:Message-Id:Date; b=kYoKO1Vo+IzsQcAlMC/A4Y86ye59HMGf4VyT85dX06t06D/62tBYFtbMeKpCTUS+sM106jky85BIN0+8XKFSZ+N+GmNqeWbkDtHlBO0YdvGCr5ZiiAGMXk1BZt+qN1/yGAn4lW0tv0N4ggjvg0rNJ72BKT9MzFX0b4qrecPlqMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uY1fz9ZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uY1fz9ZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD681C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726502753;
	bh=RmyF5bQ+KqYPt/FTGNyFCF+I66K/7DKx6GwMVi778KY=;
	h=To:Subject:From:Date:From;
	b=uY1fz9ZLrwV4OzOaVITTk4NNngQV5ljKDoDx5BQPzfgIQDDBvW64S49xR607MddfZ
	 EKrYUcHT6AaY5WnDkRCpYU6FHdRydQCXdWRF26Ag5hliAfBzVLcXthP1OS6nVOzf8Z
	 BQG0VhP92KbuP+XtJjPEmb8VgHPwTReFK81jz6NfI0ElVSBGcUJUORS8tefxd3HrSi
	 S6RG3ejLIlI5X0v77NcmGHlGiEeM+PKyvi7b56cufkRx//L70/8LwKlufuJik0dMcD
	 X0o4VmsvXIelIv7+qS3U7oZQmzY5ypTTdv42k3JNXso/WANEYh5u4ah+0y5a+apOSJ
	 qKWUCIvDL3JVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1A0C3ABA2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172650275358.30601.2659700528062636942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e70dfcb961a49d010d895d217f562c7c96042ffc91ece120c4bc952327389e4
Date: Mon, 16 Sep 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726502753
