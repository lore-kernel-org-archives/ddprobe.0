Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385A8381E89
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783015114; cv=none; b=NcWD2hK3XpWAFEKanj7i4SP/q7ILtbXd1svwS+0abnuMr2itp51DGb5nGLdPztBkiVGlqVAUCWo2AUixFdWB8RZQTB/3jhmuhtE32rmonQqYUKBwj2SrJFwO3Y4VGALYWdrUgXUSWzld3hXY0JFfZ3QBNSc8hNc/k8E756yUyaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783015114; c=relaxed/simple;
	bh=IUPBZt/46WPvaLCPhqnKJVQ93SFGnbrRi5W9mbdfB8g=;
	h=To:Subject:From:Message-Id:Date; b=dNmfhxC36hWI052aXMAw18z/FbcPDBTiKEKRGHGu4FUf8CtnlWx0MFPIAQ97T8DyY/6/ca2mtx5mAp0nMe/rY5TtZX1A2pYqKAZwHp3kVLwm0yjB51Tbqn1U/rQObgHshaJABn+9JqkYrpoHNdAgDLb3mwv1AAwdo57rRjOEsHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDh0YQy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDh0YQy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB18BC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783015113;
	bh=IUPBZt/46WPvaLCPhqnKJVQ93SFGnbrRi5W9mbdfB8g=;
	h=To:Subject:From:Date:From;
	b=TDh0YQy5eKcjjaPrrqhV7t5hvkR2bObfG0nkVu+u0//HPPG2AXUIcHrYbfAWtR2Q/
	 v3eJMZ0o5doEGzLBoneL+uEKHbpNbYFY6ZijEyXYiCb/XnhGaJcGO8NdEO/dELGjqP
	 T00LcJ8hudiAAHk9jAgOljkwBIYVR3qVWuo808BObvtvSvrSk9F+GUXbNcU1ZBNbSW
	 sW0XwjtjK45ECdLibNcFMe49g1+FZ68GgoRwFlmo4IcV5ZH6ju/XhY2N6IUhaaidFO
	 94eZjUjqzVZ4JLtKSuv3vmBFhoz4sS69V4lEr9+h48zYkLQBhTF3qHyuSYHIQsCVEM
	 DR0LHQ1AsAF2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98E0C43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301511368.9069.6272110629533141433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51525194157aee1b6b754bcda0db5bf83d374db341e6a2b3a28164e7ef334c81
Date: Thu, 02 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783015113
