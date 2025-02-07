Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B4C1448E0
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738934754; cv=none; b=anXfXk5wZ5sVDGPcgqBxFEnRVbZYrGXZUR+5RTi3jPRCfIzF+tRS2+wnzpsPMcICX+K5AEruU0WYUQgDs8EgKPSZAEhEUJSwhxsFHZ6U5YoS+FIjaNYAKHZqi/8FHiDdp/baiqVWx/Snpes/fZEsbh8UqXYc6/KMjmQEgcX6zDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738934754; c=relaxed/simple;
	bh=5EVE9SHWRs+tRdPMkn7jmCby2/vVOFQ9U/0Ekz7I0uk=;
	h=To:Subject:From:Message-Id:Date; b=jUQSJEJ7WKOIcuAzjMgdEQt6pUztgwvRWVYvO34fIZojrKe7ffVCbku5VzUSey2Hw9AilOthuf6Eyadv39OQukUkY1I+4l9ipfrXp76fb44pvUb4mMBeGJeD2lwTn1yLKbT+r5CHZ6PDJVJEZyAhv5izF0Xwf/ru2Fn5F7DOyGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f238j/5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f238j/5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46BBC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738934753;
	bh=5EVE9SHWRs+tRdPMkn7jmCby2/vVOFQ9U/0Ekz7I0uk=;
	h=To:Subject:From:Date:From;
	b=f238j/5cPKUtnd84BJNn2VjCHxNkcKR95LqE79CxIbIeC27IpzYedMPF1OIRJKkeo
	 l4coWG0BgA+nK3fyNdv8bM+wchEM7uJX2N+USA6voIDONGR08E090pwcg96S58Xtxo
	 WxUCrnYiY/92muzJmM3BLTYCE4TXs/UEGf5m44LBfo2fJ7nmQpsIp/bBT5li7PB+dJ
	 fTpvMA97tc4BJw7zgrT6MKsyLKJH/N3/zauZfD6HHtqFDJxVs9rDt+3TvOUpgLKI9o
	 moWePKMdpg8hIly9XoAJRt8x7s664B5KUiunYonKf4w+azuOV61/xrCyg0apyZ9y7H
	 WQB6suTl22b1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C20C02199
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173893475367.6551.3249823577390034100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeffff30a2ab1b256d64c3e59094f3c47a4d1ff093a7ebeb69229d9372901a33
Date: Fri, 07 Feb 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738934753
