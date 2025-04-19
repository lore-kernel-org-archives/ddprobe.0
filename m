Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5600A101E6
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745040594; cv=none; b=FWyAIgD9WATKVA654FGAZ82ck8eXpaLQHl/6inxTIZ7lJDrkilFTJh0DMCPBmXrmzHdHJXOMvjP4+qpY3rbd4VGVWL8qXcDG6DGNaRB1VPgD26GerwWVPihn4hL2n4ZVEOFdlWFBx1U19+883uoCN3AmQmQAJulZXW1n1IFJkwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745040594; c=relaxed/simple;
	bh=DmcFD8VCbkEOTTFUr+vaKpU7US2Ky6rHFNm+T8eId4s=;
	h=To:Subject:From:Message-Id:Date; b=SnRpjyQrAosccX7eO6aseGqLgEU01RFEL11WW3uDkn3X7pFDmtt7bhgf25Amw6iIZ1V+p3hvdE/OrLzOvZLkSY/Ed8oN+XEUHe+T0/lLzQxpyay8qx6MaJQW96J8wgNR/mR6CL1JanQXe0eVeXUqJdq6dMMImqyDD9ET6f2T4hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deR+VUNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deR+VUNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB59C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745040593;
	bh=DmcFD8VCbkEOTTFUr+vaKpU7US2Ky6rHFNm+T8eId4s=;
	h=To:Subject:From:Date:From;
	b=deR+VUNQ8zO+Ok6afYAmAQyqWlXWEoIBtoOwQpKWZrTtnTm1QmjYzmFMzquGL7eCw
	 Qqn6+bdiF5c0z5EEoXyfbo5L7kCz6NkIf09Doe4wGu9K0KV8L9vmXVLz5ELy7paJrD
	 /w5wdZOhqAMm5rzzEGzhBnTlNZIbIaQ4fOk9ToR6ubhLXeb8JjcMWf5XvsBVtjMMBy
	 bDuh1VCytObklR0f/IXf5WpEmRzaexevVCcPs7iuYHPLIty33e/kfkYAg2dGzYjgMY
	 Pw3HziwLKGkHQSFEAl2f+yM5h4cRIj4vXxFNDCTk2VbEQ29/J3fJ7FZfZ17NrI3STk
	 2z0kKedmg5/Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937E3C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504059358.9785.17929419411632434002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62394c20183631f766a7b99d5dd3d2a167f6ee792de8b406d276dffc7bd7162b
Date: Sat, 19 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745040593
