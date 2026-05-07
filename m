Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425F03E6DD4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778150854; cv=none; b=MbPRnsv5DNmwdTvDpNxiT4yXDcpUfSiFVegV1Y+UL5uzSoQN+Fk+uLQJkWzGITEsvaET5g8hHhzqH3ADNJ8Z2d3mqkZJ1PwOnv4IB6/oHG0pFFxO17ea/wWuOGeEVkPB6FdL0mk5UGquispBRN/TuHU+vhe2TIcss+zvxXuAITk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778150854; c=relaxed/simple;
	bh=96OCkkIL/fzA9SOaoRjlYEN0d9cuXm5pS/2d0TZL5Js=;
	h=To:Subject:From:Message-Id:Date; b=X+ba7R5a422p2EMiDGMg0zKcVgkI1hYID16HhKr/ymTuZZDGLbgg6qgDEDb05Kki0b88kwcOoqKU+Y5SNA9/4iMk41AVFE3BRzwenUSWVe7wR++muyejeLzQQ48rfGNnx7/28PlmuwEyn+geptXSIuzQ9s/xtZW/U+oR46IkTYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drY0riey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drY0riey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA62C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778150853;
	bh=96OCkkIL/fzA9SOaoRjlYEN0d9cuXm5pS/2d0TZL5Js=;
	h=To:Subject:From:Date:From;
	b=drY0rieyX4np3zldC8RN3TgtCULXATQlaMsO7zR9M4JesHno4qbxOYnpxd1gykfRw
	 khqikuPITz2i0GdU8ejcDTQ1jQINHqTvMze9TfBZFKSsvYGQSHbtc+hDWxqAHWyKPM
	 ijZaqkduvuVKK6u4JM6CO9hw1r3msSnZGsx4j9wEpD4kuvfyIRtwYW36CY9+sQcImL
	 H3E7ujCWQEFpuHMISU+vtokjE4Nhswto9cUxYs/OED/hPR9qfumNDlGQbShkTUHIsE
	 ys5JPk7miEKH86CXTukhc0BLY0MDtm1KvYXMboiiBVihn19gAMD9FpX4chPk8Geqb3
	 DjLL8emHgzn+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB170CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815085369.30634.5274135052198852375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4835f180123841b7a525641ff6460959a872372f82fa51d794ce89f0b700a2
Date: Thu, 07 May 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778150853
