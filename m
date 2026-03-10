Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0697C368970
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773177294; cv=none; b=rykVKEPSsX1X4WLQ8sYuDTuSLFBMjUDz2fkGtnoWkpt23TNlj0xInLARx4MW38OZwSlTvcUfnfdjwYgPqlC74v48se4ogfPZxx4rIJm4OogdPwsdoe2N/W1J+7slEY4shev4VvMfLbXJQG6tNntaaqLnXCTnKDUlBVllCoMtGLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773177294; c=relaxed/simple;
	bh=BcbW8CjgS999t87Um7TF9RWs1PhD63X+F5b+Sn5mLXk=;
	h=To:Subject:From:Message-Id:Date; b=s4J4JHx8b/p+Ujzz85SwFu11yipR8m8JMOCQ8QDMid3T2Zvw/+Czwn4/q9krfqyqFs5h3ORj4e8z+PIuOeXVToy5amrMGPUFG2MeqAiKUboPSHqQjuCAzjOV+zIPcBCne6XKdaPejA3+hQ1VOW45MP6K1TXyRP9q9EeqkC4stws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTtIbqP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTtIbqP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7603C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773177293;
	bh=BcbW8CjgS999t87Um7TF9RWs1PhD63X+F5b+Sn5mLXk=;
	h=To:Subject:From:Date:From;
	b=tTtIbqP4mHCGbjOrt4Z87/vTE2ATS78u5zfawr96wH+J67B8kf8Zr2clqywBgr9Gq
	 SclkEFuDE8soMjtUlGUSpkgvF1Ob2/GjN8nmtRqAYQs/yLOLNY2oysisp+uQWa7sPI
	 UuN0RX8iI7+7hBjhtqQ3VlIAkqiK1mVvV/OxV5RTl5CpOoFnue0I6427S9lXC9cDKZ
	 76AyjOokOFCH0hgbBsk1YqXwKifyzR9FXnZ+9vApVSzjN9gHTU1lD5kDa/O1JyEGjn
	 Ml4HASBcbM9StppBB54ygtgnmjNrV/ThzIwVBZe2+xAy8mvp1f2GCySukEu+8Dziz0
	 msnjrfkGDz/3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94107FD4F34
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317729358.5485.13889391943019227109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc717c94b4893bcb8b314070f9f335e8df33936307aa2cb1e7afaf45951fce31
Date: Tue, 10 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773177293
