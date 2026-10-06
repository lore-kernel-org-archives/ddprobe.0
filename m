Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54929317144
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791273034; cv=none; b=kgM/MR6cv44ow1Cc5AtZt8bkUgAmYA8lXeujXERZvB4QUyREGP4US0Prfrj8o7yffmWpLivJUsrEteHknW6mpXisY+ME+C84UfJtsIQbPB7P9Pq/H5s+7XYRw3jYA1BMPzztu4sPGETzd3VTeC0Lwx77o8YjIL66dj6HtSDvz0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791273034; c=relaxed/simple;
	bh=ym7L8wq2uTRHE5PecHb+bfnybnOftR7gW/kE35hOMpA=;
	h=To:Subject:From:Message-Id:Date; b=Vd5r2kzd/ETKviHFNKd9MfQQmbtumXJSp4n805lwuYGmC4f7GdHuZbiMdjkQmWjxeuYsvf+/FcsXDlSKY7Kjeauuo+t9yq5vfOpgSH2yNBgZaNq9tDAJgsKv5WQBIA0wNo9v+ngRyJR5B6miYcVxy503fm24RB6eBvuO5tUYEzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wel+dLDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wel+dLDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE49AC4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791273033;
	bh=ym7L8wq2uTRHE5PecHb+bfnybnOftR7gW/kE35hOMpA=;
	h=To:Subject:From:Date:From;
	b=Wel+dLDDUtjzhX0SWZdht9yn45QE7Mor9XYtJq5JD76ZnlioMf67x/zdIP0I95zgd
	 K3jrDdKi6I2XMoT/pg5lRYiqCbX5VOLCBQtSuRk8cq6W6wM8OgO420RBLrY9DA34UU
	 vM39ICO3N+ZYEGZi/Z71s6lxY/Ct8E28uj8eX0JUC8Y13RKXmQVFs0tPv/qkuyoUBr
	 jwRQadfzNcPco31CXcZJa1oRWdYaWyWuuoT/n1KOp/SzmC5fuS7JkgImzvzZABsDF3
	 1P0TY8/Qto2kFXdYHpR1yoGRCJvHBLXlXDPK2UQEkeSN8laDYFVx6DQh5DkgplqMIF
	 cY71D9FPEPINQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95BCCA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127303368.27887.8228094181604862936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff08cb5fe6de0b3cc740f5c98cdc302df5fa6604513ea4ad055bada87c723417
Date: Tue, 06 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791273033
