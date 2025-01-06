Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE12C8DF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736183154; cv=none; b=juqZKbrZkJCtGC+2vo2alTuJ+hhGZmbGGgitPktcC/WgFDl1ETj+MC8TcFXrFfvSOrsLEZ1kJx7ZIBEmtbNa8928QVXFLAPxD4iQVwTWVMRkxrtWnyVmJ3lMNTqU08qHBAijDAQRLMChwdgYYBp4nkNWyyAJeWl2zwHjZPeELZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736183154; c=relaxed/simple;
	bh=PFLzc/DHKSaaQcp6TXXFTkg9r502yeYJnhP4wUUnaQU=;
	h=To:Subject:From:Message-Id:Date; b=axnURo0zZW6nL0YIfN8+1XzNOquu35sQqG9pQvAR1FErsL7mfPofcuygwMFn+HKTy/4JbMjY+iJ7FtMpgChF4eZnhrgR404O49DnTfXQO77c6I/EFcZy1z+uBWFVRgsvMxKl6XH293ZaLP5Z9kRsMOHWC+9kx9WUbv+JDDmYxys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=st+8ZZS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="st+8ZZS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F3EC4CEDF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736183153;
	bh=PFLzc/DHKSaaQcp6TXXFTkg9r502yeYJnhP4wUUnaQU=;
	h=To:Subject:From:Date:From;
	b=st+8ZZS6lr1KWfqqLKqh/GTRIyaPdjJwNQn6WM0aWmmeSyl0g39/qs63fs3XkECrP
	 cQUf5xJz+qlLUW/DQlhpVyGeS0NTXtVhKGgmhEoAAWj8BCfZKRt16BrJ2eObpHuPXY
	 uIXIXewDDZAdQJoYgbi3XpN3nNK5rhprdezjTzZV0fzfN3CMNE7n5rLsXOfv9n1zAj
	 IY7JBLddy+iG9lwk1LdANrCy85GrhAKvI9++mG7o93xcIfOEXYtGLq5wGJNktH+YkW
	 oHNlEpocbt7bWibiVSaG166R00BEGDxa21je6faTuKB/2fPX3sbet9hqJYm1KZZPFL
	 MiX2BAuiVwBow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D27FE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618315362.3767.13613376848767710959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce7f4319119a11800ecb0cbbdf4230118f3f62b674d8dcf8c09fda61a29fb52
Date: Mon, 06 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736183153
