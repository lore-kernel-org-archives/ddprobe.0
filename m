Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201DD346AC4
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776094054; cv=none; b=mrsGsHm9nca4WNU6VcpKFCX6wRmEkviWBKfNWkZE1rI2RfShlLaATsPJrh9Fwpv8J9/7LQ7T9GNtaP+RFdWgP0wi5Nq1O3Cg3F0UaKLqJW5ojTsstaut0mYuKm89mt7EoHUzqypedfr3LgirY8obGg/vjBM+SMxiLynruNxeyGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776094054; c=relaxed/simple;
	bh=0j454a/lcScVdqROOx7wsiopl1qUi91GkNPd5lsKNX8=;
	h=To:Subject:From:Message-Id:Date; b=JePzJPNlCDL2C4uJtSHyK6YA5YmL8IAOhiG8eEX2fWHXSw4xt0sGvgdIGXdoZ4W7piC4bdPTIMcuAhaRl4Zj3tlRnxTcs0dVPY0IJwJuHi0WL1cfFEGkCUpyiSiTmCjJC/o5rXeBTkL/yM+RLvZD30NiiuGb+YSwISEwq2BHmpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUlSlNkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUlSlNkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9446C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776094053;
	bh=0j454a/lcScVdqROOx7wsiopl1qUi91GkNPd5lsKNX8=;
	h=To:Subject:From:Date:From;
	b=EUlSlNkkNafw11n3JnFizEcymIjOK352Q6++nOI3zWPBP/IfE8eXjJw/Da0JHdpjp
	 kNmvqPNfwMdXPBeg08IZPpV2RpP1xW29wueCjRYJD36tCvFyewjrUeBv+zX+SJiScu
	 8yFC7k2MjdkE3KyVfnK29alWCCNDmnwH/YWogNWQ+A8cbsx1puBJG+483lfXcY4tvN
	 bjaT7LIfzFaav0LdssSbb35ZEMX9tCxHV/2cOjC3Ryy174d75gHdwBJYLDXF2ts4C/
	 am7HcvMvwQ7bsZZb/r+oeG8iLJRBZe4Dz8CgYU8iSS5pitzxd5carwwTtU6YwieayE
	 NriOO7bKd+Ujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA32BF34C5C
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609405368.8007.2217847002658817103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473c61b29b6980cd2d2582f9463223ca52c9d4973e1716719a1abeb15c89b879
Date: Mon, 13 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776094053
