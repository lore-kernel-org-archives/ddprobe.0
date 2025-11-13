Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6E8239E80
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763056794; cv=none; b=Bf3laIvIt98XHg833zQ284fRF8HMZhF/2sMWrYkhorcLrRnoDmqOzRADSBvxwEnAQy4+2Mz/T3aE74J+nQ3qw9wi4ArjrXNu0s/pWH/0n8TEznym/M+HwsB8FfhERQ+Ofl43Km0qqkAJMQHPdoYnh/MRV53+Oz+GE9+eY2XTZ/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763056794; c=relaxed/simple;
	bh=X0Yn6OAoiSZPmnJtHPsoTtmFb8Vq/U3k186j3G3sPXc=;
	h=To:Subject:From:Message-Id:Date; b=kGGGBsg3aLkQUZ2gU0Vq8LH6bornQo1h687GgW+ms42Qy363kS+rfKIpuZmyvDDebViUCW/moacqJraD2icji7qGq8KmymF2KND2Trw4gZMrUY1QGge4KaSPDNN5IZuBl+BkkmSxR/rqMq+ITfOAx72b/ChFU/MamodSSG9AvIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H48YZ+0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H48YZ+0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFA0C19421
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763056793;
	bh=X0Yn6OAoiSZPmnJtHPsoTtmFb8Vq/U3k186j3G3sPXc=;
	h=To:Subject:From:Date:From;
	b=H48YZ+0nN6xWo/VPJ3BwmFL0O6WoLruqNHV5wPn7a7S35IdYqyQ8RoMM3X/6cmiuF
	 eB/zhSN0s+fQ+1MDZylujIQvp8PfXPJvzW9WWGO6YQfMk6eqYDKegw+GZeBcaj+jdw
	 NQ3kXAh2lP2tGAxJsFvMZPubWBezmWOiwJpxpSrt4wSeOQx803VJEJ3OvuvxcaIlNB
	 LiyOq/EEM+02fUYmVJZZXqIJf2USY1pyBM+uPL1eL9nm7q1G8gFQR6mNA9Vlztn4FS
	 cXA7bMRJmW9YPRFmES1AAmPVvzgoEogFnLTZygbCeD4YiXrfnK94RarIxIXtgTW+ZR
	 9bphVD/29YA9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9109BCD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305679357.9160.5021276176439413222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02849443c4ee110b931ac6a2a7ab2bc5eca4917516c90ff2c6b4d3213a9ed894
Date: Thu, 13 Nov 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763056793
