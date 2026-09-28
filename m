Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A95834DCD2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790634634; cv=none; b=kCGAySI+jDK7kPRPJWpH7OIgfG9pXdcPH+MZMFiZaGfxRmuZJMyMELetpva1hkrNaq67NqGaumK3//iiDxGyAjlPhTLzci9VAsN6kGGubKzQj3oS+GAHYIFOEYyZGjo0B7ZhqqoJIzCy3igw1GWTUQ6PRpJivSTOjSrZhNSdxK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790634634; c=relaxed/simple;
	bh=EzlZfSH6FqWyOQmRAgHkqHm/Qv3WkuvU4WQY0dCgvQQ=;
	h=To:Subject:From:Message-Id:Date; b=V0n+SGkb4lZEybFfIWEChkSPWIU2SF8oV3/7i8aqS8RFmHsxQty6vwIncn6Xu8s51SbvvBgJOoDMOutU7bOwO+7KaW6IzpxxSFIjSXkjWQHbO+Az0LK3T2vibzQ7o5eHdEuGgtUV4xR15oXxJbCJs1zUHWZ9jWmaTta7S3hqA/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qF9u+ktg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qF9u+ktg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8A0C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790634633;
	bh=EzlZfSH6FqWyOQmRAgHkqHm/Qv3WkuvU4WQY0dCgvQQ=;
	h=To:Subject:From:Date:From;
	b=qF9u+ktgTNJ0szfGVkykYiXX7oUHTyR/sbQU8WlbBEezqOJ9VbBqUn7ttKFCplMuL
	 oNn2JUGsI/SCKwXYPA2urPu7pLLuv9m06v5TkszEpCdFjPqN8952RUXs0fmAS11Nvp
	 CJZzouKjv3Gdb5Pl3BE87P6o7tJa5vdse/k2OMOhrCRS0WLlBOqpoRX7/f6DRUzLGi
	 WxERuPf/wsspSfWNR98ERY8aj+mT6w8tVjvTaRyEk9RFUHSWfiabqwQz08/WpcGUky
	 fFyzJqGagmDz7m1DIb2oDpniBUwzVA7URfseINKosvssG5K32GSb7MimMf4YC9saLk
	 BOke1QDfsGN5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA6ACA5FA5
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063463369.9013.15187897912728155450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e49b0539cac0bfa37916e90e95fa05cf12ad33365d4c16433aeae8c0100d6a9
Date: Mon, 28 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790634633
