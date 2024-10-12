Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E6A768FD
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728756354; cv=none; b=RYxmGMkItDMpSj+B1ov79QZkpvOGuIR/qBj7TKSwmXwXXYw7sgNKcPNxPu2rs76d9WA2EPWoFNrYoy+Cx4ZT55E/whivMP741j5bXYva4lwVAQZ5j5H0a/V/Rk3z62+mdh+rWfoU2ECXseCSbwb7KHhc7ZewXr/muiCOvJMfXpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728756354; c=relaxed/simple;
	bh=bTnJo5s9nXDvySSuyxI0HkBMLH4igRIvvvhiH7MWMDc=;
	h=To:Subject:From:Message-Id:Date; b=uVdY4CKnzM8INjH+5StmzJJKhsuRyc1z4bBCyg5OsKziG1PNR186XhPsjltQB/YVuUA6B7sqe6ffo0H4AwAefWP4rfxnqvgBtXhfx68B3e7+VcZ+goB0qHaXqEQIvEmvTZi8qeQxYpMiWuCWbKgkpM20gkkQx9aZpPo2eFb50D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojeqEiB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojeqEiB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08FFC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728756353;
	bh=bTnJo5s9nXDvySSuyxI0HkBMLH4igRIvvvhiH7MWMDc=;
	h=To:Subject:From:Date:From;
	b=ojeqEiB5sXcK4wtMt/EQHPwSZ1sb8bLAbH6bWzXxJyD+l6gfzFlV9k09vdfizET62
	 9f+sHbpNy1zvzQvcqgQv8ZHAftVLeyq91oUICHmFt+YCehaZBntCf+e2IyFiENfgLi
	 43P9V4li+5cG5/l3DSMJYcePIt2rhH8c6LznO4v2dL6/IiWctIqJFfIB971lywJAHD
	 IAhzZ2nFVQ5frQbpZ8V305WtTJjjlHlLBJC6CyNmADAvLxL8Y3q9DhzTLmsNvJ1ekm
	 nFCljdt+e12heYQkqK4xOGgUaYeCks4A8p0+EvOI4EV87ObxrZvPCkNrngupmRjB4n
	 69sqhsxWLobiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C98DCF2567
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875635361.31205.16811107535632039111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57e9e25eba71e5f8d781697fb34a3baf18c69e59c1fc03dc7fbd67bb728cc90
Date: Sat, 12 Oct 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728756353
