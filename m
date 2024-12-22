Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3356D2F43
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734852354; cv=none; b=fC0vuoG9AFQP1HwTMvCDk5q/Q71mZVmVS/ZdtRk10dg0r0UVn611MMqN+bSW9O2VG9/B30x5msd/TkCA5MsgHU3xtiypWOwfkiYvC7AR5T+ckADZkHVAbClETAVcJjGZCPoBGbBSgW0AjSOrnEY7dXWSPcIFtiST0lvisuqeepk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734852354; c=relaxed/simple;
	bh=AQ0Y3eXko7Xo+KH/MO1ZxL8NZ4e2sMPX6XJZEglkfiI=;
	h=To:Subject:From:Message-Id:Date; b=TfE1U4S/jKZX8FfUF3Q9ya+Qr4VebA3VRCYfd/QzNSsYGRMWLsI6RHeShpNI+EVsJxRLiAFDzzkgdh3f0oLyL27Y0jOX8jVCHP7CFz19lIGudnfszMGSvaB97QeOL52315+j86uqgekctXRbqh8L1kJRsP8kawG5xQE4PNhzzmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpT/NxaS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpT/NxaS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B505BC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734852353;
	bh=AQ0Y3eXko7Xo+KH/MO1ZxL8NZ4e2sMPX6XJZEglkfiI=;
	h=To:Subject:From:Date:From;
	b=JpT/NxaSlaeexff/vIAzOQ0Fw9Tfrr+rR1QSjHG1lv6iB+TOYx3F7ReKvZEWOBwxp
	 rUiWhXAIcx/onATaMdE7G1173vivj4mvOf6QtkOkYilHl88l5IefwgNTkAc1XjaU2T
	 YaRKZzavENVxAGti/uebvjCuMZn/MwGmxUZyAZfqlfxigPLy7HJfT+jmxldewoxsQK
	 HRbADAkwKnd50cYLQ6znpHaHa5kzSbi7T25MPAKGggIPLwguDfMk97W1EuhtzS3e0e
	 joOfHtpdt2XYGVRq8X/AAUqw5NcJIEek4pcmQYOixGXJEPaPpB3iCesZfADv9CIAYj
	 3+pMrowce6F3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A571E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173485235360.17636.15999530928848397869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95b12260d8bc18a803aaae7fb3635d0289a5ce9437c560f73b76e9de61509c0
Date: Sun, 22 Dec 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734852353
