Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5B31CD0C
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717092863; cv=none; b=Y7zhRYwVkMdZKDOt+NBsA6M5WaO03boYtLsR5QWLk5QeSFdTgJv3rIWhhEOHQHu0J5aTC2+avImX+5jr8N7jlTuMuHo5i4z4mRmnQ18ssLimSceTsjUYpg8qEYNFFZcOLAsKFhblzoKmA2wpaekXzQPBmrJjFr04678awsQoh9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717092863; c=relaxed/simple;
	bh=xivup7iwPtzigWow6fw7YTq3XI7/QYbjxqtcRYPhjEI=;
	h=To:Subject:From:Message-Id:Date; b=pdBC26YFOp8kTigwB0Md4e8FduvzNygW1Hn3aC3A4+BXunh1oed4jlcMXmkrFdeqUUYXxwv7mOtr/TXPgoRQImDI1YiXdBdkTKD5ZJsi4A1VB9f/K7yyko5h1/8XFMLk/fk74oqDOT40bUpE5PtzHCsykFJgEautz+qmEOeUriQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Izwx/e2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Izwx/e2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9823C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717092862;
	bh=xivup7iwPtzigWow6fw7YTq3XI7/QYbjxqtcRYPhjEI=;
	h=To:Subject:From:Date:From;
	b=Izwx/e2uj17u4lryN0pcVrD7JmjwM1ojZIPX8pQILNNCirqvO+7al0nY69mFLZCBo
	 Qw+fKPQOr2+WT7pFnO0R5LcDjldSQF8Kz7TnLGl/C8PZ6VYUIAaqwV0mTo7Xk+QiWv
	 41d+S3myNQv268DZ1vWpSf3L4kii/iscRBKmgH2XsZojavHptRufj8OJ2kOkp/MfKx
	 FYVKpztnkL1S7qLx4eP3A8AkHWhum9XXSHKGguY9HM+7J6525sCaD2+TZUkmABtteJ
	 mf38U7YZSNLHI5BWu4cZ3ehBefD7+EBpiEqYIgoLSBHhiGkKbY57R3MUaq3tTQuKBZ
	 ROaSSiBzpOpcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D49FDC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171709286284.29138.16849084757528756054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a334f4cd208ab87229a4ce2654e75b4300fade1bdf0fba40b9643e709b4774bc
Date: Thu, 30 May 2024 18:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717092862
