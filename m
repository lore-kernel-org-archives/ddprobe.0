Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE93244690
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747783794; cv=none; b=qKUPHdgv1f8qAQNcoH2vtBqNfhNU//VP0Z75Wst4FPuZ9HdOOmIlOH4X2VqZtj7tMNHWDlhaFRGtGE6Cpvi5F5D61Nur3UT+3u9XZkpasb3lW3Lh2QP6/LLJt0eyhf1VG5TKw9aoFWLq7ug1awav9R8E204jQONpn5+F7/V9u3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747783794; c=relaxed/simple;
	bh=E1xhtLzJ0HkJSMeQoluQpToBQtUQctghDCYK3oFhG2E=;
	h=To:Subject:From:Message-Id:Date; b=CIVED773oXqvUiafbUZlzo2JsPiZLCDD9LCKtN4sJkB8sGWReLt5Gz7Jd0Z1F7z/LQAqRSYx15wzt1l/UkVmqw1Cr4JYfPGP8tIlWI3DMTw35jxRLY5FLpgXg4VqDx7GAQbXw51Le96P3Hqpl0CXDkzKMtmlIcK2dJqq9TTqc5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjFlV4vC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjFlV4vC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B00C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747783793;
	bh=E1xhtLzJ0HkJSMeQoluQpToBQtUQctghDCYK3oFhG2E=;
	h=To:Subject:From:Date:From;
	b=bjFlV4vC9qjFrb5He1kvC+PyY1WK5+jXEiMpJ/l06YNuaVl/47TT+e4vUBTRgQpaP
	 u7wOapw8fx5xW9I1lNuZ8Ogi1QUVpSq6dHmewEiGUWpxaZCpZZuCbmKM7aotVufEPV
	 u54mbmtA44iz/KvJ0ioSOoqFQwH05Sq7S8bioSQZUVeQDFNFpA9zjOtH1kqx8W6K/2
	 eCh9PM2gVYBfK02Pue+4nf8KSkJmgeU3s2QvAgVqkAWcPtXcqPEjPS1JLAGTQhLaqt
	 qwpijo6DUKxlo1h3dRDL+2xIS+PK5VH4ZrD//N4rxcwS6ty4tXSo06fv0avv6bmqQJ
	 peZSZFvqJpG2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C04C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778379357.10013.11074028189043477781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb08d56a52c730598007eba979d0cb0fb1b5132257cd80c7ee58bd9ae4c7ae5
Date: Tue, 20 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747783793
