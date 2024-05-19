Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F38175AB
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 20:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716151943; cv=none; b=mWW1LzEZLm43C4rQHFJV0BKMBEBCwXzIP3pqh+XbhXakxVJdLb6lCYj6KHUj3lDbmT4Vt0ZAbe+VMP3+aBVePc4IrsCqk/InoO9qJ4uAVr2WdNsXOqN4eeBz7se8rXuRtFGa/0mROuel/9FDvJ4ng+7JgfcQBdybQrotnzrAG70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716151943; c=relaxed/simple;
	bh=7sMTEeo25y8IznCl6KKvnaylQwqR98Djt0C7mHbr8aE=;
	h=To:Subject:From:Message-Id:Date; b=Q+fjBPoHgFvLbOEPC6olFIIsEjFEaAZ4+xI73S+yLp47MU72GGfQ88w+YkOPZbio9ppyIEE3bBm2unkT142ZxNuSAI/EPk6RjbL9FrfMQIGDkBqGFpdT+XBDbQbeXrmzK2Is3IToHm+i8wJBL6GyTq3az2ALueti11O0yzJBED0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYzh0lPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYzh0lPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F97FC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 20:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716151943;
	bh=7sMTEeo25y8IznCl6KKvnaylQwqR98Djt0C7mHbr8aE=;
	h=To:Subject:From:Date:From;
	b=lYzh0lPsQfbSb5IoAjWqkAKOdQsTXM/X7GKwDUd40b3mebjf+2AvOcJAA/yoAy1YW
	 ntrfeNqSJ5jt0zYSsk0y4szOEN0FKsPpntCJlJInWsDTcS2LMGz4bkkxxioEVP/Ycx
	 IfFrK7IPCNZQEvFTcEl/NGiksxiV+DRToiAER2pQ81q4bAD9+196vjjz3BVMZqBRx+
	 xC1bfO7dcd0PazqEmF7Toao5uw1ZdB2ZHEA6V+8j+Jm3irQ5b2VdFteUvYK2kgTwky
	 /k4CXk1QVplHMiyLQ493YdT+BPYpD3owxxaR3Vw613vVH3DsKUI5ktbtFznX2Rw5Ff
	 keYUl70RV5cKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F21C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171615194281.11206.13130519508357806446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f06de30e9b23a7dda2ac248f5b25848645d69e97038378654316c15527408816
Date: Sun, 19 May 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716151942
