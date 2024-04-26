Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EC38249E
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714128143; cv=none; b=hPr6noOiHpNp2Bi4slwykT17r23y40qz9kvN27shozv7JJpLbAdImWbJZ/HBG52Jq3KAf641yiQ62pgOQ2p+u6PIfMpzV0ZoqwwLBoeeU0KQ+dAXynyLKdYmuU+1EYQJLmXdaP77AfWFGHKbBAHvUxvgUOJV0tzWSYV3lPQarMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714128143; c=relaxed/simple;
	bh=4GqbSSwb9IGyj3z+TklzFDi/51uhvmkk4/QywkSrEZA=;
	h=To:Subject:From:Message-Id:Date; b=OsrEqNvy+X/8laUhKxMZjk2k7rdFW94+qn8nwqLiooSEoxM5L9h13lkdufr+zGwIQAAsyM6oFSXFDgiD3N3JYaJteIfkujog6DfOiDC0tzx4OnLAE2KhZOhMG3kvepqf4uVQrNMCY1CZh7GLX624kogpo3lnrcMfdG4T0gbfJh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuCThggB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuCThggB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC768C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714128142;
	bh=4GqbSSwb9IGyj3z+TklzFDi/51uhvmkk4/QywkSrEZA=;
	h=To:Subject:From:Date:From;
	b=CuCThggB9UObN1YSvA1tC6+iHmLlZLdw7Javk4mkX6RdMYWPj3NDEv0f9bhRRriUq
	 N+SvA3S9gkHpzFKGJsMxUdLG5nsVLAWfbCb/xPonhx9IqU91JhDGu7TLYng+a6SITy
	 cGpg7+WQUfcsOINE9VRU+E+w8ZzzrKtoe0UXaK7V8brEK6vCsvWwdVWNWXWpGty/+h
	 DuHd0svSTmmyalgfwJtNxaFv1AGYnI1734EwC43+KXGjcOhF5+lyT8nzqwh9fXmUc0
	 g2JRfOGne9y6oF/mutO0D6Vi++AE7jIyF5FW3+cgFOudaDAlU2CLKW6fH6nK81c1nm
	 yBeg8CeDsJKdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA52C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171412814276.12402.11971507881470006039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974ca2fec9bd165374aacf23ed8109057f6163c3223ee5c5932dcfde381557f2
Date: Fri, 26 Apr 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714128142
