Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1264031E0FD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762198194; cv=none; b=X754QZIGQlVRQCZu6H/X3pE8pFgvj6w6nZJVs35Rj+7AavWiiIZ0oCqHOAk0HMEjm4kMKBPeH82bejeqI6JG4gefTGX5sJFrzsbu7gyaee2AfLqtpDP2USUILMUQKDOW4KvadgkATrjHGxr0/i9Xc0rFx9VCwqV8Et/zXb6ClTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762198194; c=relaxed/simple;
	bh=joLUeaZThKj6ngpxb7vSzlG8e0r03+VGo5gDZfMrZ5s=;
	h=To:Subject:From:Message-Id:Date; b=VdbFA3aBoFFZzX2217D2ZJwnwpGP2/ic7P8L6qV2Lf8w9Kl0Zq94mz632afaukYxiv+7Jdxc+ZzUqRhzUkzp5oQRDi23xCYG8IJW3JpsPMouk2BRSAYOex6AmRTV7d2/xHYoGvbWSzloNdfOiBk8wCRyvP2NXHQ6zfzyjSOo5SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWzTmlA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWzTmlA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3098C113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762198193;
	bh=joLUeaZThKj6ngpxb7vSzlG8e0r03+VGo5gDZfMrZ5s=;
	h=To:Subject:From:Date:From;
	b=uWzTmlA8A4qMtmll6vleBxmA2Fd1iPKWfdWzURmzI0osP7+CFQhCD+AOm/EnO90Cw
	 lbng+ZfR3Jei/mpQn06QE9xDqyflr2oOmZf5jPo2gXSbe+6ll9XNk9cVY7jLE5a1W3
	 9mQtes8ttBbDNTXC+EyIPTTjokuwoBJjyxQccrvmJNkzvZRfqTHIhvFKLFGIjIdm68
	 GC68NPTKz7DUkKWma8XyVdAAPScdQLjL1Vajd7myxKNi2X+s/vKLN7MN4Ry1FtRDaG
	 F3sW9Efx4BeU+ccDHa6mTHcOVGdImFM/oI/wE6QRuc4xJvOTmYGgLbzD7z2Rz3gg7W
	 hkG10cedmkLdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DEFCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219819358.8166.1904526353664297655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45893740488218cb1250824ffec015d29a1b8ff9fa8e92ca40de5e381c66e35e
Date: Mon, 03 Nov 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762198193
