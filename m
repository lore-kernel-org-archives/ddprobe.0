Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A869184529
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726062354; cv=none; b=fhhbYTQjIX7P6v5U3e3zDzv6mqyNt609ePgH8TersLwREZYFFMlAsRnFFoFkJHskKCMU7qJHvlS1GINjdfiy87QctyCnsPJEBD5/4DtJc6tChO/apJQAW8eLa5/4EXPQitQ27rLAXbQvzN0AjDMy9UIe9Av2ptxKhwHi8l57zrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726062354; c=relaxed/simple;
	bh=KzOpzDMRzDzR13IcuvgvVAiPFMAGZ0hYkGPm9MyXpnw=;
	h=To:Subject:From:Message-Id:Date; b=AaF9XXiM1Qy4JzX7Otj2yVgZzCws10C2iDDDVQvKJjO8xbzzIB/VtykTXEpjxQi95d4z4pRUH9qLpHmN7awzJ0DNdZuXLKNq1tv7T354JRZhn+xKsfcyF3pF6QXk7qiKlBHjcxC2V8Z9xaaCww01E8IzoOpuSsOW3HAfPzGDS9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhoyUcy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhoyUcy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7730C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726062353;
	bh=KzOpzDMRzDzR13IcuvgvVAiPFMAGZ0hYkGPm9MyXpnw=;
	h=To:Subject:From:Date:From;
	b=IhoyUcy5yWUtSbnqo3Bymk+UYlffw/Jm5kfGCGkv8BUZ4ZCrgjnCeI8VRdpuwi0ag
	 GL+OYdnhFqBsGAiXlkndzQV9XqV30mI9xox0qrjir1TM9oXXeQh/niUiKXqN6xiPHm
	 RE4xw1zzbtlB9AlrTc1VhcO6QFah93QSRqTAfYH0FO2NHW7fSqQ1pTHB1+q+LsP0Ff
	 5Ulmj4tEGZeH/iM7kSY4hucwJ3EkMSPQLnUCmi/vaKKwhUYhvbTuxjZQe7RPHHs01p
	 yGmdHM5edRddcijRD3WOzlFafWDLMy4/sr4Lihfpol8A9+VV5nxgNMXjUGmRjRRucO
	 gyJM0tOu6byqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9797CEE49A5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172606235358.18696.10306047150230112237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374aff7c564483db4bfa5fdd9f73ae0b965c5fd807b2856f4d84052b79d2375c
Date: Wed, 11 Sep 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726062353
