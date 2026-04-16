Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5BD0394799
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776367654; cv=none; b=Ohm5bQeAjIjUtvZQzbGoFijtJe+Q5AkSE5eHEgx9/rEFE7nlcD3wMphVpo7Eu8hljQ6D2Y/UG9jt3XkwRYtj9to+b18Q1uRYx/m5FaYU6WwZHWWx1k7VHVdYqdiLmqskxWAeTWFX1psYdeGj30p2+g6gtxs0nL80qV3x0JCZPGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776367654; c=relaxed/simple;
	bh=cgAaB0hB/Q7SA6zgod93H3h7AE+yxUsSvfSXldhD6V8=;
	h=To:Subject:From:Message-Id:Date; b=Kag2m2i7rmv+Z1eYyDC1UvCUGSsqzetYnF5t8IL4d+fjBYKrFp3/KOv59EvNIEtkOPxnGeCj9rKQ154WGpoW6FZZSyUnF+GI2ORrL2p9qrPnnBCt2i4eS8TD+mdt9H4vydg05Y/TArsrcCaONxea+Ti2PynWnxtpaVufY4TnPXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvL630Xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvL630Xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2837C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776367653;
	bh=cgAaB0hB/Q7SA6zgod93H3h7AE+yxUsSvfSXldhD6V8=;
	h=To:Subject:From:Date:From;
	b=RvL630Xqo/9RJaL4d6MCLk7Xxv9RGVW1NRs1+2NF+mdHeb7v8F1pbbeHUiZqK7zlc
	 7gCr7GGcqudiboIknDMdx4xn4VkmmQqSbMRn5F1gBlG/OCMWEBOC99MY6d0RsuxoDc
	 axVviZx9cAKKsPO5MMd3MK65lKghztWSJ2gUtWXXPinHxe2Js0MQrob+w6XWR7Rxjm
	 h4s/zIXqp4sNA31w94BCqIadMcd6bTLE/oy+Ix8mJ2KBuH+LheZM3fdYnGoxs+ds97
	 bo7J4P+0n56h07zc+GvMdW0SmkiDe+fi4g7A3SDXvLgYCCQPLKt6mRYy8Z/NcyfVvj
	 61sfFmKsBtwRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE7DF8D76E
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636765369.12863.17594109346536218136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134a279a29d8b1741f3429c899d3620611acba4aaebe33b95cd7f74170001f3d
Date: Thu, 16 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776367653
