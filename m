Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4EF14658D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750576794; cv=none; b=L1WeGKImvwD8TgOQB8SjX7et0lK7krs3fNuOTng6gIko8I+34t0pvHVroJ2qJpy5xZ1EaZ73DVHKgV/EIpzVnW9XrkpExnnYPVwtGgCMDWXBAc7u0+CQ/TTaNxbzSppIhHmtkULOUlrd+xmEFsnovcG8vD2hwlHTm4D00xvS40w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750576794; c=relaxed/simple;
	bh=+RrAlDszgz0HvFMko68nGB+V31jbJOr4kxwTPLhsyN0=;
	h=To:Subject:From:Message-Id:Date; b=EuVdX5Z4PCfMzHhaoFWamKEnVctxtqvqAfvnt9b8zFk7vtAX9KsySkQPeC6OoIItkGUQiJlr6rHIPDOKFJpMeAxvMfYHhi5iDe7GdwIHY3C9C4BEuIMex60OlVCk1yOKCYM/Z8lAxhA41NgdfgSxKeF1TGV+jK+mvwT3kHrmfVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hnm6br9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hnm6br9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA71BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750576793;
	bh=+RrAlDszgz0HvFMko68nGB+V31jbJOr4kxwTPLhsyN0=;
	h=To:Subject:From:Date:From;
	b=Hnm6br9hgdenrr1X9fNEbKxO1OsVZVyV/4uwJ51hL4OV6Kuk7lNi6MGX6ZyzWJYhI
	 pwfCmKAN059cObF0dLb9QPE63mi1MsuGeB07J9YJ+RRVm/51cL7PA3Xdn0t/Ja+wHE
	 B9gbljYCRncSFsBlzVdfTwyQyXCOwVEPaO6POxvV3LSRtJECMoDUqDHS7a2o7fPrpw
	 OTO0ks6PG5qFJavHK0beKtoUkTGi3UiPf+jHLhzOAJnJ4acUmN4mpFinF5VOEqDziA
	 494Zho23ozvKNjcRMbjh2LR46mQWiscWG7JIUEW5QBwb/cSPEKzvacnq/DPTbcLLyZ
	 TwnObYSIjhtEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D9DC7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057679358.9657.6298434041128196149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd2b4187649f655ffc2aa2d41a1bfe8e8e96f14509662c390e9c79950341ed8
Date: Sun, 22 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750576793
