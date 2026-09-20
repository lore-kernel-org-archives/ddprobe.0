Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF6E2C027F
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789942834; cv=none; b=YiBUpxfMmiUUcJItff350mNyYHDnD18ucpp9L+csM1YTU7yXS32BAqWySTEl7LgFJLcKOW5qgniMq0m4KVlhqR25V5Zi46q1byhsfcMu1gJtpiNmo9+q8yVM5oy6tpxyL24WRfsQSVn7ffUhO8m7EbqCyttcR/9/o05K0gHYbas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789942834; c=relaxed/simple;
	bh=eJJyrxrvC3Gn6Qh8DTrnhm7n/FA5iWZ4FR8ZJQhj6MY=;
	h=To:Subject:From:Message-Id:Date; b=TTASasnnQAs7WQoiG+66QnuYWEQ/XJjMv0Lfabt01jZgYo1dBCtXvubUAOEay8kyqts1LL7gceDCmNXdv8ZaCHZJk5CiFGpGcfVsPywIL1XFsKjb2YHg4e55771SOIemJqX9jkT6e5lsdQ5ppsPnclDG/8ttiWtb+zuz7BMABFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GshkXKs0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GshkXKs0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BFEC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789942833;
	bh=eJJyrxrvC3Gn6Qh8DTrnhm7n/FA5iWZ4FR8ZJQhj6MY=;
	h=To:Subject:From:Date:From;
	b=GshkXKs02cOIoe5BWr42Gembz4gDm8j3k0bDL0WtXiTckKMG8dzoa/I7z97qn0V+T
	 tHhz6d8DFs/EIAGSj71B5VxL6HBfI4+8F2URD7+YCpXu/pkcP0lIIhIOu7Er09vKAW
	 KdGigftpaskf2ahJzbqcbhkZF0ROBkumLEhKM2IAmxvXBXkqax+u8mzWL3qs3xdkUG
	 J2iRhKEe3x7mgnC3RhD2c79Z0wBjV6fqQbZxZt6s1G+mogLlxYh+SlM/lridMK5Yg6
	 MZJcg3pXqhH5QuFhpqhYWkSROa+yA58uE368RvxyYZJk7UfWx7gk9J086qWACE7rag
	 eFI73DUj3oqqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA4AC982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994283368.13732.13701444350410795620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96825a511bd128cbb1bd084f43c7ca18cea150e790bcbfaae611fec1619dbd67
Date: Sun, 20 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789942833
