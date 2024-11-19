Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD0B1D1305
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732046153; cv=none; b=ExzLIlsr/61ydHUk3mUXhPPdGrBvTIvCNS6m17OBEmEacVHG0O4ChnnfLUhFNKyk1p5whgzPCSRcBgG5URhnIslw3om1cBo+V/3miWy8vDyAx3HYRlw0Kcy8GW5mgI+SnU3xFRhYShvTo2BtgMAq1noppNp1Fn3NehKnj/xaZ5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732046153; c=relaxed/simple;
	bh=sRBqOdvu5uIL935tGc8wwScSuXvxBy8JhtGAJI4ylw0=;
	h=To:Subject:From:Message-Id:Date; b=HLjlx/I4iw53AwaioUvJM3FRY2NLv315Kzx5YUO50clyAn2ZYawslEZeZZ3lbE+FUeYr5hO4zYACk1xNPlIz19RQxe4lwFzCDvzP4koI2DwRmcdgZl/XJFalkKrDmKf0HQNsQY5a4uoVynYLqbpHt8yK1w3Vtm+gAK0ji4mKtSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J24MeV6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J24MeV6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBE4C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732046153;
	bh=sRBqOdvu5uIL935tGc8wwScSuXvxBy8JhtGAJI4ylw0=;
	h=To:Subject:From:Date:From;
	b=J24MeV6Z4nEZaDhyl/vhmM3UcktSmwyeY9K4rD3NOVBugSyshZcwcWn4T8Nx2Jy8z
	 vMdyULhK+tgSFG2xer5X/mWvCnsodv2FMownwqzFmtvhJZsICiFwlBbYN5g067kFrV
	 iOwmhk+pbXtqBmSG32smrvT7zCmNgqnUoccivg3EP1d8ICjqj/Mgt0b0PbPgHdFW8U
	 5Duro9AhWREWP6t/Qs9OT2ocCp0n2+zQBvIFz/Yn1mzyPEVW5nvMyrVMURfrCcDH+L
	 K554OWqZPzA71EhPedRn4wl3pXC+tsan8NIdK4Vn8y4un/X8YFCS3H4PPUDZc8PBNn
	 hCJ6yRsNc1m0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9593AD6C28E
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173204615359.25371.12036430575515781821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09b863833f1ef26a554656e570ffccb1f9f17e42e6c399ed07e867b0be4fe4e
Date: Tue, 19 Nov 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732046153
