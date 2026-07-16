Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AFF22B8AB
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784229514; cv=none; b=X5m74oAOENAInLvwMAqueXgs+y6U06kaDq/yU/yZLOUU8Hb7MlUnaa2X3/cf2ZY4ooH/UOtq/SpU6UIk+XoQmerU5mrZg0CGSuMQhj46UqEa2q64H+MdQJvurs8o9NOe3Xzm7wD7fuYycH37XWRDmDDZ4Fm/GKCh6Q+BHeeWKS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784229514; c=relaxed/simple;
	bh=DpBXT2AGRdYgl2jw9aw+36xapRfocOl1Xi9IZeWflaw=;
	h=To:Subject:From:Message-Id:Date; b=DxGgea0tMwg/bovNRZmsivu1nxyuGZoGqwYKcMvh6c2KgekMRPQ31TyOm8115oMM5bMslTdl7G34hW+RHRJlm6cpjdajoszKTo/jrRX8xzch64xKjWpYfof2SPGbukjNu78TNgZIr1vAuh+sP+sJsOZ+OckhKFlpV8tbvl06AMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeDwnszm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeDwnszm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0D5C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784229513;
	bh=DpBXT2AGRdYgl2jw9aw+36xapRfocOl1Xi9IZeWflaw=;
	h=To:Subject:From:Date:From;
	b=jeDwnszmvP9HU+lpvNsCK4X/ljtasKOMhktFkySjlFDm5JxfkkpVO4V7WbmMtq3PV
	 6ASLjTPRpnj1RcRd0hiqHqvSBB/spPP86uo/GBRVtrTwEM1Zh+Hn8SoQjmpb6ne4Jm
	 4UUoE0IpbZOZby6iG5hN+wgSJb6k0W9Dn3XySQg9gAImey8rkVnhypS418tKNHA/aO
	 1niObBdjclqsVO6/zFGdJ+xyxigEihhaPAeg4NbS9Z+IpP0HmDT+jBLg+089La6KQK
	 62NE+LI3P+etbYiNSUVjPjU5QMeS1v5BnK+kJUWTumUNHGRDY/6HDwN3OS74buP27R
	 N595anHlhtaJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57CCC44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422951373.23377.13331334574419369348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 457822e1de482752878395660c3c9c428b68bd0c00c447f55cb14a51030b6c4a
Date: Thu, 16 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784229513
