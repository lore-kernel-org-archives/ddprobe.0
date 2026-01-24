Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0472C4A35
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769214234; cv=none; b=WNF6qgESLIijH0B5br86Fg7qriOGxcFzYdVM0HqDhh7jIhldWVbodqgxrc/sKETNJtEp8v1SAtn8uSmih40CFeFz66uIdfrMaE6pA6Y46RKM4CLZubuaht2fkBo7PwIkU0HrmwmjKD4K21bP4AJosRkkHhowT3zC2IKyfXVBQ7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769214234; c=relaxed/simple;
	bh=pZ1PqOmqU+xCV7T/zjqHcCzqLqn358PScO+RHBZ52Lk=;
	h=To:Subject:From:Message-Id:Date; b=Az/eGWaMm+ssyZwcSoU7Yl8UChBpMkjh2h8A0sX8NCN/PZjVSuqrpVoAde8pJWdu0O8HWg+q+0rNK+meJCvkF1Q8rSzGXeXY8OcU1MW6iGr8xs19RDZWCggfkBbJFsIdE5vcPZR720jQf6Ikf4F/YXJVhEOIO/ieYk9NHcZ58PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8kMKAIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8kMKAIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC14DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769214233;
	bh=pZ1PqOmqU+xCV7T/zjqHcCzqLqn358PScO+RHBZ52Lk=;
	h=To:Subject:From:Date:From;
	b=O8kMKAIURH1ZWl651UVkzTFvAbTJsvag5IEG1W6KN1nBuKVHY1MAGLxp+NhN85brd
	 1RULWW/HsxYnkgxPm8jauR4fjI5G5ii3A+YblBT2agLJDRp0wi817tx9BD7U3jzVNQ
	 1cL8VgVuSf6VcKFdcFFfV5kudT0PinsCi5iWkRajQ5lQWga3RnbMNPmjMP+sKX7123
	 LZgwMlfQzgNVPjrObhSIVxthl9O+kI5+sbj/pPwJ94G+CQCeoLD2rs6/+80VkhMFwM
	 PZKZApnYVYxZs7XVNcj9VXTFiRqWivNiLE3pmiEO0Cd51tlHae+JjkYkQVGQWi6fFL
	 ENH3+6S3/vBtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95658D77898
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921423358.23559.15381967661833854640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8dcb8d3b7955fe2ea05d6af3d63fe16bab126418b42d7a2eaf0dc608d5ebd9f
Date: Sat, 24 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769214233
