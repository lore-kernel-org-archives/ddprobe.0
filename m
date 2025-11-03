Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346F223372C
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762199994; cv=none; b=akwcLu7MJkU3lpZ+gME3t/D2eJTsfyyURhiRTY7wAD1/ZKOMTVdcweqKKwLg4RXHwUPNhlOnUp9QeWIjdFyNIvgttXUjDrCwZJG3yXHTIK6fWTTojHotON94ZL5ljPb9dv/ShTtK2uUWdk6UiI3jXeNffu4GGBg2Ig0/nPvG5a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762199994; c=relaxed/simple;
	bh=fU918Cc1NpMZXkJtLxPWvDFWA9M1XE5MJBFQvqoPKV4=;
	h=To:Subject:From:Message-Id:Date; b=IaiIbCP7yhM8RTFG7axrolCkOpYkA831jKqGGX0qvy3lBtYSG7h2Fb5CbdPxUT5SrA4b7nVFkXf4SYJBMmonMye0+LPtGGoYb78rIAPS9vk/OlUlUyYHCfxN1kzwt1hfy0k0OEWQtjnfCPUC4Ku4LhDC6/odKaPntVSdai82xvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4AqhpV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4AqhpV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEA7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762199993;
	bh=fU918Cc1NpMZXkJtLxPWvDFWA9M1XE5MJBFQvqoPKV4=;
	h=To:Subject:From:Date:From;
	b=d4AqhpV2qnu8efOqByi9pAlLiYMuzombGsL33ywyBOiSnRskMRYQZIJ1c1/VV6+vy
	 uqaIWkneJ0HIYTxIkVD4LKoFdlJt9P5gSHQx4ZmNqXtI/TMlMToBxP5JL5kD/RQQhU
	 dNyBgC8yyXFPLipLgMnR/40fACMMKaWoMHuY5xKBWd2zJIMMjn9pcfZTFdtEV9fLnr
	 /RU/DFqmH/5jmrDwy8v6/6Q7CSmT+Lg4InHkhq0VuRCwqjK69LYaAi5MjrPW+24s22
	 KmimZBXoHgk+lYXlx6C+G9J4TTKJcYw2H33QZmiRcCM15eg9ug5nrsMupUHLv3reoz
	 XZ9tsgYPFBHrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C28CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219999358.26531.13538562577273770100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7b8e409209c65589b4e2d15e6bbe7e71edcb835331ff05b126263d316ea5f7
Date: Mon, 03 Nov 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762199993
