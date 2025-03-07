Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46762197A87
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 05:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741326534; cv=none; b=ScC41QMka6NatQ+M0YJTf0lFIPednie5dIi8gtRxxkGrqLD6G6aArkd8Nf5S16s4n8HD7VunoGHWVpF/rjdmy8T430l+V1pnYqPXt/jYiAOAxb05wvlJeSXoST4woZfdcSf9g3eWD/lN3/a21uGvOiNz4qTNze+wSaSBZ5G4GPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741326534; c=relaxed/simple;
	bh=Qmk3HVV2B2LSGL5YwHQKsA7kS3iHh3bTal4ADWC56Nw=;
	h=To:Subject:From:Message-Id:Date; b=ZdxjabidofEQly5XtIjt2wg0uoIo1VWzkehvr3G2mf9DWWwoyiO9y23pnl835trIoA8Ih+e54FoNzS/c7FQNQQyq1UAa8FZVW8F/gSuaS86LHO7PQtNSkmPbUYM020c6ThdFzoy/ACtfBkVIeazdUDD72cbOkxFvsJDrUyKQFsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZWMKZ7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZWMKZ7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F4CC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 05:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741326533;
	bh=Qmk3HVV2B2LSGL5YwHQKsA7kS3iHh3bTal4ADWC56Nw=;
	h=To:Subject:From:Date:From;
	b=HZWMKZ7TOwRdIlKRJO0OJZWNbvzxheiWot1QyqDDj+95gJCz5TkrVoGBDyHvxl39r
	 GG4KsGHWfqwzx1B87I6ZJZnodaLLpgfSid9haVCCVwXCUkv5tqG8UnY06arYd2Wr9r
	 caq0OxcbwzMpVDW9ymU/+kUqQ5N6PVDwSsobQFzxIFo9DVJ4pbwBu8YiVLqGGDYhMc
	 QKMILIWnVylrGqQb6KoFhdchtrmB9oMdazHxWvegLo+HydZh5B+qrIt7JbECgpJS/o
	 KUULMhRZnRX4RrtbsemDrIJLAA+5oA3lrBdlppRSDVFFOKcpf2j4CKwkdTmhhEv0i0
	 0WG2fed3WGwxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C511C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 05:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174132653362.5909.10733086612634001508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64c1d4f8a4f31421d35d6ac4db8aa7c53bd9ec6b07e69658e63de0427d0bcfa4
Date: Fri, 07 Mar 2025 05:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741326533
