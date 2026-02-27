Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FDC1F92E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772193294; cv=none; b=pysr+hP5TVzAKU341E4wKzAGsGx9R8LM3cgd/KbVtQRzN38oEt+WP6vzp8Dx6Ebttr6Imj4opVXRNbFI5BjwE0TqEdjCldkOjsNzAtMIM408Q062cfmxUOETu+BRd5GwQtaw9l23Cps2yFWp3ZKP1rgO9R2aG/Euq4/Dy9VlJ1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772193294; c=relaxed/simple;
	bh=SqFJ2YBsdBrl/r6Dwp/8M1w5f8IhJGYdb8O9+ej0FUc=;
	h=To:Subject:From:Message-Id:Date; b=gj8/OjLiEZiLFC29tQlBCz1+FgfzoJOFGU9Jgz+F+Bk1lBGAhcVrE9s9tWRwUUBgvhtzBPNY4GANhzvuVdrxQjCmbotAHAFST7xOYg0ITnw6f9wiUWDmitAiSpUKBz8fs6HvZiUBtpRjodXQN+IWLfzXSYf61L2fCiWtHrNj554=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4RcZW0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4RcZW0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76C6C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772193293;
	bh=SqFJ2YBsdBrl/r6Dwp/8M1w5f8IhJGYdb8O9+ej0FUc=;
	h=To:Subject:From:Date:From;
	b=m4RcZW0pK32A2jTFqRBBNRmF8CjLfJrf0KAZU4lZnFlMpF2z7FkayaBjbzT5RfnZY
	 WMUadINUQec2dbs38aJIvQaTaLXdIrQAHNTjWdVtw37Nxz23CH/4oRyXGrSGr6fDGp
	 FJI0pfeyOG4soIkoikBj71Q6yqZw6TXm3fkhcDsid/vlIT8zh0Spvh9+uBZgD2nC2Z
	 gc1kfXfmGJ9klmc1bfnlStir0f2TBrTBOAWHWghsJ7Do6tj/y7R72D0TJhb+tAO9F+
	 Aw+u8ZeQz56BrN7yJVOzzYLCMe5+60WVznL0sTcxyihVWdfOXC4bQVf0opGhMAO8vd
	 uotmV7wVzJC1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96572FD7F95
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219329358.667.16839546973878219022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15bc7d1b870626a4a097a1263214e8c5c63db7576471c2ea69a28330ebe75303
Date: Fri, 27 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772193293
