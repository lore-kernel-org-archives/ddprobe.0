Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243011E505
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764102774; cv=none; b=g6Gm32b1vgHVBaZPNoNZKPKpUbF1qDdmCwySnRWXZIsGalnG/MKkCEUy7FjjL1Xtg3W+J01AxgRtxITK1wRQTC9e0smew4nlqc5AJsul3vn5TDkss4cgBn/2t4YYzXejB/K0d8COKL4e+fkbFj47wJt737M3HKCIKtzY0iN0/q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764102774; c=relaxed/simple;
	bh=5JOw9hAYgNmQuGD4kIMKg056s5t7AEKssf/ppTf4mBI=;
	h=To:Subject:From:Message-Id:Date; b=PKc0NcAGdf1nmOAz/4L+1EwRJJ3ya+ZD3GeRBDPgvB+mnnRYC3ixi2L4j3hvm0/HV+5EohuRykbC3f8/8oz2UkrzG6Sfsul03yFq1lVsTwa8/JGrwscv3vwbDvwFeB/FsrHSBfmSApVj/ulicOjU99ty0hYQM/eYGIOjgK49Bdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzWSv4S8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzWSv4S8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5E8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764102773;
	bh=5JOw9hAYgNmQuGD4kIMKg056s5t7AEKssf/ppTf4mBI=;
	h=To:Subject:From:Date:From;
	b=LzWSv4S8Wby4pe251ofhs3MPQTeD0z49qrjdm4InVwMI+bbQ53hXmxyoNqVhxUOjT
	 rde/0UNoLE3lCLOqeAHOZ66LWZrPCVwdf3sx0CNpu+KnG1VT2HsRJGK3lotkyV9wP9
	 rCwdivjupCu1S8GVOER4LxBh0ssHfwT7WdwG1F9H2cvhOD8jqSB58tFYqJRDLjEGtr
	 wBgnsCdcSTpztG7V4rjPZ3ijlivusPVkhfneJBT01yy9KiDCd1bsGcWr/o1lZpogz/
	 A6zR5cGqkQWaiVe7QvFyEs/gnr57B0ecYhNp48QeDhibaN78tU98HzZSrTdSFKV8lK
	 GR8rtgEWIh9Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A678D0EE18
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410277359.14292.9153572429716469884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed9d60a39fb68255caddd91d7d3585741260a0b1467f0fe6ce6c7771f3a2742
Date: Tue, 25 Nov 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764102773
