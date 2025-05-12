Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3DB4A08
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747053594; cv=none; b=nJUGlGhNbzDBZ4DYHhAw+s+0oF+i+izU189yYPr6LC+aFBqVxBIcvwJpyeopkLs62DSgBf3erl1MLiKTJW6XxMWFmMTBaHUuHc6J410BjzU128yDMBfFJNahjWbzJRaiWArJGqj/r2Q3u1VQtK+ey0Ij7ODbE845UlBkeQs4qSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747053594; c=relaxed/simple;
	bh=DrXHExMSEK985RybEgQSPmujw7O8ndADAj3rq23dawQ=;
	h=To:Subject:From:Message-Id:Date; b=qNGLHbBfhuB2PFOjRY+5v2UCj0XC1rwPS4aKSX4bsJVvvF9IMO568wmGvjMy/Vm4C0hE8XP1yy2ioBRmCKJF0fNheNNOl1TpZaE/d6/hyY/y764ewQIEVKx+Da16J7CtqQ7v28DZm0fPl9N1++DGvxXCISBVnniqa3C15YQLEEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIscAkTf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIscAkTf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98DADC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747053593;
	bh=DrXHExMSEK985RybEgQSPmujw7O8ndADAj3rq23dawQ=;
	h=To:Subject:From:Date:From;
	b=VIscAkTfB8BEzOhti0Z6TJXvAN4WbjGciCwhJqyqhbI66UNPCj4s5uS92KfRFJKof
	 CBGMseE9waMDJD682twG9/gCU95XGTBpdaQFBBqxD/rvdJngbut7RmvY7U4J+KSPvw
	 38A5aAVNk+0ZyKXUUAI7rnfpXoyfoKCLjm0acoEObMfc3uC2Gv2P5BIz0Kc730/dSY
	 6oUAsvr0QS89ghL/SgT1LyzfqHmbG0G28FfmV97ZrStk2aTJujYjJPZO+z72wLvcUZ
	 1U6UMgpZ9Jg7ON7T6WVYQi2Pzd1GvKNCy8uH207fTWUP6O4noJXYEmoVSrJ7hZ73Zs
	 hEgDXKIS77aag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B1C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705359357.4752.17296435257743838167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a1ca650b4200cbb68243c606b8efe3c588799c4a849b0724fe6aecbbb578367
Date: Mon, 12 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747053593
