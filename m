Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CCC17BB6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737533754; cv=none; b=L7kMIPj5x2Z1LfubPyUtRI/uv/SbhjyhFS9XqhUhwHmI7PDSsThbkDuYCFyCcqjaaicDUg+NQskZqopYUHuwgkh2u66anqL5TAJqWzGsIoxirsOjc9Wn9F+ZTVjDUacVbLLHrHtCOq8x3c2yhgRjBrjEtsVkPGSeYoqw7PB4FNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737533754; c=relaxed/simple;
	bh=86tbUI54UlEQik0ronIDGHM49K0dy9yItqhi0S9bOp0=;
	h=To:Subject:From:Message-Id:Date; b=nFwirL/zH6WHxr4+f3+ZMa56su8lKuR/uIyPLiBDdlue8HKrTvo18dkx6t4pYgLjNp5UB2XpNgCZ8cabpbKWjw3oo04gbYpPPCvUt3aD7mCBloXM/4R40tzScp3VOB6VWaIrQLlWTljYJT0iqEQWAamUKPJUZQ8oWl8lWJAp0jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoUs8m2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoUs8m2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B17C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737533753;
	bh=86tbUI54UlEQik0ronIDGHM49K0dy9yItqhi0S9bOp0=;
	h=To:Subject:From:Date:From;
	b=DoUs8m2vXv5APOR1ikAc3o6F5N9PpNVrQQRgARbQUgOhyi/b2acMJp0B/4xXFCj4R
	 GhTK/V3OxtuhwvLEUFREW0cBi2GCFvARz8WMq/PsevXjGSzgq2mAwmGxa7/0hTAHsq
	 fp9C4aqXRInoUTXxmIhcIqltsuBikuLtz4LBwVI7iYB5TYJWWHSWSq8QmAs+Im/GyB
	 vv6T7u0O7UxbXZzsnr8k64TnvBOoK/JNThqFlNMsgxHS4o1HHvyuw+iKkBLl1EqPHz
	 YWO4YEM4/SsEy+83ZFPgrsJgTBXb9ruGHDyJQlmmeVgauTk0nHe3xyhn+58KWwMEos
	 PvRvo+3EkSBeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93493C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173753375359.31536.679349154038871507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1072d0b45abaf603243e8bc13a5f6c203eea2d2d5146f7254824b73fb265b0cd
Date: Wed, 22 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737533753
