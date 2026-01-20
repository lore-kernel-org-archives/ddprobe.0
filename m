Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9673D3D13
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768901034; cv=none; b=hSV823B+xtpnqvBHIrUd6gXX0yglh0wr3/orfin/YtxsozOohM2cxQSLCNZiWO6e/wphZy9/+0oS/1loIShwFVUoIE1QNLiRKTdA49ptoawehLtOzsC7k7ZZOroxaNPcK85femNfDqbiFSM135YdDUoQcaSkshSj/3niYpPn9tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768901034; c=relaxed/simple;
	bh=Jv/ITDAFyAMXn/sx1rfuivm9Zr6M4EURoghu8LmYvx8=;
	h=To:Subject:From:Message-Id:Date; b=SRJJezvbriIkSm1AQgLgWG72Adzh1ChRHd2+YWKaicodXzHHcGkSf02kom5MicnYl8Fru7XyKFN1+qTemHuzLvTHFQY53jbpZl2g7UJJ8mK164lGQLElz2/gr4cgdi9eYcO9qqAqcVTF+woSoPrRykpXh/tjHUHa3MdQ07yai7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hi1Fo72B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hi1Fo72B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0142C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768901033;
	bh=Jv/ITDAFyAMXn/sx1rfuivm9Zr6M4EURoghu8LmYvx8=;
	h=To:Subject:From:Date:From;
	b=hi1Fo72BkdnFElFp9+a2cgyQrleUabGE4fNzzQ7raJSQOcQliv/Vp8LCGaPGxDaNB
	 WejiU/VnUa/OBAXbpsA7ePUpx01ebrroTlUiUc8SiJw0MGNIsE5h/2qn7/as8xrbFX
	 qfgalMGFVMxvl5X9fJUgc99ynwg8re8YmRbuQrvKa+B/53vP3EujBsJB590uLw+ah3
	 sB4hWLOeiDCZgSI2/JOWITYacv69z2DQkK/6AcYX1eXm8H0Q7ToZXIB/MPZnqH8U29
	 RVY9bUHPE3S45lfQVCNmGDAL8obHPT7GXTkq3jcy3dWQci/1kSKZw1lITxozqoSpTE
	 GJu3XUGI/G6Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D1AD2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890103358.13744.5309213286469740521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0a9fc77083f2481e42eb40c780247a47474457f42fb600c3584deed5271b30
Date: Tue, 20 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768901033
