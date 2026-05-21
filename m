Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41636346FB3
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779399154; cv=none; b=SMk818cmkd8VAF1VTvDaWOYYGcig0Q5Y6NHlALo4f+63/7brxwmaRNhF/NVi5ZRSxJtQSzIwHeM/5N1/wN35bcBdINYDgMyGAuRHiXInI5rWBRLpCy7ifoj+qpKOM1Z78lkmxnajxzaz1ARM/mMMuoZJBzUm4wuT5xMt0X42wkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779399154; c=relaxed/simple;
	bh=0zlWY/tjVI4JWpB+ZASaIkMj5Si83zmKmb585+CT6vc=;
	h=To:Subject:From:Message-Id:Date; b=iJxX5RiI8vrd0ZtLC4EjouIOtNcJy1tT2QoguLLWWID+IhGueAFEKO97rOUzL1Ili42bbKRWENhbGTbHT6qmRYKDXlSnX+Ez8O/ANsGwIITAIntK9Wv1z6wPR5QolNmfqwuSGWRzSBWTrJIaWTCsXLaviRQ1yFK5CQmwBeabRf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdO/3rMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdO/3rMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C296EC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779399153;
	bh=0zlWY/tjVI4JWpB+ZASaIkMj5Si83zmKmb585+CT6vc=;
	h=To:Subject:From:Date:From;
	b=hdO/3rMmsUfjm/ImcLPO0k3oJLC3d3pQA3K4fSbnf2j+e8KH5BHwdH6tqbInmb/Tc
	 YFpAqGsOjkqNUO7wiJdWrk8AkhOJdhF5u7zQx/Vmby0fGG4JBE3y6wQdM2J15F7Jlz
	 x+VS38kZJKBPPgN+xxTKQaQ9ivnH2YOr/rxLuT7rbjvYNXvtJFLH21ZyQnkWr7Tf28
	 8lZvs59Uhj/P798MSNPNMv2lloCG9fG2VKXLZJPAtRJ/R8e0kka+Hm17NlWzY31sg1
	 6MHf7G4DZ7s/wOfYW5SZX4Rs/q5AstSVO5EHlO4SY5araIXmST+u5+IOMShC2Ejwm/
	 UDZfikmtmoy/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91E9CD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939915368.2735.6734491971867493936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8df4cccb261057535fb083c00a7663688ac8d0931d404fbcb2488473af7c2d5
Date: Thu, 21 May 2026 21:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779399153
