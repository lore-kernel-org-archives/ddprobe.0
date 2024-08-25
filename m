Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E93114A85
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724616354; cv=none; b=m8nmE9mtwiI1v9Nzpz5oV8c3V+jVo5X5SlTGO/cBW77GrYDbC57FFAaaIcWQcF9iWLeNLrC4hReGDmrNCwUF6uhp1O1mPj5iR/Fj2jfjJR9PtJXkOGMRtf0tfkbe2q4yypOwbX5oOjr3Z/B8Xd77px+wh64UjmhYZ5T0x0w1MnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724616354; c=relaxed/simple;
	bh=OIf0cssnDgmHaiMd4NtDzvb72YEpJunGc6G7XO8h/jo=;
	h=To:Subject:From:Message-Id:Date; b=UD+s3JLhTbRIy6Essm3sJ8dCOjVTpX5s4fA4WO+Pr5KHdf7jBaLkVJKz97LDfwbuK1szOB3w5bxZRoPdmG1hXV1AjTJECh66WuWMRYfaynJ+DVlXWG8fse+EqoV5U/rQfIZCcLto05+rlv65cpZsHz1jKROZshwtJspZjMTHWmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWcBMHz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWcBMHz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23BEC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724616353;
	bh=OIf0cssnDgmHaiMd4NtDzvb72YEpJunGc6G7XO8h/jo=;
	h=To:Subject:From:Date:From;
	b=GWcBMHz9bmfwNLHuBFrWT5VnZ4nPFcayJThkM56OzqNxU/9qhoNqhvlST+dsIrpXn
	 CYaNg5hcApAF7U04Z7xxqjr8CDJq8sKzVOvMFXiEsoHwrPWUTDjsyoFs/57w+ePwjZ
	 yVVVKyW6QPsvy+vs/IAjmStUOmIpnSynCa//0RyK76awokVScJLU2zEhXckYscgeeV
	 r7XqBoT5ZMsgJnhCxXByRlB54JYzwWm+ZOAzciCrmPMmEIz/d6dyFXjup7tIFtmiun
	 8yNazOvv0Dpg8s+ysEl5ET0tISjw5jc3qqaqJXdcRpff7UxjO3suSCp9kbMeJG7gMj
	 5KA057x9Ziw8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC62C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172461635360.21000.15800973551697409564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b8ef297cae9140ca6466ed5a3853ca1f63016641ccf74ff42bfe385740bfef
Date: Sun, 25 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724616353
