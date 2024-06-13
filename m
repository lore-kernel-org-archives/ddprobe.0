Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854BE12CD8B
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718245703; cv=none; b=qKe09Zq72FmlzxRfpco5Cz0PyBOdL4rygfUDO3yQIkKwAvlTHpOETZlBr5xc+3bP6nLdjWI3IAIxDB95IkgXOsQZYcrx/p9z0u7K1EOBf3M9fyfasgcwJKyav3KesM7bnOzfw4agmW+dQtg4Di7UA8tlnFyQxWg6OpNiMnWO7ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718245703; c=relaxed/simple;
	bh=+7DjBwFpPv/x7ZauGa5T0yA7fm85XTh217P2m3d9qMg=;
	h=To:Subject:From:Message-Id:Date; b=g1XZkcx/QEsUiofkQTSqiZd++I4qarze2feABuvSU/EVvyaNwXW4RSCAb+zwh/vPWY65awjHkD1qLuZ5kD/E2VCBqe2GFy+1IXhJo1f5YaWfBMbCuPKlZT2Vv3YvqNhUEpCaG2i5/s4KHya0Qu97sinJ1WvnLT6B4gDBcs0Rmik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxSYIC66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxSYIC66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08A83C116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718245703;
	bh=+7DjBwFpPv/x7ZauGa5T0yA7fm85XTh217P2m3d9qMg=;
	h=To:Subject:From:Date:From;
	b=qxSYIC66bmCQA7l50WU5VI1MczmSO/nI9lnn8ap4Y/If+JnqkkD5zawQwlxLGHr22
	 4fMNKuUE+QdYA2haUzop+DGeW0OMZ4yZJYtCCTmKHL5SETX2LyuCQ4KLt+Z4BYNQDf
	 aeXgv4tfVC62FudlFPRsLJHUVRfhBFMdmfddMGM2bMc/9ut/5yys3rD14gOxw0k+L2
	 Rrnbkd5X4Zt8pN4UxGiQnhk0uAqInAl+CiISZyuMkX6yMbFN4pmveWNK33EClsn2DX
	 PY/54JYj+/sKdNq6XgAIZoHgMOSmNHip/hT+jGjn4SBXj7YwrKPPbwxfNANyJz1OZW
	 cFMorOUY5FxAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2E2FC27C6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171824570291.12612.11572823909700491908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f66ab363c99aa3520db10565a3b074af77ae8b495418e85de57824a4b37e79
Date: Thu, 13 Jun 2024 02:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718245702
