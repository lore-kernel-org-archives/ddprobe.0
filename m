Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351792E36FD
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754269194; cv=none; b=pBjJbRQC4mGa59FT6Cv7w98WXkglgTgs/rP0YVmlRvCCrY2p009sb853SfXgl32j8L6hUoIgAUX4LeaTKVhon16L2e/FYOvDxFTBYsuwXEAPgTznh/SskIWAlRwYGPRBR5sMTQ2Xo63zlVJ+xK6+zREd1Gwgt+oX1HC2jenCAWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754269194; c=relaxed/simple;
	bh=gvmGbJZe4iOAz1vQKJZlIlBojPldaA/JSbNSWA14Cjk=;
	h=To:Subject:From:Message-Id:Date; b=tffk+9i86HHQrKzXjVipNxk96OYzI8d6sUEr556faSvkSPZaaJr/36YNWiukI3XqY5cQAZ2lUra4H0kdjnFz0cBLcNCzS2uTJQr6k7gvXdXuB+sgTbJazO+aqtr7Y+qd8ngYOYw0+NPNWQd9iFI4P9LU0AxeL+j6jKp7MOsbdrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIXOKihU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIXOKihU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1416C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754269193;
	bh=gvmGbJZe4iOAz1vQKJZlIlBojPldaA/JSbNSWA14Cjk=;
	h=To:Subject:From:Date:From;
	b=tIXOKihUwj3RkFArzf498/EuAPT8Wgp7KshQ3ZuQepp24ozHXWqj0QK3M7/KjhfdB
	 VdTeYDE/MvQ2pU45ZpXlbed6xtYiQMhU8EKXOn/sB/QumYVxSFyMYHZx5J3zhLCLsU
	 uOFkaMapNAw+9IOimT6q0x6i3BlcYz/NTdT+cOzpLNR0jZqfQiDHRHDvPbbgcpoCdg
	 JV+FPgWODH4RoTUCt76HYOc1AFv79eMOpcE2+JIAC/pJRK7/pyttFv5EVZ8YFIu8LV
	 b+etowLXfl56RNmmG5x+UArECnaOKjfjXw9TFAx1IWg3/xhvUc0swpH5Xr6hwB2aYU
	 +8aOOqyNBTdyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F571C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426919358.3971.7845490833211665066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a388d56a1ab65278198d488077a06e598459c1699db2b7263b5d9a3b533d34
Date: Mon, 04 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754269193
