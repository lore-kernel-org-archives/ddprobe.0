Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5388433046
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790928034; cv=none; b=D4dUheNB4rHVJAM9hcT99VnGGMm1tVOiTeInw3xex5LQbGu+FVR3YpTm5xSgh0CKTV8xsDeyo40vMlT7tw5+7KsS2M317BUaIXafGG4iS5DgeKj980A2mJJ8OO13qWUVySHiZVGkA9yX0HrtmkLtPN/i8lvwDSb6hHcooTf8s+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790928034; c=relaxed/simple;
	bh=npfGoa3PhbC33XVcMlbg+Vyua8YOBYljG1HXn1CWjvM=;
	h=To:Subject:From:Message-Id:Date; b=NHnHQ6YJKVW8ujYShdWY+GLjzZ+abTpg1sp88++FikLahEZwdW9Bf+rpDUm9DIroVtkGTgW+srFexGqJld4KAazJrLygaLjbqt9RQg7rLrrkivxlgM+lzjghCkhq1JycJhFj1TKfO2EK1cDujCvsQLiKv1VVqDwAaXr8a/rh7Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SR5OoRGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SR5OoRGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B5BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790928033;
	bh=npfGoa3PhbC33XVcMlbg+Vyua8YOBYljG1HXn1CWjvM=;
	h=To:Subject:From:Date:From;
	b=SR5OoRGGCrX3H4HGaX90W3dK1jwC41nOuoJml9wXUKabGlL1gur58QFyCkVMaE3yC
	 Vm0/8eyvf0yVBwJzJPRVhj4zOad7tzNFjVLo2NsIMuDhLMBoIBYd7AHpcW3hIBrtIo
	 DQwmFx4vhgqfsJQOLcZpe2NKbnTqZWSoOkWaHJMQgap4+H6DSQyzOOZDDTdOC0tsny
	 SrnrH+8BTKG/08l6s8ImjK1UvA7BB1WhUmzviFjKWBeKjpe4x75dtkNVwlCISoXE/X
	 eCS4C80qQ6t8FrzPmh4iVJMMJKXBKsTq0jfRRuvxtbHfvlTq+viudQf/vlz1hn/vnf
	 g3OdgSq6uGV/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF555CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092803370.28915.1039055926861277547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d928d6618ac9acb1ac900773d032bf1e598e04e4a8ad644ed2b8d9d43cf0abd
Date: Fri, 02 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790928033
