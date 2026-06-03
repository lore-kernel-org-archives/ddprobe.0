Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3189744DB6D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780481674; cv=none; b=Mg5Bdvo3eXdAAlwxwTOVMR1qtvnS0vVD9PKfY6G+EfJnn40b5he5ZMba95twXOsRn7EMJ5V4VUxJecbl8rfCwzhRqY6wWYnQa+zr3lSl7figOfARlAZgn7pojxRJ5Oauug9MYQcOVfXvBoW4HBT2DljtWF5XicstOJd/3/nafQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780481674; c=relaxed/simple;
	bh=K72WRYZdf6AbmEMgue6rpQYJEl5YM0jxlKvwkviav9w=;
	h=To:Subject:From:Message-Id:Date; b=NcgPu1aKecoTivMeAhv/bOudgJNuxRQONt4N4f30fyDQz0jqNNd2unwbbPcyWkSmnIKfQ0+4tKH8M5OP3zKcT6xs0TiLGjKzT243pNd0InWWKCOjMpamtQHGLgn5xezCyFp4/i/ELL273GaVmlyO/VH3BJnkEieBuzB8+XA2rZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aj90H7ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aj90H7ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E2CC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780481673;
	bh=K72WRYZdf6AbmEMgue6rpQYJEl5YM0jxlKvwkviav9w=;
	h=To:Subject:From:Date:From;
	b=Aj90H7aekTQrhsVsUFzOJJzMwjrJA1MB+GvON83vjLgb9wwzp6vOLBU6nNZvuxWLa
	 7/hWlubN3hJ74qINEWmH7kiZd6m7guz4i3ZoT48/ZC1BzG2ZmsfcDG10GCwGZuyJAS
	 q+HwOfIsJjXFMK0se+tAaZOzuhPFEtXx6O9Mr1Nx3igiGRqQqEXk2ytu+YsvfoHwxf
	 y+aQbm1Rx9CCJt/gK4yUwsHQrVgHIgT6LpGEjKBxiJ5IB4Gq1pE6WzU7CIk5ckarrs
	 WyZXbGBaWPG8UW0YJiqvaQ6iq5RfM6STkEM0ZeIfAFUflxcmlh8yD2dXKqpuyq/yLo
	 z1yRGSihiYhWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B264DCD6E64
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048167368.343.424660174484175707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ad8e3da32238cda47709acda79bf6902cf33aef35c05283f254f1e9559896f
Date: Wed, 03 Jun 2026 10:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780481673
