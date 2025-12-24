Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3801B2D24AC
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766565234; cv=none; b=cnGckJHoAKSDb1fyT3rwmnHrW2iS2meiZDHtliYwZuC/6HvMVMCPXAQjhKOAzsBxW7JtVuBOjVz3fPUtqfCTL0pXYandyfcmA479q6jAghQ8G2lGygBForNYHZKVJrcf7JMFvl4bASDrs4YLGrhecXT3ccyVjPoUo4DY49CeJtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766565234; c=relaxed/simple;
	bh=1S7m+/Gqly06fYt0t/TVl6DgsFJfR/gt56Zl8lKzfH8=;
	h=To:Subject:From:Message-Id:Date; b=vBMS4kvjyGvIep+ydNiDBNAnxwmRxnJFFl2D/lVg/Ptp0XxMtMn4dAKWhA8rzHRnl0UpT8tAPB1aQ7IG8QC9XQI5+orAO30+ZvtoaCk4ni1cm2uS5VOQdLLMqDXgQiycQgLwzpHov9bcbC4+ob/5Dvs2RU6Tcei1cd7X8zBYG9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieD4PtEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieD4PtEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F57C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766565233;
	bh=1S7m+/Gqly06fYt0t/TVl6DgsFJfR/gt56Zl8lKzfH8=;
	h=To:Subject:From:Date:From;
	b=ieD4PtEpPPlXZHHHFovNgsXbpBxa7flEbH/y8H3OQ2blgQzhhXfzrSYueRL6LbiOj
	 KqRJ2eT+t3krsOXAqCB/yb3bLT5q5Z02fnEe5yB6fm72Po3++/u5+uqSSXE/7UweHP
	 Lpyu5Y563fvZywNyZBH6nrntuf0tw87UTlXETHmn/mD/nTfuv4ELm26PKIWkYHIUrG
	 1mh5v0tcoa69c+fjpsL8ar7g0AOXlBMc9mhT/IYNuBR7xiBbqv4BMcxEUdMayHotzX
	 rvHArGepEPADnHM9LQx4Fv6AYz6kzuu9o2f7xS2/ZVauM9p+8XJCyny+0VuxVlJ5Sw
	 GZXU8EnXNXtWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CD9E7491E
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656523362.31263.5701645446611272946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c21695767074d0f291aae944b256927feb02804f5d4996b9f567ea6a86aa02e
Date: Wed, 24 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766565233
