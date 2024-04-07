Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13290846D
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712452697; cv=none; b=TUkxjjUOsC+NeaiwlFo0Kxb7vlCFr+TJXdaNJppEV2HoioSEQIHiHEm6Px1hOnyQuZ2pGQwAQe+4OUciREifxIKYY3X8nAU4412hqKA+pGbU5ubTmH04FiENEqesXutdZlelbJdsWNyAtS4WcBGE0NdApqfccKiznBzf3vJwVG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712452697; c=relaxed/simple;
	bh=VNkzboQXVJIgKxcCm3Ja7bUdqLKu2xHli6pfbnr9JVw=;
	h=To:Subject:From:Message-Id:Date; b=CW2KtDB2//tnv79KegwtbIT6jNepfJf0qZ6yYxCXmURfYlurRjnHHqjGPv39AA345SFkW0rJvTeWFGGixvvSmKt7AnlknitxrUa3xkNqv8rmmJhztoYIpP4IoTr6jSGi4S0WMbGyGIyvP1dSaSZsKj6CmgBPY2Scx9l2IAM2H40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKmW5iU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKmW5iU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B26C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712452696;
	bh=VNkzboQXVJIgKxcCm3Ja7bUdqLKu2xHli6pfbnr9JVw=;
	h=To:Subject:From:Date:From;
	b=VKmW5iU3HEsDnIdSXP8v+R3N24OytNb1RAN5OB2ktkLzid2AMs462eORVO/w6mKzX
	 zM11V06KGz63ELSgHu2mW7MQBS8t3eskInGoeXG9qMsa7TfTqGcM+F9p2dRrXdgdgG
	 a0dlCQ53jzqhKMnkMxMfZzhIytu3uGYIvlMEFKIa3dQmfrpwcOqvAGX5EdHh7W/os0
	 ++ndwI3ZxWrERU0N00qHaircbYW2XTOv762Sl26Mtx7ZyHdB0tAospdvIOOVJkCGVc
	 pet9kMNmzxvHKhe6aclokl+oIN8hMmwB4DklLlDm/1PHIohUY07ld++aC5oP2fe6Id
	 nAFdsRXK15NnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A24C67861
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171245269637.21293.5774932111728698953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172b30b4d8ebc3967f92f4e8a0d65466e9b24b20ef901b4e9fcef61fb79b40b7
Date: Sun, 07 Apr 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712452696
