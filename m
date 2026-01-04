Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B3230FC15
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767554634; cv=none; b=dMAOgGZLuRhh03aTSdrR9cKSWL6gb5HJQMPXt4dc5yDpk6GGJZz/KeZq5jVsPknpdDM1r0tlPJKgpX+Ul30FC5iwhv1XMtuJz3sbNNQ7mVIBBGQoZO+9r+z3Euu9uD5i9al5Q/ycJ8gBtZxNnOxVCp87eGxUtkYYtftS61wydJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767554634; c=relaxed/simple;
	bh=XDEpxMGKbwzb9w6GC+rrj1/DhS973AZNSwVXEwQWOOs=;
	h=To:Subject:From:Message-Id:Date; b=HeuVLZgYzqqMHSrN2QO6KkYaKHp7/IOoybLEJaI/GY64HbvBqsWrN9vfEyy7y1J7RLaRetTmT/PrlUZA93YBmCM6c5epkc+S7tQeGBtOx25fxl7gq/f9lirpDXWLw4vo/bm09R4YnqLlWwTUxPLmLIfcKm6L0d4LqO4HXGAuLM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7hv+XKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7hv+XKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3419C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767554633;
	bh=XDEpxMGKbwzb9w6GC+rrj1/DhS973AZNSwVXEwQWOOs=;
	h=To:Subject:From:Date:From;
	b=X7hv+XKCuRYBVgX86yp+UVdS6ysfFkKaok1jNrEkeCZyUrBldUV6Mg7ygPYhB46hI
	 eg+A0htsnfo7uWYfASuJ484PD8Yz0tPuJ0+tY8NdEF2KsUTVP4w7i68bGSTfC/ym7T
	 YXxXgJOmeCMVAecuwf3HGWONmxv8tFJLuTUdT4DZHVM8/CbPpaYDaFHXKVdDorEbit
	 flOxbeiCHBJv3/ICc0lHw69rmec8rjpfbmm4O8m56sKei9iJLhXmkJpztQ9H0QWXfR
	 qZr3z16zEaH18mQs2yLkgi9qbpAnp0T+6gSWPwzmxuz29ZzhUHaFGZSriDGbCl+76r
	 cQ0vaV5X55Byg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EC6C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755463357.22364.5215453143650779494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c277728f5ed721a0a26f4402fc99052f16b9f4bb55f601a8b04e5ba1016786
Date: Sun, 04 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767554633
