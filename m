Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FE3344D8C
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778778634; cv=none; b=sfMd0BbY8G+Wyq6TceebTxO9y7InBSXoGh0Yrje9Dz6/xLRzdGYTcxA5gc9xgDyZIIVagC8uELMUz7q+osGWhoZK8mh3KnHXqNyvpmLIzJpgiiyv/hdFh/HwU7fJzNrC6dEUyHLq8O1NBHLbcmAaWLDY+IAd30cK/qEWlaAO0RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778778634; c=relaxed/simple;
	bh=S7raOTE+Tu1kJHcmNGubKHLUjgFEVJBAzEGtgdBL5lc=;
	h=To:Subject:From:Message-Id:Date; b=gtkDI/0z0KngTEOSZQQMX5pAucKWDmoS1EfNFPJIi5uILp+5306JoCW4bkPPGubfToHwB/M/qY4qAbJubbuQQRytVUAYD4s+pncouDgtMTho92y6f7ucIN3s+iKUnmYGAaZJbP2trlI10+WutUb0J+ppPxp5g6misWEPiLy0DGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czi+lv3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czi+lv3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD58AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778778633;
	bh=S7raOTE+Tu1kJHcmNGubKHLUjgFEVJBAzEGtgdBL5lc=;
	h=To:Subject:From:Date:From;
	b=czi+lv3VyUpjTOspcp6NMGq7hHSwW3noqsU0vRshndFBVzE4gVawd78vv7g66TlqR
	 EkNF90Zbux886+wfwVsrD0rr3ZusN0ymwBcUbrmhkvT94PM6MFoaYOyhxd2yjn58iv
	 3flPZ8NT7ECAGG45eAyeBPQaf+OnfuOvdEGJ0d6zZtQ+OiJeVL9mkQolBhgm59KAhP
	 qTdtXlg0p+mBkxKjfFHynR+oL8BP69VGQmC4tVbatuqUF1CHlZiorFyyGiorBroCGG
	 EgZ62KHV7t0c9VR4jQp4VI7vqvBzfNfMagHVP7SiNSxL7DOUoVuigYIDjYyy6PVE7A
	 sL2pVPavjLpAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD43CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877863369.31911.1167691873858569256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b90a4b74c9e7045d12d7c85ffd1d4bd28e69dde6891460243a6378f9df77c27b
Date: Thu, 14 May 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778778633
