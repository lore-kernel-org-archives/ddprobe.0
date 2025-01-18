Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329A71531C1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737194154; cv=none; b=VwhhxFegdHxKJMNuyDDZdU/Y06adGd1ZAGOzai92gjB6kCg2IbM2Sw+pTGTsiYsA5jV+e76Y9cAwX9XqWQlWu3L8LHCmtu/p+Q7EvlhBlzuTwspEjLRk41/hle8ommoX259a2TP03eqC7xDF9YguoYpXfR47Ed1epxhu4vKB644=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737194154; c=relaxed/simple;
	bh=pl9dz4sPHJXn3muhKmttxf1i977POvewJofuQVzsrmI=;
	h=To:Subject:From:Message-Id:Date; b=CKEn7NPLuCZhWhbH24S+dy/2xn2Y3EA5OWh7PZqJlUunQIUkPynE8jBXQZrCyZPNmT1VvpBZyapm663CT39wmBmgzWtqll6D902eF2NfSDniMZ2wVp9zwhH4LXFW03i91qf5WspeF0ib2J/LEWuYO3xJLb9gm3I0pnhsC0nYUzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNushfAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNushfAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA8C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737194153;
	bh=pl9dz4sPHJXn3muhKmttxf1i977POvewJofuQVzsrmI=;
	h=To:Subject:From:Date:From;
	b=SNushfAIqxVjAZ4e8wTeI3gIfAu0tpXCPG3NkIujWDDC0eVwYJ5mu0tOOJo7cyBaE
	 aqpLrl4QESqRan51EfQ8eU9NXbLHjWdw1bYYCfyuPc7F6HrG7op33OGjobwSh6+gVZ
	 UyUvZq1itsaJi7rDtqgkJ82zmb+o/zptRTbFZYdeFdvhD0e/FCV1XWd0k93TzNcxtj
	 QVh4I6zISa4rY9dT2z4AR4Y+fhDINYwTRB9vCowoX9G4he9rt11a/lhNGnjjA64LN8
	 6VqYlRKJJjckR9gQ4v8uYl/rUye4Yk8UtkBL3SOdZo8ThM7NCNk6p+6SxP+6BdpZRH
	 BkzZyBI8atW4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B3C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173719415358.22646.8197407341352317128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622a7e71d251140aead8d1e0516ea387d7c5f38458eabb67092d821c01e75b35
Date: Sat, 18 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737194153
