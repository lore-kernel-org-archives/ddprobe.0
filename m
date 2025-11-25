Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6BD523A
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764054174; cv=none; b=lxiuwmmuuVB2vrVhkfcjnz8ODy8KgHIcmTJKs708q0ZyeikqCbUuOEhZxDToDfzKhNATm2x4cUChe0OfxyVLVPMz9v+hdkpDwvmXu9uEBb54kK9JrVsXGe80dUJd3nO3YulvNt4e1Fb143/VLy9ecJ+3hjXfzZYeMPJi1gWG/FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764054174; c=relaxed/simple;
	bh=Me8DXc1faG9gT0EusLKyG7jYy+RzoPyWYUKf4aVDQGU=;
	h=To:Subject:From:Message-Id:Date; b=tnMDPjYHn0INkFKcafyMssVJ+Q1+6fxz44Kl/dgxOwIuSozEgf/xuq2TdGPC/GwE9PpqnC8Rmf7lArJoaStQVWUQQ1bEq4UPkCi7KeqcsrR9v8hcHPVcGzVUjWU0eKnl5ydEsV665cUB5f/YzpnD/4rU3IAGE8qa4zOoANcrTrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDRAJlOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDRAJlOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A19FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764054173;
	bh=Me8DXc1faG9gT0EusLKyG7jYy+RzoPyWYUKf4aVDQGU=;
	h=To:Subject:From:Date:From;
	b=BDRAJlOoGPDcD1KXjZriFoPe/7cf+Fe5zY5KEgNtD0o8+P9hxwzI3N6LOFYBJjiu0
	 s9L7Y21guXzQeWQ4UnhKmFtd/AvHCGdH3oxuYWgQePnvgM9zA8cWmcNvn/qhREPQAR
	 vTJGbn+ucYYwWp9DWmZn7PnGKYddDdvX8vVQG6E1QD1co83fQB8DqgiWqp8rveGc1e
	 igsG8h48cWnme8XeJEPxXHrATrWI8QpAyXY1fFn3d4huEfUt6Ax2p0tdIz6Sc4YlJI
	 KbPPaU29UDb7t5BRLnTs0LL4YuLfkAwZgN+vdbktVN+xtzziS6I5APKdseYrjZ9iuI
	 MpzbZpFCGVfFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D51CFD315
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405417358.27692.8264324104189178582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a758b58f793b0aa8ae6cc63fc761b8e49a1fd727d85bc5d92f4850c60cd40e64
Date: Tue, 25 Nov 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764054173
