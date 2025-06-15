Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1FD1FF1C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749986394; cv=none; b=lSdfMQND2DMOa6ZjPMCZSn2fNCPqiL2JJcBbZJJ+t2jl+JRMk5RABJoPcJUXAP1tOZS0LR826vyh2+1oNeu34HAvuShufFSJZcYVIo1EBQtC+ts+mh8a8223+J4pliiiv2dA7fYbng2S+m3hQbLZhEc1uZqUyEYAT4Bd3xScTlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749986394; c=relaxed/simple;
	bh=8/RfBxpw24mJZUshadkvI0WIFPoiZTfcIUQJXMQp8nQ=;
	h=To:Subject:From:Message-Id:Date; b=j0NStq1jb9CT5mNXuvxjbRzG+r/I/JKQhha7vd+vr39dWYorZzO+Nm8zLUTGhTgeyxKeVaO8BNfkvT1OkgSw8tg+rdbiQGRlPm7mTGOic/DWHZq3/g1g95UqWKk32kMMmfuvYGSNuLJVrlfFkq5ebqhmf0q5g84ZyysurWAtoqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+20DNft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+20DNft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB55FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749986393;
	bh=8/RfBxpw24mJZUshadkvI0WIFPoiZTfcIUQJXMQp8nQ=;
	h=To:Subject:From:Date:From;
	b=m+20DNft2OXycH3BiS+HyZly5j+4cuDk3UeYuQmizrc22sUVxg3Wgb/PYw2w9hDA/
	 YCXmD1DgylguAirLCvfjersN01DLe6oXTreWPHCDZaxUj2oB/3UA0xbcNcxFnQku9Y
	 aFRgYHdLVcBjIYmAEHJDYuWRvp/g/KfvRb9MXcgK02HxehAn6Fm/h9W2XUcjhMzt2Q
	 fYg3ayrGYM/iXkkX9AhixxIG6/ec5oNKAEvk25JqSehbyoKIAQNcky0TVAUUQBAYCB
	 vrUmzCLzQbM/qQG9tFIWoVp/2pskXTa7ynIBSsyShlExx32mkIFTCb8mShRBwf0Nre
	 or1/cvkAziCVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D21C71150
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998639358.26083.13057206050058207289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4373b33a539f1bc8b447fc3717acb517567891c9a3fd99d6351e8ed7060c77ef
Date: Sun, 15 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749986393
