Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C0C24A7C2
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737028554; cv=none; b=dJm631VbP7eaY9tiYIh/PnXDVdcbUf8VvDMa6148e9dym32jZ3FC6KPBQk7/HyUit9WCsGpabXLskhlWejHzVV5QYRn9C+0z3J/uPxDolP6GuR/wruXoTW/YGiwcHYkaPsQPIAOB2mCD+0RiMkmAXRQbTGXp1GDGPfvkqpQMoSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737028554; c=relaxed/simple;
	bh=zGuvg9YcmpJMNpape+9N1ax0FaI6LQbCWoLEIv5fFHE=;
	h=To:Subject:From:Message-Id:Date; b=JDvtrvJvXwRWxI6nMuwIrFa+P8OUHN9HfyPy0v+AWc20kxWIMnRxxGPLDTrSgapEkiA37v0dt2dfdYw5TsdgNlgGX+A1Bsvd/ONAIfv0JKRG+PaiEAg1DUcCQ/5PhuCplwT7P5Kx9EqWNIVO6wM9a11XNhIunI5LboyqAqkBhq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDqtV0Tk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDqtV0Tk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DF7C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737028553;
	bh=zGuvg9YcmpJMNpape+9N1ax0FaI6LQbCWoLEIv5fFHE=;
	h=To:Subject:From:Date:From;
	b=cDqtV0Tk+MeQWhSLd5lWDY6WtwjabDUm5/3t3ctFdzz+YmF5XtDlqv/B/vRahLAYF
	 z1jq75tX8FwTAo7VhCz/IRLJl1sYfgnNq35P03l21+UGLpL8hz/HG8cy0svRodst8M
	 LLxb8o6cqee24xf63LsAQY8ra7c/ZSI/FxfsmYshtPMdIrrxBRF/YhCh4hIYv0YNiM
	 mUKKvvoXp92/IbXM/W5A0LSdjpIb+MwjSTrIFG8/YoU8sF68c459wk7fY2OrsAQIze
	 EFbcYg3+vQSqITBr50sDaivvVQxv5x9b122yTSUA3vGHD+DpSbs9YdqUz/eFyt9iMO
	 RMTvH1x0gVaiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E04C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173702855358.28068.10727112710189413282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642bec291efdb2a363d428c8c3cd44a0635c486dc5bfeceaf83e873a0d19822e
Date: Thu, 16 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737028553
