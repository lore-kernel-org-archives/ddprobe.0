Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D00B11198
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707121097; cv=none; b=BJgCkrmMi2I++WmSJmDg50u4qCa10qUuTH7G1cpijF54SH83YfaBZW7xXOqpwg81+Rayzafv/AwPzZr3dd0EAviLZOEsk1bGgsSxc+3xjDljtpeUAmNFYyBZl1oBv19wSkJrNSBtCQjov4LL48LBmk3NkLoZ9QNcDa3puibSXiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707121097; c=relaxed/simple;
	bh=Lp+bwf9LEcjvLM544jhPJy2uBELqoozFTyMsixG7JII=;
	h=To:Subject:From:Message-Id:Date; b=VoFgAcj6G3tTrO1YL+2gcFRnpd6jFIJnP+B8OHYtaRajdU1mM0IO8++pM+rJ3wbYDf0uqZaxWISqXdLNDNeO7Fd8MP4Br8l2j/Ur+LPZkbeg8Gp38adlZA8RzUZveiYvDqT2B2MNF8niJ9AyJNnUIPenE4e3fSapmN/fAtkZcZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnHbAjsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnHbAjsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC9BC433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707121096;
	bh=Lp+bwf9LEcjvLM544jhPJy2uBELqoozFTyMsixG7JII=;
	h=To:Subject:From:Date:From;
	b=JnHbAjsCC/rOxIlK6lboUME+3IDe58pL/sUYYuZTqpaOafiN+5+vFC2i/dRAGF1i1
	 H1uBoRZmE7GCXpk16NpxDLUpXd+BHfiO4FRXfkOJ8gdBo8FLJvVNaDbsfxsslnwuzD
	 4puYbqx2jXDKQt4upKPOnxEzuyayH0MadOGwL6h7Bs2E54mspE+4t4vS0zK5ey2BuH
	 NikUdla9N9wx/P3Eqe/4i4x9Dp08EbC6KSw0JovmoaCp3LE7lM1bzyvPJafZJ+ysol
	 vLPYutA8DY4bTLJzdaMe/t/dYN4hbdb+8HxWAUvRezdRLoSNQ7NTgJv55naCM+cvga
	 7Dq8g7Ct3VGGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62250C48291
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170712109639.9962.2358279696054984341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50ce64628b4d502923ce2b692391a23ee01536e4f80e2311b0acb6565f2a674
Date: Mon, 05 Feb 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707121096
