Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CBF5464C
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786326034; cv=none; b=J6TTSkFII0CEERF6r8nLlGhIrpKHLasovVV7520xm0lVf0lerh20uoeJBHIeCRsOAOdWagiq8MLy+icYWrc6wqDDGFXNy5BFfVMljxGL2mfKX+sQBXOqDS/6ufEj1KmsvGp45EwpRm6ZzO5KWzOcF3RhZOdRMo4OK4s8ZORv0gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786326034; c=relaxed/simple;
	bh=YjHdzVE8ELsdCLj/PH9kYsOX0Oy+5u7BstC8+nC2nog=;
	h=To:Subject:From:Message-Id:Date; b=f9cUaoPtdliBJ1mP6kvMkzG4eBCGu+15jUMSkxEuKsAtYrbS0A4f3keUMHmtH/SqdxbslKEoCnKA0PV6aLmQStnlEpvEz0wFttE6hnjwxPoD4ba15EUBrOLf5XNgLaMzWlSegOjC56Nad8y7J94hMuVxIyQfUCMit23NPCfFlFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIqjU/ty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIqjU/ty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6429C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786326033;
	bh=YjHdzVE8ELsdCLj/PH9kYsOX0Oy+5u7BstC8+nC2nog=;
	h=To:Subject:From:Date:From;
	b=MIqjU/tyLW9NS8EBzi0qava5zU21SL958w+TXcby/KTUKhX7cf+W2TQB9sMS9DfV6
	 7eHQHfHRePJ1GPWEL9OqTXw+o3qhzW32KUL+lF5IyzNl8MuxcBUP33el/hArFWInIG
	 TJ+lNeM8ZVgWBgJ/HMIyYpyvAUxXKxQ3Inbra6sm7h0jtw46LQHmBcxKyWHPWaRJI3
	 eQe0WCjv38ZkCpdZkjO/AUxehO7s1FGSy8mz/FB5YrND0vo9fFNI/SnGwgLb/mxLAj
	 2dTKMEMUA2LPuvKiBe5iyf1l0TmYes4JQiWY5aRdHjpPWx3lDI8YLPYG/J68Vs6AFP
	 O3CohKmhdjJgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E4DC5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632603368.14076.2471476043410279784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97e5292f48b72bce976c5862ed41e6dbf00220dd98c146c7dfe9c6ad69c7a31
Date: Mon, 10 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786326033
