Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E481B87C9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783474714; cv=none; b=Libmlb3keD3ynIu7UUN9pkNTsnN+RnIQNHPk6SA8nUx0EMT0cr3VJD2wpNYZMwFexttGA7o5r+wVZZ4IGXEe/5U01xIFwL34jcqJMxAVsICuI9Mjk6vcwjxX5qqZuOKphUI35pFljX5GJVuTgTqyj68D3guIWIJhWf4jfa7IOc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783474714; c=relaxed/simple;
	bh=UbUo4nIflXOqkUI7gFtxQU3SG9JYe1QZA6V21+Mw4IM=;
	h=To:Subject:From:Message-Id:Date; b=HSGwgqqx1nB/4U/wMsELJ9J7QVlICweBKt9KlTlILn/MQbIMGTTk1WI3OgIVLMTSm68LORFMwQo8jxW+HzmBIgB5b9/6L7UDmP0mmSk24PyrvfSLbqaaW97A6jNzrob1VagUMh/7gbmVCaNc2Tax4s7eyb2xwdib1a4SKAEJaS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRGbxSe8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRGbxSe8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D454CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783474713;
	bh=UbUo4nIflXOqkUI7gFtxQU3SG9JYe1QZA6V21+Mw4IM=;
	h=To:Subject:From:Date:From;
	b=mRGbxSe8ibudSpw3GUaC0F4o0BgS2ruNipp4dD797xm3N9bT1vshF/iKgUbYHqqsq
	 Ww3ODupiYrB0cBfhJ1360xw80kwMcVi30VHyp3IwhT/0VFUbQ4fVNwGZFW8ZWLGF8c
	 qQRko0MfLxd5SRZC3Zbybxtloy0lRP3bD0w2/uvUYBOYmpL8TncNskgrIht7iDBpom
	 oqQt1P6xt3hNRSqLXibiDT+ZEZpyjuBOCnYjV1vjoaD5RqMjHGvMPg73KZwnuTNkOp
	 mNRNuUdTGOdWrWRITnDufKZywijRTcp2EL76flzyiI2YFxIwoqH7f7B1WtIp0mPbml
	 cTXyGg7Q22EhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAC5C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347471368.29476.7737622820657387326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b2342e18322ed04e36ed9b74a6ff90877a63762afc2f05b3219743645359e9
Date: Wed, 08 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783474713
