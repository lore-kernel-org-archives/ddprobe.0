Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E5D17DA03
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719964523; cv=none; b=OtK2JOpJa8/Spzj8HmT1iDzImbuu+Gnc45T+x100DP/ihwC1bN4yw6Eg0VoQu2r7kd4whO/+wwmM1RPJsmxdQaUTFEl0z4d176VU0NYMgnOtFsCW7tsVVwRP2Id1aKM84/+SXQ0HUiDM3z8PJIowdsqZALqZiBBb2sx3hX8IS1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719964523; c=relaxed/simple;
	bh=4Mh7RN5hz5hLFFJogCUfDZdGfRkTBEm6Wix6OLycwd4=;
	h=To:Subject:From:Message-Id:Date; b=MuMClDhYCfLebHxJaX0yDmVnm3wPImJV5//vur7UGWZbg1iGl2+XTmKSNrks7HQdARXBdEXQLAc12hOuAeXgRfVqe7s+MXRrEMrjDjd6W9+jR0ofaH+I8Fhj0IWrsorQ2Im9CIY+QBXrwiFJ+Ag2KssSCzcPbLkQFgDYeeUybLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdRJ3wQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdRJ3wQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A94C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719964522;
	bh=4Mh7RN5hz5hLFFJogCUfDZdGfRkTBEm6Wix6OLycwd4=;
	h=To:Subject:From:Date:From;
	b=GdRJ3wQtQaG/XiYFNwRkZKPnQGTA+61vMcfwgr4ArRVI956YUXfaLGhbq419BKhDA
	 N4FUrvspIr2c86Lyv5+W5rxseR2hVgqTkB65ZrCALZ7jn8J7KcIiWLRrheto5uTBsI
	 EqOLKxAQTck9RBWzBhPPMRhDAHkBJyFTPmcqOTKhCJ7/UPWDw1fqvK0Y78eOvUJBlQ
	 BmEej1N5g3jMdC1dqnARKDlZ1h1OHEvF1D16lvk4waD7/JMDP7gCGph20anf+TU1P5
	 t/bc4rpw28mBgXGtQ9Rp1orc0OhJ+Xu5EIddoXQ4iw1ytK/WykRu9VUBE8ZvhE/6Me
	 lhVbVg+WE3p7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E23C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996452278.11733.3014318998853053374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1d95edcf6d4f4741396841e6c5c34361f244897d5cd286e9ec3260b1a0c6dc
Date: Tue, 02 Jul 2024 23:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719964522
