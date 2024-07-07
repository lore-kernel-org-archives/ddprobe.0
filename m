Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C871DFEB
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720372583; cv=none; b=oKmG3loKhzchjZyqqjL6mZpLMPylv8OM3venzhnzLB6HEWDvWE6KpKhl0VAhydVHcek453RzaHkrEekEn8X4d7fZC+IgHbWIkGU5QDdaNO/9ShRXxS100dAJEmtEpMLS7p32x0QFf0BDq3n5Yg1kIWVNVLoKXXpdFyu7XaRqckc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720372583; c=relaxed/simple;
	bh=jhN9jYdcFYp3TbZggFDXCeYknS0x0shwzLtoNONQ4WM=;
	h=To:Subject:From:Message-Id:Date; b=Z1b9bvLrKmjbLlm8ihZFVPSPMBqOwDJHlLobq8kpWwGas3gxv4dYodgdmaVBntMwMjqAnoBDHjcLaDH1TJbLtXGD99eYB5mA6dMUrvfXQAdNTNwZ/UWIwIpsdWpnnTzBikwoQeCvsLw8SzRU0MYaGGDv7WpTVsM5re49J8xaCPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4GB73Ee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4GB73Ee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5072C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720372582;
	bh=jhN9jYdcFYp3TbZggFDXCeYknS0x0shwzLtoNONQ4WM=;
	h=To:Subject:From:Date:From;
	b=V4GB73EekdFMomasfBr/t+qneRa0bZ/9ihL/wWBOdJawmuLUMz7hnjjCJ0/KVi5ue
	 8o5M/eHj2piStZTERPsKzWA8xQgANK6QAr/yja8im5LvtpGLqwv6OXimlIRGLES6mL
	 Kx2C6OW8NTdE0JPjRMa6Fzvz5MT4lPlGFR1ZlOl1s77c7l5jn3AvW9U22L01GexPAf
	 QGpTP7wuiienjOI2HUuw73odE9gAW06jM9zHwrd1bDgYUg1OvLDld5iG7fiKghqsNY
	 7NjpjHtnxVmXdjBtNPEb9qUewFSInSZ8dKeseJtHAmHom3uQbAR8divMB4cpwVS4lT
	 OBtcuZf7IXVbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFCAC3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037258279.24796.10586695671257469409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c429fda39bdfdda0c1025f53a708282488b107f6da573ae43e01809a27b8f3
Date: Sun, 07 Jul 2024 17:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720372582
