Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1809121CC64
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767260634; cv=none; b=dUyjCoEBgCI+PzipGBLV015u+gzd3sQsydP2ulP2lSOs3onrV4hLG/tvc2ZrRkxVUb+bvF/zehAaXgdIK9X5S+m0r9Kzhzi2c5ecGPyI6M7J5Zct8KmSeL4n31gxFxaagwRg+C4p7nsJOiU5/n9ADzcCQIZWUKhWbsuslw08pug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767260634; c=relaxed/simple;
	bh=Qs/tvsNc7QLcg96CzU+UWb8ZBcBp0+uU0FCajItqbuY=;
	h=To:Subject:From:Message-Id:Date; b=Sk2l1QjpPrmbjxpQ7xV51h7cdJ8cavhDOfTV9Ozt9rJ0lmd22b0rnBhF8xkgOSFaM73K52vLiojoueL47/MKdNMQIs/uEgAbFTiDXaKxGb/QmHTzxACid0KOijc8sOgY6vslNUoR10Q085xFrOjNbll1QliqOKB8Wo4IHS8VR1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omzf7/Qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omzf7/Qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6F1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767260633;
	bh=Qs/tvsNc7QLcg96CzU+UWb8ZBcBp0+uU0FCajItqbuY=;
	h=To:Subject:From:Date:From;
	b=omzf7/QrtPrmAcE174ipVym18ZcpWsd73RcTSV55D/rZ5hnHprGFmZbWmEseunvji
	 VPhtw0kL7MYjtNB970HrdcDR1Tl+n8O0qn1LrxLD8WYaZlpp45nJlvq8QVAb/Kj2qV
	 ig+ozsjr2dYR9Xy8QAu/v5CFoeIZf9GYIC8jFmVIMKszUTFEtkX9KWol2gkUZy8Kef
	 KJvggSDzug8mjiew90pn8uAlHSoc/2MeQkB6D+ZCJQwNR71R9Q3wW1Hdvyas/M5O8s
	 OWTETM4o9h+xQ1pzzD64kotb6QE9Cb4LNp+N7h2e1pZYCJAHapkehAKRj5QvdeacH1
	 XX9R6HMkEQgHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEFEEB57E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726063357.13898.7381019777363674815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d896e5e3321c8532a5b564b3ce454b74028e43c8e9d1ecc72f8313b53ace244
Date: Thu, 01 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767260633
