Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8529A1D953B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718659703; cv=none; b=sluYPWXjvY5g5qKAm5aYrY/ITxRuLAk4mtBReUOQSjkkWkE6zePz5uiVSQfNb/F1mCK0pXogstEz30a1vZxzX7ht3rqnr2C0lfIAUj55BGFh7Jw4h0VSyyC5KQxmuT4UJhyFQx7QqhHagUTrjHEG3FLmNU7LQOZjl8QrGb4geT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718659703; c=relaxed/simple;
	bh=p1+nTw57LDggzpNyu6Lw6wOmH7UsZdJdZRBd1jxMI9g=;
	h=To:Subject:From:Message-Id:Date; b=YAQ/pPVcaCg4DO2/vRbTWxwUbYYH3FAKqTxlSoe7ox1Liy5GvapGQctm2PonQeDGeCgSJ0TYRMyQiN2TfztpxH8bQb00jkQ4EjvsG3bPjmh/Fbku5HAX7HgVh5xLABT/Md4TQHqehSLfTcP1hfcqst4RNv8s7duTaFsBAPOuecI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJVf/o8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJVf/o8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9F57C4AF1A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718659702;
	bh=p1+nTw57LDggzpNyu6Lw6wOmH7UsZdJdZRBd1jxMI9g=;
	h=To:Subject:From:Date:From;
	b=KJVf/o8iruzJthZlhioo6cvh6UCtcSle5PmVvfbKqq2YdcigjbvVWIDgl34zO52qU
	 UYurpLxKwQYFwoOprZ4OaoO84A+AlFSNzvc1G3HXsc0Ag+y6vC0Yzfxla8nxT14XT/
	 rhd7cFEOhsHOOr/iy6NUNhG21ccaFgZpRuiFTb0WqxKemJK0eoK2yUaSMDQ0PzvPjH
	 5dXyIDTNcnQ8+pER/MarfvXj11DCq/b7U9JWJFiWmNOpCY1mulx+V+PElj6W9vua5l
	 0/4fKfQYeY+sOapAwWm8yXTh/kPUtaY7f/VwOToUt/3uPr+GOAc23S1TUfJ6huT/Fj
	 2bEnRKRbgWYVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D21A9C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171865970281.16705.6126116729769018585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5f1f956869e4d761155e72d1725d1423804a77af5ea4bc08a814bf0e7b933d
Date: Mon, 17 Jun 2024 21:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718659702
