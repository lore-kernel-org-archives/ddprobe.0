Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3161BC148
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745672995; cv=none; b=uI1gRCIuveJVlibTi15S7iM7LZcuqaw8Ah4L09uLaWgQd+j30w6d/yu0ltEEoGrlXOKGpJHETn0gIzrG7sucbTBVto0K/F/htgYtVJiQbnpimBNXdjQPP6wUv8Csr61K3npYRf92xK/JLSYdjmyHKGMq9z+6lCCvXVTo/T9AVsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745672995; c=relaxed/simple;
	bh=dzTfTIUd15gZBgkdtcg72LUkdVx1/ToVfYi0JJfIwmg=;
	h=To:Subject:From:Message-Id:Date; b=IOEFqtRBJIoaP5QniKoqqLjU9w6GFOFOPxCMboUahfEsIx9w5JJpZf6HwwjoR6kBbi/Ri3io2DseZ4AkSeGQ7wnApghThqruQc2MGZGhEN3KHtTJqHirLGDSA1B5E9FaYFH10LrL6bFEZxxiOOdd6D9b4mpstIsSmU9jObdYi7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4z8zWFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4z8zWFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04AEC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745672993;
	bh=dzTfTIUd15gZBgkdtcg72LUkdVx1/ToVfYi0JJfIwmg=;
	h=To:Subject:From:Date:From;
	b=b4z8zWFTsHa//eJ/xJ4pLjW4ZttLHVJa6EEHinz5ArxD+gkxoswe9IOclCreW1sQ3
	 TX9bG664klYycFETzkatLm5AhSpCxO6glxktWpTW1t8tE6ZfjzUqHYuMeDC7cxjqhE
	 B0uu4khniHqt/w2WIXj3uxMGHQwD81MNLQb/9AegclGnCSVXPwiSix4JXd13kuexEW
	 QuuWqW5VgjS6o9zZr5l1Xn2jn5R+kSE4gLf+hRdt+9M29MaIdqtnck6JmP5U9o9KO7
	 LXCIyzaKTRW6c9s5pFmsChTKtVWFACZJ5rMqcD4GmEKCCdCMX5AZFFq6sHI/ppXJsN
	 10+dKmp1vXSow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6D1C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567299357.13600.1349736390263773129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365fc9ea5b7accc322b118b9e809e68a7fd2d2c9ab694831ae3e35d8f9be1406
Date: Sat, 26 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745672993
