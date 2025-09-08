Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D067B2DCBE3
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757365193; cv=none; b=KSvpfoL3K5gHH0VC2J/jdSGkCU76t02uiYgJe6JMSjFfwvvc63ptKUHschugxT6XUwvz4C7S/S5YuEly4SbtmeDiSV7k7LFlDpNEvFYMTNUi2cN++TzFuer5b4XeqfeN0SZSxc4z4XcqJT7Xr+JMYw9jOP/zz8IRGJ9G4SHWBbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757365193; c=relaxed/simple;
	bh=U3ybr6GrPz3U/6SgPpAQcivvs1QiCKVMP0TszqFxMEw=;
	h=To:Subject:From:Message-Id:Date; b=MBrpIRtgfm9CuBROjmDy2UcSYyLD6Ebsa5Q5XEJQ3hh79dICatekVHG98m1s00lKk9oVY5aDREZhsc6cHKZbUTFOe1L9Yg54HpSTftMk+48NemSsQGaqRS26sNPoPWurrsFWXsb+4vcxbj0GMrV1OFlDGCUplyT8nY0bdYlHA+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sj75giE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sj75giE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E25FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757365193;
	bh=U3ybr6GrPz3U/6SgPpAQcivvs1QiCKVMP0TszqFxMEw=;
	h=To:Subject:From:Date:From;
	b=sj75giE3rFLgDqoYQq4OL6ola+atpvwcz/RgKtuCIqLoJwAaH7XDR/y4ZX6FC89C3
	 jE8OxkZF7GYMDBuQIsvhT0cmw7KRkp1QU+jre50nZD7uuFoiYsG2820g3jfSQx5ovh
	 qCZvBrcdje3YuzcRg2sbKl6lIv+wqkFv3OqhBanx2bGAouBIzoFq2FFShMdBSvRjaB
	 XdrJVjakPauIYKNDltSK9TjLonPtGx6h5aabR/wkK2+NMpiSHSJcSaTeT8kwgpD7rY
	 B/fJ2Pviw9rjZtjJqW8mytLp6nBbbACiTxV4uaa0EjrFP1Z5RZWxGNMlUBkryoWIn8
	 2UwvCrhO214Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F493CAC582
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736519357.24118.1222408424385559433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd2ac046bc90aadf09ba00fd6df902a5d4b426837c685877ae7d3ade44b0a2f
Date: Mon, 08 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757365193
