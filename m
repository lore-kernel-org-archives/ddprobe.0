Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257EC29ACFD
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767714234; cv=none; b=FRl8kMtg0Zftd6P5Af03oIxPgO7/F4p60fxA5hphZSV5Eh3ogoxybJIEKiiG3qjZlMOjcFVxhmVNboZ10KBX0xUdA3s3lvuC5f4ka+aa95ZvtEolO9Vx1+SL3nG4mF0MkEk/ZQLrYhISNh0RHLIn0yzU4Lhv7w9AJ8LkVEY8jOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767714234; c=relaxed/simple;
	bh=4ollaGj/9uGPBhvUBUpraaPvXCSKUfGvfsOo0+tHWOw=;
	h=To:Subject:From:Message-Id:Date; b=KseR5vvrBxReS/oGXJ7eU8F9nbj/b1sdu3qljcZZ1q1yr5RBplGQABrtaeQiXbCHYCnrjZm2iPpODrzetE/qT68menNkOkChsK2Fm2UmToAcod71Ce7xpURlTVkeiqdzixhX7TiiUAnXFM0guT0NebocBvKZcYAa7KkYjMf+qAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+6C03BD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+6C03BD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7B5C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767714233;
	bh=4ollaGj/9uGPBhvUBUpraaPvXCSKUfGvfsOo0+tHWOw=;
	h=To:Subject:From:Date:From;
	b=g+6C03BDp9ZQ/Q2JsUqrdJ8I8wiYOK9/YPyTPRxtVzniAIoQYDafJMoZS44cCpCj1
	 BKCZO5idD9OJsBAXXXya16w5xPA4aoxYSeb/pRXqER7jteJUsvPfis7bo63jK1HEzh
	 et/akVsnAEDu3rRVzmbvcS/dD9QIMns5SEE8xGAP/rtdMreS4yQtDPPRT35SuJ9WAG
	 dgAXB3cPptRT3+bnNdedXga/Zuas9qMDds1YU3lTSO8LoUgvxCjttZ5pv3Ik5Nhat/
	 1lQDyEioZtj3adXtpr3bnmjae4CLLqCkjQabOwUMWgQR9YHiawWsO7MxzOMw4RvDP+
	 az3Pwnf2myqpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA7CE9D65
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771423358.20968.15191601908756734451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c0b3716ccc85de6bc57846b58926484fe9ebbd5d10c70474f1ac6cc8b94c2f
Date: Tue, 06 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767714233
