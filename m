Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE673C24
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719795863; cv=none; b=Ww6SSSWfCv7naummLmnC0qmORAQC7j2RaRBvksyoS6j0tq3k/8Tn220Ma2Ez88jFsx2pnqg6eh6QZ2EA6QbdoKSFzvEIgJJn0VoHZT5w+61K1OmG64Z1hlFC+4acaBiFGxKnSiX+6aoadWmn0PJodk9B74oC5wRe57V35mG7ixU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719795863; c=relaxed/simple;
	bh=IvuLQe4ruYbp0oEFC1sE9FHVQFWeWIX1aXTm+aAzZnM=;
	h=To:Subject:From:Message-Id:Date; b=GRdfhGV6EURB2spxzdvjE7nHMgdRyaOz5b//X3V956CguzsaFDnEWBDh7bEUODNC4J+Ij+QmSUc/EaCl85hOvFiOcOwazXATk2A4GxK77oeHZs/MqJib9C7MfkzgvFpMFG0EJrcklu+sFEVHZHnWtkS5pP2oSydcUBC/pV9Pnvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juzhN1oR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juzhN1oR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE864C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719795862;
	bh=IvuLQe4ruYbp0oEFC1sE9FHVQFWeWIX1aXTm+aAzZnM=;
	h=To:Subject:From:Date:From;
	b=juzhN1oR52FMn5hiJurw+XjRTblO6ljBDk9SrwrOaymjXRhjRABMYzm2YgdNKEx9t
	 GtvTj+gMympQISeF6JvUyE6/98tMK+qOowUKq9FThE+iIJL9QhScJTSF+1CCbomYu4
	 unyXsboQruOj5aCc9omrRuj5HBkyIvzzfhxAAwzNF192/kLb6orUOLXFg5ZaGD37kr
	 8g8vyCY08ouWphlAFaDjCRln5APzjlNcTTa9zBYUqsqKobr5UmXHwSilCfoBNZO3/3
	 6fMfYCqIjxqKEXfwFv/vpF14/9Zxrz0buzw3BbJSLg587ISjv+SFIbYOvtCR5a8h6W
	 LYBYsj7rHVWXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48D7C27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979586277.17992.5322707766259338138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c029427f41bd383d4c64f2f530f550c59703bb8fa6015cdfd06f60a3a2d354
Date: Mon, 01 Jul 2024 01:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719795862
