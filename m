Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC4628851C
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768353835; cv=none; b=siMu6+EFFR6APRBW5gog6rTSXOVsJ6U7MMLOgvsX/rsT7e9mYv8xtNtzHIm5mo9Q1r/c4vTN2DHEwfigCPQ4xlOJr2IPyT6LX2i448NF+sXeytheNDFU6Pi0i4mDv5uUJqA5HWxZwvw3zUxMjBDxNE+eh+UWNkkQqq3PbLQsVsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768353835; c=relaxed/simple;
	bh=nSl5TQTe6ChhSFdGmOQRoAUwKOiDflfRoQ8EeQvwLRY=;
	h=To:Subject:From:Message-Id:Date; b=SWyQe2nZ/MKIx7s8+RRyHq7D32znmtrYJ3mHaJ88gqLr9aKW2t3+HphMZ53291y+m2CHD0yqzD5Xh4/9Fq3ZmIaeBVtiw+YfyrMNOe5HY0p7GNlt0eKSgAX3AWb3LT9Pni4vTJf+Bkzi1phPmVlE32KwOX39E0+J6W20Uo0I2dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBiXn2Ww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBiXn2Ww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F069C116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768353834;
	bh=nSl5TQTe6ChhSFdGmOQRoAUwKOiDflfRoQ8EeQvwLRY=;
	h=To:Subject:From:Date:From;
	b=rBiXn2Ww4asomzVD69xq+aHp6YRfCUmQO0tikc2JMO53Llaqx0p54ALBJxWQKJ0g6
	 D3byG+RbHRBc0k8IZ8fN4MuS/EkDyeQ0Np2v/hEJj/w9sKw343CahOlLZ7QSm6pLpk
	 8CsDqx2uJuYs82hSkolpeFRrKRsjhZFq6o/hosm0OJqOYo2LwNYhRYPVlbbvWy4J8h
	 rfi1jdQSxUc76PtYXDAKVbL4JskjEYsngsA+GIHlNJ2m7oRCpSOu4zrErxjx16CFq3
	 br/L8Cg4bnchRoMo0wdlwe6VgKeByaSkCzFFI4e66uchAk1rfrmzudRYw3ZBeAHAxh
	 MMeyR1hheo5JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B6D30CF6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835383358.11953.15113748911248094347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dba33572c9b47589c14d6c4b352018e522134c0f6dd28545e9ac50449bf3a8f
Date: Wed, 14 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768353833
