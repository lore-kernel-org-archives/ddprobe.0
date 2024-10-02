Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3BA197A99
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727910954; cv=none; b=nDveK54tFBYjQtv0kJqZG/ruIxZNVlLOiDg5b734hcH6yTme11wAcXbH8vM1Xvx37gRet28VApCMSAY412UyxaUrER6TpvqPrl1bXS9vGn8ZPQ1Qknp3ky727our/gc/NjdNr0gzkjQkCPhvwXPOLtm2qyHIAbQB5EJUsbWw/D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727910954; c=relaxed/simple;
	bh=y0oVi8wrQijOvTVCSHOyjs6aIIMZkLFcHkgdoEXrNCc=;
	h=To:Subject:From:Message-Id:Date; b=LgmvqX4ajtjyIqk5IgTjbix6LIsriHX+D2ELElEM63YU6QdWPPSlOu+zJzMULhqLAHQD4ytBlHey7DK1LPjuiZCdp62U4wFkzYr5HqeVyBuSuyTVxkNIhvF27BGSfXyLM2lfGnHkQ/o4hPOdRoiQN8rZ+g3kDZ5l/m3FXZsLHsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5FasxiH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5FasxiH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DAAC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727910953;
	bh=y0oVi8wrQijOvTVCSHOyjs6aIIMZkLFcHkgdoEXrNCc=;
	h=To:Subject:From:Date:From;
	b=A5FasxiHCskn8DFi2dZuckgmurw3MY5QCpsv/VBCZUT5xklfXHEaX/dvvGKwsSbUB
	 W42vswGl5Y4SqqfBEwzWaoQxNCC9OQGkcujXrbNDEQWm+c50+vj0IcgK2DndEXtGzD
	 fBiJQtc8YXCbRL0HW0HL/TtVnz6crKPm/VPBlC9lwrH4Ch/Umiyz0TN6aERChrTT2h
	 eJrhjTDaa45p5zULRgrcp9qobQzmNotsuMHOuz8xYltmr9dW6W05nJTb+YlTrqQ/OK
	 WdY+didHl8PnQda6BNtLsDPoNtC+2YyTeIeTP6jV5wVfWly3iv8x63clUBMYceAPmh
	 i/xJXYeffeLdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99156CF8547
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172791095361.28537.9812605268177912686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190b069e9e2c3ee54d9bc2755b6492dfdf6d969ac16df2fa51a234eaa35b770d
Date: Wed, 02 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727910953
