Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B26536AB7B
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781910994; cv=none; b=I39L5NhymeKaqO1HxgO/DtEg7OjpfLsP8miqa+P12m4YKsHo5ncRX6tbpT1zIZePSyBGxMyIdhYLVOlhPcr7UEgGkoSwOJlFnX8Mhte5aX9xKlCok2Zh18EG9ccvHzcsnmtH09vlSp2poHdJKXPqtfoc7M/khO9HgA8gqFj+f2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781910994; c=relaxed/simple;
	bh=4TlALpASqi0UxKASitJkNlPQ/xNBvGU6AUobmIxgzHs=;
	h=To:Subject:From:Message-Id:Date; b=si/0M4e/mh3VJBDAZpCDa8QsseJc3o4HPvQvYsE2Jj0G04ZQwaLpAuit5eoilCgLYWvvfmSW+CM5+GVuocUnFiM1pO6XnrzfzoWkwKwwwXhwMjBz8eeLoEjB7gG/Chj7FUyr5UtwlmBz6TNPYRn/wN2HQOdYsKgHGPZPoresY18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXFd97A0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXFd97A0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE61C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781910993;
	bh=4TlALpASqi0UxKASitJkNlPQ/xNBvGU6AUobmIxgzHs=;
	h=To:Subject:From:Date:From;
	b=pXFd97A0cWqnY8ARe0W1rXl4HosP90LTaCj2aAzYKohKvKMEF1A/Mk5EAH8q2IJoc
	 frw3PgBOJgIkFL2pYipn0q46gT3++k5ZiwgBxKTxEUaw6L+va7d8Y1ptmVeVblIVJu
	 X27c/qPXfMaBrVL+M9k/KlG6B4znwexsyRfCkJEF3SPC55MCAWXf9XycnNXiDBxwwx
	 4CzxNf7yY1zMf3jILoKGYctW/PxDSkTl31VajTmWg5tNQ9axNxI4bb4R/XcXEBCzpz
	 nFr4+7mP6Dk9Gg8kq8psSqdq2uGDtuFBEoS4gzOi9qd4nUAZgYLJc5ugmIjdr0/ai3
	 L7j5ee1uxCetA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4D7CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191099369.27802.15091615432389826831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739fd7583e539ebe3918cfad8d7a03d622a7b355f8b99e2678e697959537ce6e
Date: Fri, 19 Jun 2026 23:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781910993
