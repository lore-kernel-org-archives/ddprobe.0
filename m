Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4591B1BF53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718897423; cv=none; b=AWCyqKPzE1u/PgQfaJAUqJXtUcqvugCC/SLrzhg3QDXhPpZzM5cmLQYzR2tZ9G2AgTxhqv3UyUhw1F7MWQA/9XnSzztc5YzHLkgOHlX9EqXmI/IAswRQHHYI9aJAVqWXFedEaGM2iZZNRFbybbHJI1XdiVJt+Qvqb/IAEzmF964=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718897423; c=relaxed/simple;
	bh=ew9dekyitu4RWNZAjXkOGqVy1kX+U0iaroPYT6AXQFc=;
	h=To:Subject:From:Message-Id:Date; b=ukFU+g+AbImv3cH6VjdGToVR1BAzeHUbf+/f0PsJMx8hFYSeuc+lxbxAAb/nF8rzInFSske33bu2Oll9yIQ4q0vu9kUT8ymmZWci1H1f5ay6k6tkGY61tTWyvrtu+WMy8CsdeWHSSs/NRM+mJoTJ9R3RFvEr5L0W8a6eM2/ngT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlTCtluJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlTCtluJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B32C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718897422;
	bh=ew9dekyitu4RWNZAjXkOGqVy1kX+U0iaroPYT6AXQFc=;
	h=To:Subject:From:Date:From;
	b=qlTCtluJ7vqyRtgWQ0aX11PYf/J5LlmRV9LjP86H0oUb2ycPOIhGB+Lg29VWunQYr
	 Wn+25ZOyJhoxj/SMSzxrJpEcRABdabASVWERJnNlHSCrSgt7ysvRxkfW+Q187p3MMT
	 HAFia1PGVfvvVz1/aw7hdFtEaeH2kAeBH/uY7TmbxhnQ+1oT1yWdSp0Zg17TsGQW19
	 J8gvJTRooL926YLNjLcdCvDW9El4RpGnnNlmTMjLsp8bj5Y2gh5TXDiamCbnLfRHRk
	 eFX5MdQ0T0x1gO38qLkHjg3qpNYerB4FxlEr18JR+pIqleCYiX0HUt+WNF/G/NtvHz
	 JnWaJFeZ3Ob5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB54C2BA1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889742283.14580.17295154774834475061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca5742e54b94e132c3414785aa19d8729aee1b39df3ba7731863a39b525a799
Date: Thu, 20 Jun 2024 15:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718897422
