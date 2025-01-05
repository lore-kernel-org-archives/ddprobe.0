Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D11A1CEEBB
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736106954; cv=none; b=hiNG0PR3D4FRiMf90bCgzxJ3Sc+1gpDF/b2eypWb2p1Ap18atROCgGQvGz3zzXEHGGrKlMu17NShNd+CFh90ieHCzxijQoRCVy+xgsbMquDFbJprkKDj8TpzQqjiXru6Na48LP9jMh9WvIxyvVi5E1ytb/qT+zv0g28l7m4Tdpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736106954; c=relaxed/simple;
	bh=QfB5se1CZxuoyZxFFLYv9sClN4tR8Q2OmK6Jnvgo68M=;
	h=To:Subject:From:Message-Id:Date; b=S0RUpTfyLer8c0ZusvbDiEaczBykIWdasN6Y+Ua0ibTv3oH5KeVjh1IuNyD8mct93rFZBY7Z0GXgsDzEU2t7xpOuJ4Le93xdtTQAB0sZVb+pFKhfPQuGo9e/BynNUwI7Qga8PuS546ZnJaiJEF8EN4bRzNy6gqErdZ4ziNnIJyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9mNWLe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9mNWLe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE643C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736106953;
	bh=QfB5se1CZxuoyZxFFLYv9sClN4tR8Q2OmK6Jnvgo68M=;
	h=To:Subject:From:Date:From;
	b=D9mNWLe1uteMCIT101A7XKn0NhaScDX464Scg4eWE8PlEdr6mIYi48yqz8kI5r6Mj
	 ezUcJYneG33SSWdS3AjwCC28TDekr9008/7nkF78JybBzoN6YRX3wrJftv94nAtC1A
	 i54VBkPvKg+9pALttmdj24NfrOrxwjyrxQ7pXqNqcHmjXNi1uN/yfvdaDTOenZOF0x
	 EQ6ka32HMk11VAl3hCTEz3aT+SpIdMmwd7gzTTWgqLFjVMsqHib/cJL0R8N52D0k6j
	 nnVMfqw9mNTu6wk31bejAqRXRqTnrHS/ZIVm6Dg4Dh25eBHA9VHxP4mFazidIFEA4S
	 yxmiMiR3h0Rxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEDAE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173610695363.7567.4111538833671075769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eae4ae42df67a97bc8791e8ce3a852454ce89c701578e4c111b6733f263d968
Date: Sun, 05 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736106953
