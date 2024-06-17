Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A441194C82
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718625503; cv=none; b=AEx0X2CrtMgXa0BgisgtHNSeJenPX5SM/DBgNn4wAZwotTzeWwEmzEn3Z9b9v8kfEptHO/rRS1aiUDf+JXrRgmizw9JQ8kmK5vbJC7xB7pMi36K6UcSzxy+L31kK6CqXhbeLfyOC3m5pCRixfxVjjfil5IfLnFD5iDxQBDyRtjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718625503; c=relaxed/simple;
	bh=wUa6Ip2Kc5Jn95Td64bVjVnqxL8Nhu/t+GHptchVjKU=;
	h=To:Subject:From:Message-Id:Date; b=asYLXbCxTbxvqKbL0/pe7t19G53tWsrQ1KWuAuBEQAfMZOvBEAk+Hg/aSgXIbha/zUgyseK6ZP74P1kf4XKEaq3LlRH6VgFbn1J0g1Sa5B8bOsEdImCbbKQIqA2Z+K0a3wbXKfBi7otjLwAok0Iy3xEAJxMlTnHqhHkx6/KDXAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2g90I+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2g90I+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67E8C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718625502;
	bh=wUa6Ip2Kc5Jn95Td64bVjVnqxL8Nhu/t+GHptchVjKU=;
	h=To:Subject:From:Date:From;
	b=U2g90I+TxPa3dcpzOCIAIBv1CZS3xXIgAOi/VV1y8tsKAgpZbdEtNfUv94DdMxNGZ
	 uPZzBDus7btpkUMumH/aCpItII92aT4W51U+YMFEHOdJwTHWa4Ts3m0tQhJ8yxCeHa
	 YBjmcsF+ixb8ueM+Md2tAOnFQVZgOqraNSdWdle4nG3yd3/IKcOnSSfM0lzTekXazr
	 1uVlFZ/nNdpXCHp5T3X+pOf8UM6xImYiZmh154uYyTH71Pm/y1chGq7rKY3mGMQ4u4
	 ureIPIHzTKlTJRGjguSIRu/Y+ixk2FX/uSzBXmZiISoifbvimCWmdDKkxE5EyZvx48
	 pSsjxVX0cobQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C406EC2BA15
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171862550278.28146.16106289411326198119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bda264c71ba3dd4770d46dee0a076aee20df6c9d6937009557b540a54702437
Date: Mon, 17 Jun 2024 11:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718625502
