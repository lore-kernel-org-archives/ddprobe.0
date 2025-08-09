Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8C321FF2E
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754752794; cv=none; b=hdL7bzvsVKly882IUR2ZKtoaQAN4oWJlEo8gzbko0S0t7Ac75GGzvUcZWPXbcI6DKiOeyBJxCJP0FPxucWQTJD6xjlrtZBh009RU0pyet4gMvHw0RPAmcQXfUim9J9hc1bO0qCe6dRR/YPOEi5AK56HtwutoEVROj1tzuBY60yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754752794; c=relaxed/simple;
	bh=ih6t9GJDtMemzUTA18q3As8WYwuyRvBr/CqssFQAbE0=;
	h=To:Subject:From:Message-Id:Date; b=S5mjQwDvHb9wVC7TplQSmAWbNpwgcoqP/9uffUSTsGNcvTtYBs81cX/6CfEhsGeJm2143RQcSRLYfMyhFoza42IWB6Q9gadEN7nqMxttxYvepUX0mVOkixAMvvh3CGktnTPZO7MCZf6plyOJlctba7UPbtdkn8ykS2Z6eBdjKcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+VOj/AS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+VOj/AS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0469C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754752793;
	bh=ih6t9GJDtMemzUTA18q3As8WYwuyRvBr/CqssFQAbE0=;
	h=To:Subject:From:Date:From;
	b=V+VOj/ASlG1qE72Px6aDMvnfxxABbmqJDb+yO80VQ2ejdiM04Jbu3M0fqBUBqjvtg
	 kB/+kFcjEaruqcMzG2QIIeKz69aVMNkFCLc6bNBVIPpknAjZT87XzcOpDDVl1hai+N
	 JuzoV2cvZxx187WFdtOJLvLHRnp6jZQ3h8PxE7VbKIrn8KbLiDNKnBvo+0H8KNQNkQ
	 tirYEFLZHbfBzKzq0lFMl/YiaO4t5WEP4zBAqh11kyRmFzIMhf9dhguqd4d5dz/RqM
	 zwHrjZEZtJdfeQzdUtP4ChhgXGUcQsLx7rb0k9ynJY72IxaqyzTBtyOdwG+ADiFwJw
	 XBlhHt1/MI84g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFD8C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475279357.10167.10281114581150333769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc6e567399a9e55dac79fa732be7945907fcb21bde68de88c12bf51c443a7b1
Date: Sat, 09 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754752793
