Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA3528F4
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724620554; cv=none; b=Y//ex9Y8gJ95iDRzfhRU6mVlOkC476s/+kiF1APEtj5ZGUT1hpXtljUr6ANoBTDHY+6gEZ1b1phMSfE0RZ/KMDFjikaLSH+XUM1HH/eHYoSc8lSJ2UFTJSTL9KiLzKFOGFuWLbjwGNPGf5ez5IB9ST2k/NOudhStZRDpbpFStLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724620554; c=relaxed/simple;
	bh=sgfcON0N9qxiKqPUT88pJIS1DsCSwRktTzva3Ge8y0w=;
	h=To:Subject:From:Message-Id:Date; b=YVY+oUka4kI3gLnZA00MgciRqlcND31GN6BDyM7bTyEHgQWmq9/6eaUtrrGi+eV6895Ef80GKpNtFyWW4U5Bc9wOOB/4zOadwGHEmNLr8QiZf3sKhwK3xleflPrWx5MX363XLRddBANnbIlc95jtTGUepvHRQ1foGvgrKjcGAxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZL1TMjNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZL1TMjNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B539BC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724620553;
	bh=sgfcON0N9qxiKqPUT88pJIS1DsCSwRktTzva3Ge8y0w=;
	h=To:Subject:From:Date:From;
	b=ZL1TMjNPr/GMGeTE5hx23G1wyT9dgEn864HHbr7CmXaYKO3MOA9u4N0yc0bCw1832
	 uvCuSVN0wu++iNGearo4k3vDd2KA35POePwj+R8y0IISypPTzEaD8vFYghWLmBq0IK
	 Cgu2xSXyVg54fP047G/6Z8YsCfPaeewK7jYW1jveDOoYFoahxOsDA1HS31Atl3NazI
	 MXd2T1hXdD3WTpCfBgrCTRu/YOgbFzEtPfTB3N/iuCxPAqIh4TXPeF78nqBtIESDXJ
	 +sRGsPOID0wqAUWNh9UdlEn+snz3GHi6vSlrbatMEWDXXS752iBBmRfMhdJi5JsKd5
	 uKfiyWND0W4eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B585C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172462055361.20026.15265497127568480563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97ee04e7acadb6a98dfd962a7079eec3941233e2e5f58ab144d252f625d1605
Date: Sun, 25 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724620553
