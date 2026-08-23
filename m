Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EB231B833
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787509234; cv=none; b=D/G4BuU4VwQsZwdygxu59Ix02HwG0IyGBjIOeFFUJz3iF+MGF0qEgAOxhKFk4bfDX5MsvoEPylVK6OJYVd+FQa1VvtrJ9wPW9c7iwy684lFRdfD4nNwZvjDQyQsPwsANYsaAjC9ixyNN0mVg08buCsZhL8S+4RCxVlrCy9hFpdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787509234; c=relaxed/simple;
	bh=uXTHTmFj+lr5CttDFOz4K4KdU5J/Zja6JhNsk9r7wJo=;
	h=To:Subject:From:Message-Id:Date; b=cvNXmS68WFdrkfTh/3vZBMR6AJEwdSsZ9bih4u1FwMv+o6Y9OXqmmM/0HL0Gco14TBQM7xHP6CuPkoTBlebHTty6PutKqmOS4yzwMVHBheIRAYHSSKEims7s8COpTN1LnlJBvlBkH7hQdeNWy+Uz+MUQUmOqZWTA1/TYVqz1t9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+v+1Owk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+v+1Owk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC55FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787509233;
	bh=uXTHTmFj+lr5CttDFOz4K4KdU5J/Zja6JhNsk9r7wJo=;
	h=To:Subject:From:Date:From;
	b=V+v+1OwknJp7GW4OwP/Xg0tnTxlrO9bVuxovUwvn51wq0vod2wo6vORyCS7NoiTlm
	 Je1ei0ftuGwaP5pmUMdeY3cRmGQ2Tyi63HhZEHoKh4zQS+nGiH4PKp27LUSDikmB8I
	 ILwoKBcYY1qg1BS650YZ5IhsJvy+IQFK/y1Yt9vHoPS639ZzQZDmhCf3ZX4bKKj/F7
	 95Ji6WXW85srjgrpR386jcZUzE/sY4NBf0PjrGCObMwXrBRapVpe+d/RYtY6pp837P
	 /5glkaJtZszsr67OfH6w3zPl9VtsznVG6lx21bppblDbembqUbkfqOLPokLk7B1k79
	 Sr+rOgTmLJi+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B23C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750923368.8834.2259318528471486574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d772ef8a704144a7b22540227911155530bd9c42f77d142e0ae069310b653d36
Date: Sun, 23 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787509233
