Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003071DD889
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765207974; cv=none; b=SrmGaFRzd2IBqICbrnBhXQ3uExPmPQ8LHJTzeoS9GijNdbxkfI6PRYS5vWilbD91RlTYabVqDy5aDMz2RgDpFsqb9W+JSgWGDORjpqtXHx0H/gm/eyBmiYR047FVD9QP23vVJR4KEUPvtJO4kY8xV1ch42MrPPKgilN6cXAotoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765207974; c=relaxed/simple;
	bh=Ot24eHZpaz7/oNIgl7fXrQZWB6/rYtMFmABDFK5idnc=;
	h=To:Subject:From:Message-Id:Date; b=gJjJ3utJfrGqQu4llPAEKRPDbpH6E+f6Hg7A8ymnoE4LgPTp4lGr9clBgd83FdK8XBGtxhtRHsq4Rb6MkKaJioD9EJN76t/ROniJpJY3HVC+NZN96jSBj0Gl4AgYZrYKtu3MSP+KbSJDXn0WDjpGkRPX8VjL+FSgP0urzhRANaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzaTi3zy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzaTi3zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ECCC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765207973;
	bh=Ot24eHZpaz7/oNIgl7fXrQZWB6/rYtMFmABDFK5idnc=;
	h=To:Subject:From:Date:From;
	b=rzaTi3zy5sKLdeiLLtMoUR8bSD740qOA06KtSUum2CjUEwbwFsK0EjQx5Y8rvZ5of
	 YxtgvwbnwUbKWSc8+Wv3yM4gt20omoCpD2YJEKS3ELKkFjguUfllzGo/l95gAm0wgR
	 dZpiqkL9Tg3CCnhXntGqWTlhvEdib+pMyPdpflhj/Sz7bbJImt1pvVM7spvE2Q3hGx
	 CO3zrjxEsv+r6utmFuUDK9HtHNCQYOFRIWHtDc62vlBK9LLye8LvXU7n6F8Hu1Ij/5
	 X07jS0OE72MSOkL6BNmD4LGfTolXaRMdLQR3IDVgV3usAvup6KRHRFOnDaT9FRFHgd
	 xfPs4uTMxnkhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942BBD3B7F2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520797359.12795.9628505596516345282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2450d2d2d960fd830ac855f8a1e53aff527785979480c6cdd11d2df3be5d9f74
Date: Mon, 08 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765207973
