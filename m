Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFB72AE90
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755116394; cv=none; b=Q9NY+eraSTDKfEGQT/2CMmqJDdPPlREIThstJbmboo9McooF2eMF4UkoDXzDHHZ1DeY2azYPNZ55YdM3cuvp0JUGP/7CYB1/g/x1ULtxqUHOSrNaAS0fIknBSN7LRc+UpAzS1acc+/L+Sc+wHNiOw3Ct4DBUZgoLWmIddqvHRco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755116394; c=relaxed/simple;
	bh=I9tEV+/eIsuBdqjm0mB+1V0+JaSznVGfFScEBWNqHbs=;
	h=To:Subject:From:Message-Id:Date; b=Dd8A9eLnkbtQ1bB6xv2T5sitIehQxMHNThgA8Cv4zk9z//dhV4AeaGbsUHT9xupZpc0PS3JlvWmTH0UoM8+Ep+uxhtAcEUxG3u3KHbjTE59Bv5aBuuEhzf7UhMVTFaa8GcTkxhbiA2qRFcXUPNy1ehbvyqJG+5Y+ZyEPsvJvovc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E49knbp1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E49knbp1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3739C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755116393;
	bh=I9tEV+/eIsuBdqjm0mB+1V0+JaSznVGfFScEBWNqHbs=;
	h=To:Subject:From:Date:From;
	b=E49knbp1SgSPypZ8n4qSHSbibsNpDqciymfKuLOdVkXGKhx5fqWKl5iAF47XzVB/4
	 +Tc+3j47WcoAfdiOcFjlRehbmSNwTI2nYOHoQQxBL851DsEbPU5XXONOZTOdN4EKFG
	 Ywa7ZeGi+LQNl2qlOcTzTKn9VUtwFjnFEOqmjHZnDh4bmmfUtrAQTik1l3+tzQMXlc
	 5z0GquwIINvYItGgtw+VqgCkhghOEvqAzFLmkETB7zRz9ly8srBvFK1Dg4k3GnMe2C
	 K2d5TjBqJdGuJD06zgoMxIO9eGdxonvB/pUL657hKepMVcM3GKyXQ/PflVYrcVzsdg
	 yV/g0PZmbQjOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A0C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511639357.15095.9912735306047947489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0013a0bd50b3d2a0918dc5e98fbeb1943cc141065728a047c5bb9d78212fda
Date: Wed, 13 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755116393
