Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539C6345ED3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787338234; cv=none; b=t/6ttJ29Tdg5EmCw6dO69pInPywMQnnnApc51t4vd/9wK6viz4Cs6x8uZHle0jPNF7bHmoN9nn3vhyxFDoWLZaHMYClKNesRBYUQP3MQad2RA8qlrHEv9CpGevD+DDnmDuvbAu9Qor9BzMP7pqrvFoncROS/ic+Tc3Ih3MYusgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787338234; c=relaxed/simple;
	bh=504MvXcEq6hD4GP8hGnTrRLOt40SO87nXgOvqwtCz00=;
	h=To:Subject:From:Message-Id:Date; b=NX86RjMgyA9BsFdiSlYWfAdO6Uc3BjDDb4ofcp4yEEqu+AXydt0Oroz7UeFle5S2GbDgV+w52218xR3OlqMUs5PXRI/oGTbmBoDCwBS0T+mpPvT9cqNJYgu4DojhABrf2NeragHeWyOE5czV+J0qim+t8a9vFaJFVa7Ua+31O1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJ/lnXKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJ/lnXKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE580C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787338233;
	bh=504MvXcEq6hD4GP8hGnTrRLOt40SO87nXgOvqwtCz00=;
	h=To:Subject:From:Date:From;
	b=cJ/lnXKHHjBDdLWqJ8mp04KJN+3Q9ioeo3Ojo/UO0bvP+pN6IjOohZqb/g6op7YG/
	 8WZx2Ur1MIxkPQ2cwM8PUn0drOpxhowOmrD0FhDWOfNyRxtHtFyDKcKWO9AmNP0KrG
	 +yEARQWj4V12MX9nz9ZIbZ7aIT0QW7pEtZk5ZtxkeJ6GB5ZTMOvFSUxu1w6LxKJLUp
	 6v9neldsnuKEG4H9dmwQw+xSxKwic02ORAuxq91cgSWeFMb9W1JHAiBADGtmiMma6Z
	 NF8k0xP6dnTOvYMp4tEL66/34OZ9nOa5v0RNo4eU9jyolfnlU5eoc7tiO+5u/dRGoo
	 g4SygZhHthnLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF19C5DF97
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733823368.13313.11430989283156778577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a4d7cfccd60c1bd076c3f656aa94945d997cd2fe99a9802a02fe1baea43ba1
Date: Fri, 21 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787338233
