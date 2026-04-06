Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F0E3537D9
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775457934; cv=none; b=J+LwXRBajtiLzUkep+jkVIaQzrq4TvEfjGK9vzCzn6impeN2U+O8bxwj8FPnll0rtFiVTh0evN0ZTQ7X7f6PUnlEgxpzQJWMnUaHMlC85y78MppbzJwTdImoTokufeYfFz4vp848yrKKj/bT1DGC27OpJNqHHWS9Scl5pfhJY9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775457934; c=relaxed/simple;
	bh=Gd0gJDt2mVyIuhstY+vDpaLlze52fQekcmm5QT0gMQ0=;
	h=To:Subject:From:Message-Id:Date; b=uWN7gErBj24gKEm6JyMD/eUnJTa24BfC3AyrFILiuHw7Il+HCtMA3GcVooIGZdyS+rMkWxohgh0CQbYkhzbtlSllt5/auqnz7uygr4grZtjHla532DjGvCRN4gXG4uEI3FrolpKfdA/6+EEWpNs1lhOA8M54RY+e+jUcFH0yuSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VN6Sbi0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VN6Sbi0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20E7C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775457933;
	bh=Gd0gJDt2mVyIuhstY+vDpaLlze52fQekcmm5QT0gMQ0=;
	h=To:Subject:From:Date:From;
	b=VN6Sbi0SfMSYz5mo7De+CeNLTM9sDdM/ox7bi+nn7TUyjAfmcQiS+JEG56hZ6OjDR
	 tCt0PeUG92qlVp9sOBLVA7JCWZIy+T0qmYbPVm0sQ+EiJpE2gNlQiNCJj6VOJ6Krcw
	 ByGiYzJqHfvWgs7KQjVyBLAH0vGKVlftDv+yuArpBLvL8qLgWi80smRsfK+7mS9g55
	 DXia9KoJgdCuPzo3SE37yM8BZKkgINXrmyQpHmx1z4jsx7Wa9up3mKAuqSpb6Pluwl
	 uGNR2XvkFFr12a6gidIhjU3TPHsuj1LzMP+jsiaR5BWJwv2vZ7omUT4CwcgsCJgR7o
	 8oq5DxH6dJshA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD725EF4EAE
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545793369.16784.10966961279391730156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e3d7dca4c2d07c15e8d624b94e14ee7fe37d512abf950834ed7d9048285918
Date: Mon, 06 Apr 2026 06:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775457933
