Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E900346798
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766501034; cv=none; b=lGUi9yiqj5ZsQ/7yJiR70EAfo7CbDM9zrZt134gVdfevh2ti51Df3bf0swAGE9tDogVblpb0sttDlQJzmkpoRX7SVOE17SC9hzUFBfJqcOLT8vJtKh+8IQSP8TPURE0HrwlhCwh5hNJYQhmfGb+/vTbmF4ELwe2BedMyxj2KfIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766501034; c=relaxed/simple;
	bh=tLV5O5TWq6CxzuGOmR+TUqfWnm6jjQR85sc8ZZ+t6ZI=;
	h=To:Subject:From:Message-Id:Date; b=IRkDTOaW1i/831j8AfUAYHUVW/rSWZsZwPzCssYPOWdB8gC0yqzsvt4a1XWcRN3UAIGFFiB85UrtlEDAAZvyIKeBxnd2nb47yXCFDEIEmGXbYwY6311JgLzpuFvLkp8Qu1L15ehqhOFKfSAkyLE7QlxXGXA7pZJsRk5/1B3vDhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjJvjAxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjJvjAxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8E6C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766501033;
	bh=tLV5O5TWq6CxzuGOmR+TUqfWnm6jjQR85sc8ZZ+t6ZI=;
	h=To:Subject:From:Date:From;
	b=mjJvjAxQ7cM2qUekIHDijVK3EqBikosmyF1/xligHflHHasL2cNZ1jgLiJ4y8b5Cl
	 1SGckB+iCfm+edWXkCOX4tMrF8ZG7QgdJrPx/+7GcpmRGHgWoynF+q3Z7F+s031qTm
	 SQSO7MSERG6rJf/BM6bPF8Z+NQPPwWIs05XGuNY1LjtxZF3yKtY2yGf57VhuhRa2aL
	 Q623MnHfBKh/x/EZI1vZCuxdcEl3LQ8UelPamAul/ZnCqg496tO6aHHwov2gnZKfKL
	 A9ITRRwTSqaFSNe+x609vILYXWDIswwYK5O1MaiNnzHBOFZEhOTsDXDvlfZWNeti6i
	 BJEIF75jifQhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E5E6F095
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650103357.26358.3576130582810490854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7795feb38d3bb5afc1e9fecd48539b12650b0cbcffff7686889f53a9a4d92c93
Date: Tue, 23 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766501033
