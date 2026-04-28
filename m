Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E094322173D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777339654; cv=none; b=qJyvy2azLaOFtlNCz6YkFJly6HFK4R5YqEYrhx5SyXt6Omq8j/fgka+mWMzQIIrqSw3T8VZFbSeN4AL1Pr5eSV2FQ4julIYvXB3Fg9EM/EV4VpeCrBQwcEQbp2lB0znnPjFTKlWvYFs+cgYGIitGRPs1whf3GJzHC9vxEGQkjlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777339654; c=relaxed/simple;
	bh=qK1yQwa+xEJznMW0LbqhigdZw9Q2NeGP8j1BgnznvoE=;
	h=To:Subject:From:Message-Id:Date; b=TQyVdkMKb9DXIg326l6uFHc3sjB+ggdr6GerNiJxYEOYc0CRTuz+pfyeUn2epHK6s2HBNryJbyqOAWYAygKtrNh++c6pPI7nYXlmUdHncX+WvlUhKXxiIgrSDCXkkn7K+J16zLGKSvxUN0UiGmbEIjzxh9YdJVerj/TVduoyRbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJNE9aZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJNE9aZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A64C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777339653;
	bh=qK1yQwa+xEJznMW0LbqhigdZw9Q2NeGP8j1BgnznvoE=;
	h=To:Subject:From:Date:From;
	b=GJNE9aZ5TAvFwDSiNTuzcRZInpk3CkYSR9MFIyQaH5lQ4PRv4OvfRibd1ECvKAZQ+
	 nX8AmySa9VCM8N8DkMDHAcapFYsvy6/VALEDz7W2OLpb96cTIEXDYzJl2K0zyHVQ0/
	 0WZdvXprjSaizHEDIy360/+ibPFeui7H9zyZf7JqX/3Tmj9qlxakdSCHxbDPX3DC+H
	 aPUYfMPly6jZn8bqfVsBe8G0mDdk3kpP3zZ5/+zr5nnebDPN0AyPX2Hwh7FTr7Jug8
	 ahjtG94492PFWGCGqmM+22Aa6fzUCULJKOkxGKdjPEYbxiHbkhBrIbQg2EI0UXewwc
	 YyCz2DuslUoKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A965EFF8867
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733965368.21716.38684912266043336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd426165cfc9f8b5c32ecc4fe3d8c9afcd88c293339ba3e135f6d4d664eea494
Date: Tue, 28 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777339653
