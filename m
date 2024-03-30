Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0661E898
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711835297; cv=none; b=UH8d49hFBcnRo73PKwe0EIxqQkW9tx5TixngVjhVqr8CI6UPaI5PJvGxEXpdgfxYZIuFOmFNl17b7GG4hBlwf5pL08oMcviKsl1obIuafOCCyvojqL1dwmd80sEmUM72Gte82a1DTbXf/xpS1UY9reFUgCUh2pnX93rNWADp5tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711835297; c=relaxed/simple;
	bh=EwgSL1IRtHyyfh4bjdA8AaCFqiw1vug2vyU6+fsxuf4=;
	h=To:Subject:From:Message-Id:Date; b=cJH9nf2NJlFZMYCYUU9dWc7BuSMjjDqVEeEQy1qxw158KMPH5SIVoqqzd7q7cBk0nxt4bml5u354KmmxXZ6w4d6YeGGD3NaounGTspvw4WCladadbNhk7I+jRiuKoeAQAjvUuf0tKNXdhHjvwD+TdNhTVBQ1nW9O2bC7OqpLXis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhCQAGbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhCQAGbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CF9C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711835296;
	bh=EwgSL1IRtHyyfh4bjdA8AaCFqiw1vug2vyU6+fsxuf4=;
	h=To:Subject:From:Date:From;
	b=qhCQAGbrpyw1LGCI+vf6PbdyAeFGTK887/vUsjDNLC2Adv5k8pyXs/86uPeg5HdTo
	 NHPDmVz17D8uCPswvQkavaAF39mu+VT6eH1A9DUWwk8FOoTRnb4qccyU06a9RJSmNV
	 GXdaJRDkWB/NghSjfb7GfDeOHHDtZmXWGSoW/1F5bBlmw6ZjfYP/ARNWyfFryTVSL+
	 PYn2sxOFXRMfx3cmhMSefWnMyLmunDzR26AKzYwK8Pjyztgw1TFvCbkbMkCvAQnWIp
	 0rn9avnOA21dv+DyPDqc8xVkL7FI9qD72NccP0a6dbUoRCGC8oqE04tDUM3bb4zuiz
	 alZMQNj5RFyLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9C3C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171183529636.27428.12194687011154347741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359fd30379bdb50264d1c760bd42f233b329f23497be68054f4a1cfdf64ce741
Date: Sat, 30 Mar 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711835296
