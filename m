Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230CC20CCCA
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765837974; cv=none; b=gujQJjFJEEqNSYHR5a2Z94HtsWhGyO5hwJA9WOKTJqb9R1/AbuoWCYdof0rLzb8bGjoen/RjNpiNzK9RFN9RFQulZw/ESIqTeWmEp49ydwmR2poVi4BXgFlI4panX7cipr6fwhLtSkvmVGiulPI2Nl7kfey62H2/TQfPwb4NH3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765837974; c=relaxed/simple;
	bh=bl9jI5CBfIkshoSUXq2EBnEJp2WqH1oPcs40nCu2dc0=;
	h=To:Subject:From:Message-Id:Date; b=PpgxZCO4rcpwp24bmUetJn8fOBzi0ofYN1xEUO59kDk6FAH1ZBS9RrHcuQ/B0NYUa0grZGimSetTG+eLZBwNvISaAbigz2q26odFyUWVbJ49o3ciXzI0YGeprrQN4OlzyHULQE1E4v0qYCHrC4ZFrJ1GYlxBAeV73VHeatW/zH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVAtHcKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVAtHcKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A638FC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765837973;
	bh=bl9jI5CBfIkshoSUXq2EBnEJp2WqH1oPcs40nCu2dc0=;
	h=To:Subject:From:Date:From;
	b=aVAtHcKu3yelFV+3lE1Or+w1PuALkt9FE+p4nlm2aVMt7SWVG8RrHX+X4ODrrNUxw
	 tPGoVw2868oxNrOK0U5NxCtiRfeax3EfqUfW1xc92dFsfzwzRzZfJNZazw50vpuYhc
	 DxCjaSbZlnYoE88AfPPrRraKmmFUUGhlkLTBj943Y+ntdWXkY/INOQWx3vWKzMK1Q5
	 pQtHpZ+Iqb8uvOApgknp5fp1lpB+3g7wdoqfVDK+icVGVh+fZnKV+27aTujlOTrIj1
	 fYYT9q9dB+nCbdTZR5wQuYd3nofKdNohB7kISmSEUmh2ZPGrc8F3xfrLsTQGDHQKeY
	 XqgYV9qEjCfVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93676D5B86F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583797359.21651.7454484238037596908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7252afeb6648ff1ae7ecec989cfdf45bee921d7b5901a90c2003d6d4270965
Date: Mon, 15 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765837973
