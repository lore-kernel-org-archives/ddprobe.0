Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4B5B640
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768776234; cv=none; b=OPESwpiz39bvl9OdpYdfpPryNHxIEwpXsGlbCBrdZPJ7PnIhPBUyOQF66aWy4c2o5lMfry+IhaTHHPZD55PggCpnx3XNcU3oG/ccVcheQKDsMfUI3MUOWp7UrjaFxDROtBhZwMeMDaPzz9McoRaPX5Z/sL3w1qXY1zBwoFbAgCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768776234; c=relaxed/simple;
	bh=iAuDfTAe8SqVD2O16d42Erc3MpPVTClqdL62Uwi1e1A=;
	h=To:Subject:From:Message-Id:Date; b=iEUCKVt4LUoBHo/qwkfBZVvITffuexCAuobJJI9DTFYK+rTucvBIkHN19OnTEknNhqHil/vake2cc42SDJUQmoHHD4sU77F0g6cI3MQKrQ7XvHYBkLnPAQQWM5nZ4iMlu15K5oJDKbdK07jGe/HHY/+NqJyOBcs+hurEk7JpjfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7NASG5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7NASG5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76F8C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768776233;
	bh=iAuDfTAe8SqVD2O16d42Erc3MpPVTClqdL62Uwi1e1A=;
	h=To:Subject:From:Date:From;
	b=Q7NASG5PXpphD1CCjyRspb2EMQYihiDBE6f0rhpv4kWsWg6R9TUxONJo6MlBt9JS3
	 piyPCig2bpr/t2RbSRFyHDKkA41OllxBPl4tHElRQhFrO+/C76H1kiJ2k+VDtkjy8F
	 Ucrt7OA55aSBoDPhziLfUnjQuGofbsHo9LDEcWaQKDqDph8mrdj659GajKp/4QCWlH
	 /8efZ1Sm9UnWSujGZyP/Wd0SuwCEtuXQJy4FNkb4DLb7teqWX9YWaES7M41jaDNQ9w
	 kGvQYXEVBTJqXoJwBBaPRc8nShSLWTAt47ouq0y1W2IJTBaYgJEO90tkWcERqAVYb4
	 VnTZa2OYOEV7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964ECC9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877623358.18384.2054654498304084238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401625d2649a856f945847d80a45f454e7238e36c20b2ab35d32adfc9a7958df
Date: Sun, 18 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768776233
