Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F39E3A1D02
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786351234; cv=none; b=fpojovxi98hxrrXf5GzkuVu3inLCNS8AaqGjQXTfEXB0axl/ZEuC9b7OpaGUnqHVvzPXYYh0N4EC+uCmqa8n0swPrteGMGpTV8x6Hh54ySoIBc1m5ZrUWfQ3MGjefTFBiDFKtl1XS/4N4+DT7uJbN+QyhYHvUIPQHkHkvLInZLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786351234; c=relaxed/simple;
	bh=EmvFvVlrtpGFdjs6FkQDlXd+Da8mXWLb7IShf5ihruI=;
	h=To:Subject:From:Message-Id:Date; b=s0SUeQGcdgmRxRJeOeKk2A91mLsnl4L4fDVqbUv4S4GDI81loZDbZnm4TpHun4HerftBrtvhl28q93wSm/YkL3WhcOzxVsV6cc0jgKNCBtWWfFeEsl23OmyPgUZET8Xgjj7x/OuIWmbLDuGN1nNY2GY7hFpdtq0+zpBQ6HBY0HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTbnoSv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTbnoSv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08F1C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786351233;
	bh=EmvFvVlrtpGFdjs6FkQDlXd+Da8mXWLb7IShf5ihruI=;
	h=To:Subject:From:Date:From;
	b=dTbnoSv5FMrTlcEgk0nTgN++NTLa9uoJSZWO4lMrI46GFGOASM89e+OFn9Lh+Xk6U
	 Xucu1klGJaNQFtCoUR0oeTQITTERTFhPunfXmvUVLRbHSyiuuGjpm26tKPiTkjftPo
	 iqTsD8udjVvU7BryARYjL+pPTd7xmKUqy94lI3MC8sRNuVHUKrBVYErq9i9bXX5nfl
	 pzO5UZJy3pHG7bQOvg3QxKKJTXBJwiCeJTmOg0EvwDlEUfJEq33qQT5WhYXMRUPklA
	 V1E35fNiT3FIdYrJamtHhxkbiCVxf4FrXufA1FkRI+IOcL4FjmW0CL8nH6MColqknW
	 hI7dezbkH1peA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB2DC5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635123369.18755.4334239818632028102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d28fdebd227c0fc86292ae8bf666cee7667a2f5f5eda031a85060956ce289f22
Date: Mon, 10 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786351233
