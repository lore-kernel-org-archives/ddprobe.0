Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4474C2139B0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749762594; cv=none; b=TZkiHtkorS9qoUYe+njGPtvjW1yzySoqrax/AwDp4pQhmjetVyqa6bYtw7I7pCxotvG9fAuh2a7aDRii+LSQULnZ38/yEwEEEd8oDyxEQN2zFSSPpdlxdE1zfRxELVE9jWTQG5oep36S0j0GAl0QFD89Y26Yf3G1c3NhARCWQc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749762594; c=relaxed/simple;
	bh=VMutU3VTQ2Frb5hXCxG9o4W1BSdUsOG4FT9A6U8dFCM=;
	h=To:Subject:From:Message-Id:Date; b=XGV1jo6ZlLWTXkGvwS9/mzeYJ7IxM87j1rfD/9So5q84tzp2W0s/GczSZ6HuIn3Y/oVznrgy3vZe19kjhkxxD+dJBIvTkpeNjiHU51SsVQA1XGAlk4RUA9kG4qPazxdqDLjEChdVcT2ET0hAdWFuJ8/ZmkSO7IvhyIV2bOXACok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwBqWp8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwBqWp8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF5BC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749762593;
	bh=VMutU3VTQ2Frb5hXCxG9o4W1BSdUsOG4FT9A6U8dFCM=;
	h=To:Subject:From:Date:From;
	b=BwBqWp8MVyydnPQwU+66g9HJdLQ/lv8p0ZO8aZ3HmaOLSQAjOrvK6oroBXKCg3juy
	 iuiiaY1KntNWPi0zW3Enrqv8XsUH899nMyx3wLMv4LXOMR75o3dCzOiCrL7WEE3awH
	 PtbMmq+PJMm+srvdiPx1y8MUoYWT+kT1RRz3AGO+Ofach5U5Qc3dsuLdV+5W5dMbg+
	 QGel9XWaKlxABs5zY9XFh0jNatUeijWZslamayp1fUxcL80BQSF4ccjOH+pyA3ZY5C
	 /dRMSfILE6M69bIVSZL+G8j+2zPMi9ZG40z725K5h/7p/6NEQkGGVUc30u8l+k8HXW
	 K5hXARX1N2nzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951EDC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976259360.8210.12026735620328435648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9518de65820a432d2ca081922028ec7dd2432e06b90eeac7eaca4d456c9ef9d2
Date: Thu, 12 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749762593
