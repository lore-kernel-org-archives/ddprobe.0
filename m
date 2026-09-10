Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E6B248896
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789034434; cv=none; b=XKEBEaSx/I7rJ9lQ1ZE7AAfMifxYw3N8vk0a61Z6cS8w6+WjgChLle3UsVS10YGIZdt8Apct++U4Cfnx+WGYCLhrxKp3Sa5IOkPhUUarzlvUpJnTqctieV4WX58yf7b0MRct4LM4V3OHThosTlYE+AEEhJv8n4FrpCatZUijubs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789034434; c=relaxed/simple;
	bh=8kd2MVvxXVKK0kGwgFz6IgH5ihWKa3967fo1tBa18Uw=;
	h=To:Subject:From:Message-Id:Date; b=TdAAcUrwz0CcR9zjTMX3pNplPMl+h6DjGrsRd+j1oJVjVGXwGNkcVAGelfYwmlkq1q2dvoXxuXUB4I/oQw9JNmtkq4+ZYLKoycl4ZroY2ek5tOYJKVa0z1FlXbags/quOiJ6c1kBe4u29BwVfENvsDrr58J1QGe0hOPR4jdUzMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryEmiltZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryEmiltZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88ADC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789034433;
	bh=8kd2MVvxXVKK0kGwgFz6IgH5ihWKa3967fo1tBa18Uw=;
	h=To:Subject:From:Date:From;
	b=ryEmiltZfq9gUtfX7H/gDRFhvRAzeyy60T097uwgnD1swQzssxNN4Z6dBmINV4Iju
	 0w9c1bRVYjh+zKytLStdT63zFoqszqdUcGlHFLAE+DQpZBSL7NacYfKr/pi2nYQTx6
	 ck4kutr9T45Vq/vqQ5xLaqg2BKxRT29InLUpi5VwJz1XPMN347OXEVsvJl+Q/dJAcM
	 1SEzR1YcKlPfQyrm0X5vxVZNW4kfMca0Adi1HGzVSXf/pqwHSsYtNeGYodVeZi4Jnc
	 8mpIDElwaFuVSf5zL5MYR/eKmdKaNIkhGF/iiEegX0sQjPejEJuGchGVj0m/b88Avc
	 fbgPQRoIqzT2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC527C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903443369.16865.16563012222509175900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53b6a553262ed222666780a3d6cc785287bfcc41b32b39948037a8b6863a9cd
Date: Thu, 10 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789034433
