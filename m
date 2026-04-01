Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D5F40DFB5
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775073934; cv=none; b=qIgnPK30CxWxvPZGWIWfdLVY82QBzoF/hev5Y80R7GtXolUj1ALVywuZUGkrfn0wJA73zeWlYCiUY0J/snuWEapLbcm+0LjCZVn8iqNNo/eYeZBfJvcPk8u/9yPLzTo7H0FnRQUrFyFwbFQFYWkNNuUnkcfA+OLgPTARdVbHv1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775073934; c=relaxed/simple;
	bh=bgZOq2Hkq7OSOET5zNMD4pxY24qLdzanJiBP5/9b5TM=;
	h=To:Subject:From:Message-Id:Date; b=MvISAqn9nXwjk9yUs3lSqjd98hbyaDsQ3U6bmvD9AWl507HNeyRKq/0VK/MGcyd1yNeDsgvBJ8niGTd5I3ePoqvfS0q+0yjeYePG7h6RDh8IqTAKUJvyjv8RTNLt2lqO48jrc8D2TnGZmVmqx9y5NSErxusGED02tjCaWaWs+uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwbWW+wF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwbWW+wF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2AAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775073933;
	bh=bgZOq2Hkq7OSOET5zNMD4pxY24qLdzanJiBP5/9b5TM=;
	h=To:Subject:From:Date:From;
	b=HwbWW+wFLS06h5C6yF9idJKdizSp4JgpnQFBYpA0h2lPzYM3besV7SypQ2yDrUhzW
	 01OdQ/zgD4jy9LI6BK0/Mo8S6KUZp6gKnqic6cZxc4syfe7N61MvcfPJGpQDFSDLoC
	 etPm/xVqgY7nxLtDliIQG7RIGY8I3xBZn7DMWsSag1bjABhIZf0ilNVukWyfYC41+1
	 DdYR8qNzoqvDfuUbZ1Za77P2kbGvbRfgPClFdO6ip9SB5N2NZtiG9BpywBJ+lo929D
	 40HjrHnmDYlWvHymPJa0Y4hNsTdTgHeZwlykv/ECmKYiTbfBdI/smOMQjXYptCpHlD
	 Lq3j4baaFRvlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EB710FCACC
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507393369.15658.2480852921379132840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c303cf3fc4722e1019f72ce734f15aa836ccf1894595a3e60b6b0e56a8a83930
Date: Wed, 01 Apr 2026 20:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775073933
