Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF0763AE
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718684963; cv=none; b=H/izRFGWtjEAStuR1mZYBMczJK95hfGPzUESY2aGALkQ4F81xNwUsowXXDXNGzdXq/IVU7F/3CFvLaJSUf9tBj83ghDMjZuOKM/j658tbQQeQy0PTr3ZWXjK4qyFYLGCo5VRYdW8itiStx9tkrWgFcjBlJZ8u67iG/JjA+D2tBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718684963; c=relaxed/simple;
	bh=lfiBNaYQOou2NosiNb5VdaGU5VeVZUlvyVRrRCZIkN8=;
	h=To:Subject:From:Message-Id:Date; b=WDPL2W/GlatpOAlKqSsFIoFCYtB0OWUzhXKnY9G5Z/Z653X99vVTAbV+IHr8IOkmchnmXQ5F++HUG49dYb3Y1CRQRY19sPNAjrcdzmWjJV5yyGsxMczouNCTN0J1ujbiX+mFyxMwKCZVhhGuGxFEFtzrXqDymmTGnH9VL5ZhvCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIi0DMwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIi0DMwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D358AC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718684962;
	bh=lfiBNaYQOou2NosiNb5VdaGU5VeVZUlvyVRrRCZIkN8=;
	h=To:Subject:From:Date:From;
	b=JIi0DMwyYOfLW38wqIghIHMdB1LXdszM1Beh6DEjWUR2SVBKN08bH+QXvBkIuctIK
	 gpcVOvPJ4OcnfXaCETTgg9ijQfxXgJzg+1t2IGfQMcKbCV0UbnF8px6zxsVqzna4g8
	 4q/sI8hyLVv6+38Br0iqfJah0+1vIIuBZ5D2r6v6lIolYnLOE64OhsrOAsxf/GQyAL
	 fA+1wreyDFvtYhlkoDARgSKqcnmPB+PpTabez+J/LtHRAM5L+W029lc9X77yQzfRoz
	 7AvR8GrhZFakSv8W1BZBGzKdkEUJ+PTlJcNEsa4C0sI9cck93Or3imUfcCksAV9J6b
	 5b0yfYNM7UEtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C299CC2BA18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171868496278.17294.1727690864006673898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5526073381b26e068bc9df5c228ac2b90d4e7665849db62b87fef7d86dfc5ce
Date: Tue, 18 Jun 2024 04:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718684962
