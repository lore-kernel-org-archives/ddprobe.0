Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C45E13635E
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766530434; cv=none; b=I2VKrErwXrqS4M1vkptxJPa97wxsJH7VR9joCu9Mm5LJOaEbuyIi6ZA3zIz3jlGb8yzpCY2XM/8b/XX7z2IvRttDWPr1dZ5yrWdA0eYq7kqkaMwqoQSisXRKM8NSUJL282V+fu1oRuMTR1wsq6scJTTy0kaTrtas6CXfGXEpOJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766530434; c=relaxed/simple;
	bh=R28thranpl0MxRdv35sSXumLaKqQw8DqHAUwfndm010=;
	h=To:Subject:From:Message-Id:Date; b=rYBtqQYl8TkE0kjkHtbnyL70pTiHLCc6MyoeziGUhaIK5AZYfW8TyVpXSKDtSstLr9gI/KwCqJ8k8Ko0n5++4u9GW/8tZv+DgI9fVmSbs+JFDpe7uTGahjfzutvybuFXBZJiPyxShsnu7F/miu8MLbWkgvbOyxE4sAft1wmX2LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJKSE/wz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJKSE/wz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8DAC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766530433;
	bh=R28thranpl0MxRdv35sSXumLaKqQw8DqHAUwfndm010=;
	h=To:Subject:From:Date:From;
	b=BJKSE/wz4Z/JW9ecpcTl1SxM7rgFOx1Q/AL75Ejkd2XsweEGCrlPrzn0NhHqpnzMp
	 GCvZk/VefMv8hFVMUnL7vjTdHqxuVnEA88CGKgclZ0yg0NirZkBpHwWIL/ASs9aow1
	 FdeASpq37POjIfaot9EJAfLdGW0RGkMaLY9xGDhu0PXMMEGj1ig6ayCIFIAPHu4mTB
	 wWoBoyoN2O0D8tMgIfonQvdIPIrcpJ7qTP/j0QBIoD9S0vvbjB+K4UYvjiE9VUYPdx
	 T8AZOkTVw+jftW2nCGe0YKjkciSQHHOXqlY9JANlCzWkSmFeNYFCD0IHT9IQUlrKVh
	 XiTKglIUrEd6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EBE748FC
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653043357.6109.13553103302506056848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df752dad339e3ddbbe250b1778ce08f4a6713e4e08e319ffcdf5faca8f9526fc
Date: Tue, 23 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766530433
