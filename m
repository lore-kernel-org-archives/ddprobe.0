Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB08E32F766
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772163293; cv=none; b=eZMPr78muskcO1ITxZEjFw8Al56yMfSk9LgM4rxFErbDP3dp2bm+cFPdvJ/eNiDypIPH7SwyZtXECuf5XPXb2twBff3PDhhvYXt/BcMLrx+PaNlxJPy8Z/7LIPBY4KIs1MoGURPT1eLNPSozTXfA24cw4XRnR0/1Rqe5zwIDWdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772163293; c=relaxed/simple;
	bh=muiSgxmH3GtDLvZJ/DetIB0uahKmt5ecDqzLdluV4Mw=;
	h=To:Subject:From:Message-Id:Date; b=dyjZZDYKBSxCJOB1wbeLS84f5j/CJtK6RAz0cTzasm1CEZSQepR/usMKfKJ/qZVUdl/XS6FgIybYHU3wib8TsqrOW4wsGBDkADzStv665trSmTpj3gjSfKgBcrozUmsh/q5oiyWaZ2GlBzAuiSjyiVy85iAniW6cFwoIhDqSvBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPljwIfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPljwIfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4D9C19425
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772163293;
	bh=muiSgxmH3GtDLvZJ/DetIB0uahKmt5ecDqzLdluV4Mw=;
	h=To:Subject:From:Date:From;
	b=nPljwIfWSRX/8ggU8gieMUS1yDoNEI5p49fneA7DDKuqQiDgIC0nBJGQ5za29Yd4n
	 N9rMQ9dXDqQWRXUaEhWkn3YrELsaCnQCX8cJ+JbOSGe8Ah5YKhLZvYZ8AVXfnCYxEP
	 OV7kWKjjrGp/yCVb4V6NjZZAVn7IqQDkBPr8gHt6oFM0ZGfNYKAu96C2UmnAF0Rl0P
	 pjqGNqYBKGMH9OWufO+WI+A7ZS8rhZY8Sf3G9iwlLPNlmriEV2VDhLEQ+YcXUWOEGf
	 BWn52MwvRECI9SEYZRyKdC812VA4Z97N93cEPZqaBZ3R4v+ludNhvSkfojU4Q9k0D/
	 CbyU8mtrbAFIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91078FD9E36
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216329358.2646.2672530429290756552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3be0f6209364ffce4c0f0296a0e4c8ce198db19de346ff95bd6121b1b0fe220
Date: Fri, 27 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772163293
