Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522EC3A8FE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789491034; cv=none; b=hTiHnzx4pKdsBypehONCgdfyJ4AGIJLoXmbcO3ZHdMcM524rDL7lH7TP0OmVboEVhQIK6EN+80HTefyxLmDQ+qZlxq0PTU2JSFfalC8cmzbW7AL6jX/lipqif1hmnxoGBzqikR4gucrCuYTHLU2Cmd4dz2wJgHgekKir3bco9j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789491034; c=relaxed/simple;
	bh=cYl3LUswNxwSrh/oS4sONX43tyqwkuWg4T5vuKTZxBY=;
	h=To:Subject:From:Message-Id:Date; b=dhE+UcU+1OxtqlpefYSL8HdU8v7lNa+MLOlLN51QKyZldTxu3y25DPPLKNJCbEheg/Kte8AFuAgISlk/9fhgDxHkCL+t8H6qd2nRWJ2N2fNIhilN3C83LB6hr3OXh9vi+I1B+bUsP/VcWXr8G27eSCTgNLdSU17lNmHKfPr9CO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsweRvxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsweRvxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC448C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789491033;
	bh=cYl3LUswNxwSrh/oS4sONX43tyqwkuWg4T5vuKTZxBY=;
	h=To:Subject:From:Date:From;
	b=WsweRvxW6s977FXTonYgN0Fdl88XcAIS5CbiobA9leYXWYi6zUyFWH3WNODOy2Oma
	 p1EFVHk8qmXUwydfaFTT+Xt5hoc0XgDx9wgqyiL4PXcFSjmw7AT9keJqV/itXY8yAZ
	 XFMx37R2sI3ja649KHwbXLocwVLg7XOrhsIHJffrJmEz7eWC6mFRRk+WMiWbzr8ULd
	 f6BNeFTZvh9Act3IIcUyIixZmaoUFhgs0Ep5nEtDuffITzYPl2r6W15eCOrZpFabhM
	 64ivqIatr05TuN4d+RIKVP5PC2zLSdL93n5t3k/tlUpfeX3tTtaZVwEcQT44gebPl0
	 AyTryifuQB5Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EF6C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949103368.6740.18093231370607798110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80066637dffc4d9dca786183670168c86ef238693ea2ea74d6666085b830972e
Date: Tue, 15 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789491033
