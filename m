Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229B725B30D
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777522054; cv=none; b=j0vRMxmQ0hbY3mIWc7E3jplpCdK7iK4CPhkhaO3QCyx5ite2Wx9e1APW2gIeNwX9RuO4Rodz/od8yI3mswsDTHqZSIhKeMmE9CZp1Mbq2mkvZsIgW1wmQQ33ZXiiB9geCncl/VI6gnn+CY0rZ0+VJGuhQjtxggHfSOWWOyMdyH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777522054; c=relaxed/simple;
	bh=/ptfTCSX73d/oZBl/TWJug6C+yJXROSekKcMviWC1w4=;
	h=To:Subject:From:Message-Id:Date; b=SbdP0OAgw3+Rfkh4K3xRvPPIqh12oSBTBbcReyEB3kCrRgWjK6rB54Id44p8uVu4dS6KQo5TyTZ4XocOGUnB36tDMsLPm5CsQFJPuwFAu5mW5rHKZWghLv9UXqTcfVru9aCmU4HM3z7UTSad9GcOijz8fGtQqDdcu6+5C8VL/DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Edce7hVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Edce7hVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81BEC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777522053;
	bh=/ptfTCSX73d/oZBl/TWJug6C+yJXROSekKcMviWC1w4=;
	h=To:Subject:From:Date:From;
	b=Edce7hVgscQbRgof6J6YTqy/+Tu0onxANqR3+JPM0bwbmxD7Tc3P7EOA54FAZ8zXA
	 KjbSh6r6HUREUflZ6QELn0B1ICOV1Q3Cr5b3cnizIrufZC9WyYoh/JRFjgqGvBuEWW
	 GuQXOnHMgZJD55UgT/QeLkPQ19TsjccQqOdaRoyIWVCtKxRxh0QPkoQ31fjVk//tQ0
	 PtTB5107r25ervJ71jezhBWdBHbTRG6WbmhI3Gsyq86jCRA3w7tG2HvRqsDkGT1yQ3
	 UXrkTcYOC4MOedlKkM1Xxe7bkMnK61EMs5k0Kwwt4QNLOEElMgaCkjo+u4w0tmlyCl
	 sa4ssYOhpoyUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9862FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752205368.8831.4156440012805222380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8fb9629db7c862936500d121955a63b2dbef3b177f05855a3462e61794d429a
Date: Thu, 30 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777522053
