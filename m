Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74058834
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771632894; cv=none; b=dOtbuB1J5XdD0E537HIpxNraIVh3ayE0tUvX4bk0QJ9VhHIPPzM1qOEdgBY5bX5SsotUU4b/9U18MvF1pfUG9ySzfMO16+UeHRKDkrPw/7y6MGTRGeSc/wkF57RwnPBxbo37t7Sjfu7fnrVaYPRWHS8y/W9B39iDAN6SnAP/B9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771632894; c=relaxed/simple;
	bh=zCS06a0kkMQnrRWFzwv/ai/nn9T/WH6Bo9yVznz3UbQ=;
	h=To:Subject:From:Message-Id:Date; b=dtXCv1PT2BvpkFGdhppCOiW9iriaoQNP3ZMFf+2/8OtouWvSqQ/VmRKN7AoTlDQh+U5YT8EpOxtdsgieFMnT1pPU7Cz1tGiIv52F4BM/uoT7hFdoR2dDW8yW4VqXH2+V9Y12nPKcnQtgt8eDrR5Uh8YnqAcZsexP7Pdd3C1ewEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOYaM0I0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOYaM0I0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B194CC116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771632893;
	bh=zCS06a0kkMQnrRWFzwv/ai/nn9T/WH6Bo9yVznz3UbQ=;
	h=To:Subject:From:Date:From;
	b=tOYaM0I0q3WVW6y51xOdzXOcRyLWO/OG+/luIlAUOhzGhPwljZvw+QfOUoigAW9UI
	 TH7TlrriG8ZrQbqgkkHTxDAuYlJay+637wUYPoWf/KOObOFamUH1/ewUfS63LdfTYF
	 oirnidrB2ro42z15AGSWzppO1Rw1jITtMp+e8XHwFeNR0fenqM65IijtpiTk+sgT6Z
	 aFKra8iZTjFYFkMWUJOcxfbX/xlD++3VGvv989fjokaFZ52S9oeuMNURYWrU6RAu46
	 b9SLm+k2QVyF9MHYOLfmQ/wSzdjG71gC1b6POC6aMK6wCDPssLYuHwLmDUsQEAfVi8
	 oSlLXaqcUFvxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E07C5CFF1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163289359.5568.8561177935101400007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08740238b59574d0543d558aeee529ee40a510bde3ea37696aeab672437c45a4
Date: Sat, 21 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771632893
