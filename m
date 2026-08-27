Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91FAF23645D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787810434; cv=none; b=Cx70aPXHP9TzyC2zD7e7tyi/U93DBeHapEnI++hpO7jhBbqKYncTG7CmwUF6Br+4B4Ii7anrLNxcTYL/b59PvyXhpez8+Y3dRkfnCPCyWmhjUpFPIOlnYh3Rfp2b/FnWBClZOesuwh7VK7fMCnTEOoSSEg8THERdYZRmLqI0dIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787810434; c=relaxed/simple;
	bh=3sXt115QjU4+VlYcZ8oNlYdQwlC/skIpI8DAhT4lark=;
	h=To:Subject:From:Message-Id:Date; b=oLanSRzqLMrQ6n++zUAHiartdL3XKWxyf25wO34JqtQhZro8tq1OaBxfGc7ASt5YUFcZk8MNRC9aJu/NOGuVtPzhxcZCpiVWUK4fqpQl+QkMqiYJzlT1kOry1sooLv64RfblL1WilmE3So5KU5H3w0ebPV1tmH1YjkgZ+OR2kzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6JQ9zIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6JQ9zIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF7EC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787810433;
	bh=3sXt115QjU4+VlYcZ8oNlYdQwlC/skIpI8DAhT4lark=;
	h=To:Subject:From:Date:From;
	b=P6JQ9zIrAiFGs4PEKjlIyxQd9/6QW8zUBQXYf/uyPGHL2h9sNKDCbiJ1nU2CeRAdC
	 GB1EIbwyzknHF15uA/9QKuTNK205jaSDlU+QXrQ5R+1LaSlZ5j9SZtisULMt63E7sn
	 4KI+FDiOrEeL0XZ5BaPJoPEW2dgfHSvdpIGdH/FRPir3AMtyQasVZx3pRO1lwgkgPT
	 6ZEDjTppX9gPU2rJtOJbo1dpmVo0/XLxEzg0qeAPEcGOsHu3vHJPuxv9ENpJIojbC+
	 50xh4J6d4d2Xth4tGcSI6EEmlOIJagShKtfdSMDFpljU+AdaLRZNRmY419si2534I6
	 CgWwzAeK59fHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE75C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781043369.3330.6411058554659866633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b836a27e6222f1491b8ae68330e48066d66b5189cabda6284d71ba7843158ff9
Date: Thu, 27 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787810433
