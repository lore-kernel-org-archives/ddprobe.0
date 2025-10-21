Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5DF3446A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761061794; cv=none; b=V2ZeDnnTOh7U3KRiBPIhWJXHVWB0uldOAnUl2+7i9nUxUIv2opnkPscyXfScWXOkLowkLZJC0fn6I4muJShyiMVvdgvOkj+5RC4BLXuM5LDPkllVJ2Ym9CCoSaBMmNsQN1jICqAi3B+Wq6usc73kkml7sedWXavQLAminOCBci8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761061794; c=relaxed/simple;
	bh=BRw+4dfn1hNGMe3E8lUkoj/7EwaHjNd9YuDKXg04UrI=;
	h=To:Subject:From:Message-Id:Date; b=g/WmzkK//iK2X4Mc0yMihasy5YALoa8eZpYEZJ8qtuzqxBlxUXIR97fs7s9Eqxs5/z/sVuC0sSZSJORqmXIEAQtUtoic06YKxYNBdzHqW14cyxUD8IstB6vwBuSwzYG42MgrM9jRS4F5rKZA3v9YSSgCQzbcEub6zypywrPVfUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDl1VdEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDl1VdEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7D8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761061793;
	bh=BRw+4dfn1hNGMe3E8lUkoj/7EwaHjNd9YuDKXg04UrI=;
	h=To:Subject:From:Date:From;
	b=rDl1VdEP50ulz2NrHgwiQSZ88hdiNAwx6v1E1xEfvtGuQ/qWe1wWwEs4qOl5907pK
	 uEVmo4G9wwWSvnnXgz2u3f+2WaVDbsGmBomzmCh1s/ZRnaeXITKOl92T7D3N3rDbrg
	 nrza8Gvyv5Ffc+1k7Awd53KacXmVxfKpT2n9zeum0O0gVJPi4OYAG4l8kqKe40si8j
	 GyVnLbSGin2Qv4Iv+cIFmOP8OArFNhp9Ea9iF0uWcIED2uIah4dtOLAnSUBdKHs8Wl
	 rcae3wwPnXPMKLaLRrfxBH+b50+nylCrG8nmAmgUgf+Qr15F+NXWkVYPyAN4ddH5z7
	 Kuqi1Oxmrd2Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9000ACCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106179358.27485.1988940522515073566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d560215b1cb8d6bf520ea77e8ba2ad21773692ead0dd25d12594b896e8c9cd9
Date: Tue, 21 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761061793
