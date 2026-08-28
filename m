Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5004D187346
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787884234; cv=none; b=GcfgfFr1qQmMfbIhhdRnmPb7TtsfEls07KqYk3pOH8zpT2mQR+byf9cHHV/YJFIR2kwg8IiCkc22s4JMhYQYWaKrLQvPv8Z4wCg0ywhb2Aka1Byqp4JPibyI59cL4V6ufh2Zg4Z1vIgtB1TA1S9oNanghQVAt4KDCnBMms2GxVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787884234; c=relaxed/simple;
	bh=1yOIdaz3kFcI/jK//E4LXsG1wL1CqUtzxVGALBwx5vE=;
	h=To:Subject:From:Message-Id:Date; b=gChCHbgLuK7xaRTgKQGlgnHkTlbz2afgsnN0cEhSOWFURB/5ZXIuQj1eOwrWDFdix59LSh7/we+p9Pb25D6JXvpGBAJIZXj8vBARKBMAHx98mcMb/jkZdORxIdqk68zKnap1JaCiocvIHETkI2/vBIVNQ8HyQGuaXeTNZ1pwbWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIN5oo90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIN5oo90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1564C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787884233;
	bh=1yOIdaz3kFcI/jK//E4LXsG1wL1CqUtzxVGALBwx5vE=;
	h=To:Subject:From:Date:From;
	b=mIN5oo90KZq6tIJvm5rVt8XO4Kz5rNNSlPcEStbPhOgK3yFQiChur1d44Q8p4KvkW
	 dcn7gttw0gJUpxFMGOx+fIhUm/VzXdc/P2IIFU2/YFrs0XIgSC7ITstyDvARgupf6G
	 eDLZsZjlRePzezehSaTW2WBOerTtVdJiZderw955BfX+RUWmfDchHqKtDgwdwKJmO0
	 a7f7e6/BD4LLnt0gSXU6ASTNYleFtbIjgIPgNJIrvDJIh3uX65B+qa6xf44MoXcVK0
	 PMYsU0HpqRCvormxiWvmCvW1GAGlyx6BAoJPt95Gkk352zSxfKGuPRjchWO7KwbAKJ
	 0tzRCGBH2ny4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0761C61DC4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788423368.13430.18075904706384045511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76615973e4f5fb6167d2802b0b8d137fa12bbd17b20a7a1bff4be79b3190116f
Date: Fri, 28 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787884233
