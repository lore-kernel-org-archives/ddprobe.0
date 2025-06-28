Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5C73FC2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751089794; cv=none; b=lo1Yn0hDriVrCqLkQRFocAulGi+bkrzzVUa82EQGEJgtIyEyXqvsqBNMDoUjjCm1/wM90XU/CoWjr/fgSBiDrdMK17TqHhuoNEuBijpOSeFTkkEnZ4OIkZ+8/1FK+NsTUnhCXiRdkLQIpeHgbyYrGD6o7TOZ/J8mDhcsgHT6FwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751089794; c=relaxed/simple;
	bh=hvMcaWISb2a32qUkp/GPDjlwFDKTyAP92fVcFFu/P6M=;
	h=To:Subject:From:Message-Id:Date; b=jYwUd7AQPG82sIUdlBW1QsrYRWdoL/ENTWoTpspA4Z4hNifhJh32x1v31XDp9HaUFGFV5/QRZOEHw2B9AUDjv3tKOTgLH52JlFo6SIST9/HiLulUO9MAgaNamKmsPEhWZ2GxvuzLw9GQ3+c3jxLpMTvlzpMAU24l8p1aOcn6E+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsOVD5Qw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsOVD5Qw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5183C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751089793;
	bh=hvMcaWISb2a32qUkp/GPDjlwFDKTyAP92fVcFFu/P6M=;
	h=To:Subject:From:Date:From;
	b=SsOVD5QwPKcSH5O3igNtM5yw0RV1+UbUmj2tr1M56/8jSxFDhGi/QIU+lOjOflzVM
	 R0uMHtz/BMIXwrbUx85nLx8yen7GIBP8sbxwdMCIaqCm4Yix9OjoZ3oxXsPt8yxTVw
	 ls2vRRmPBsksxjyMQdi0EbmTpb/irPhnrfMT8CnAi/rl/ugzQ9xGDjDboDGXLMKlqL
	 BC8kN6UmfTTzo5cIcrJWNXv2xVJafDoYI//EeHNogdZ0NCkkjZuvgpgr5V571E4TKk
	 MtlJXzSMWKx/44b4W7ehgzpno6WKXrWYZPG33LVzBw6nxEx630BxY/bmtUn92P0AaB
	 WVpqdk15xXuVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AD2C7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108979357.24210.5008493188776885627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d348a69c171fca54980c2498e75f253e6eb9e1aadc450d1f542f0474cdcdcf86
Date: Sat, 28 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751089793
