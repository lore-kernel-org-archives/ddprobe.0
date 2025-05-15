Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E1529346C
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747288194; cv=none; b=oebH3HVpnLzGXFeN9IJ7HP8b0OaxlGGeszfYsdt9/wJBST98tulugmMLZG+EqD96OZGWTkvsqfY5LNjWJiAx2X0aXRa9O8FkzdGX9IA6zpBLWJPkLr934w0aWBQOrPU75wMrA3tG6vvxX7VNzSAjsgm938870DnpyF5lp1NCbaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747288194; c=relaxed/simple;
	bh=x6l8eQtrOWh8fMzCevBt8FobMfRckhGGBwcFWANjV1I=;
	h=To:Subject:From:Message-Id:Date; b=PPe9Mim7wMa0waR2bIZ5+KLdzubmbTDl+6n/bZn7lJSBg1YW8gBHWlltBNVTw8fHFurf9nUSGYRBb8olDzQHEgnpyS+k8cBgHEjxd8NXo6dRHAyR8G5Axq/jNstoBNlvg/po6af6htkiUBQByaRKZjm+jHVXOxkjVW+jGIGpIj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXqdYAxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXqdYAxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E67C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747288193;
	bh=x6l8eQtrOWh8fMzCevBt8FobMfRckhGGBwcFWANjV1I=;
	h=To:Subject:From:Date:From;
	b=EXqdYAxHMN6xYfOxTuikCbmKLOJtGSKwmocecLLj/Trz3JesSKbRKsRyvFpk01Xvj
	 Ph1Om/OYUN9NA9rnLSpeVF5A9MQfebnxzxW1uCIJvwpXZNr6X/Ra4ogYh3gUfFvNdI
	 3oLP7ijCuurGz3nq/Xhe468LwVp851otb3c/ab1vFxksJ13oK4Z/eF2NK8KP+uQJ1O
	 uAJeguqKcNA6HE2bK2wwyCaTHQKds/OFIDrXjsnULYrmmMdO7UvGXXN0y6hlfs9V6v
	 zXcR/zWbw6etoU/nG3ktRQVW87Y+UObt/DRsloHHv0U5zxE4UO2ApR5TbvpefKHAX+
	 Fb88DYQvhsbbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED4FC2D0CB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174728819357.2885.13138272946471495115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232c95147e689bd13682efc06725adfeb746829a90e073916ed6067e102e9f91
Date: Thu, 15 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747288193
