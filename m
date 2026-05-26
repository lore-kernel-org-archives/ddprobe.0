Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C271AAE28
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779761554; cv=none; b=PqdKyQ+nl2gA2IQoK/WD7VTKARZ7grDuj+8Q9yx5uF8E/JjEDWHeRYt5kyvtBuFK8E8/OzHgKKUpkdzXVQQ9n6s4CAKMO9DhgWrOY/lqYhbMIwp0bBHpKW3YKJ4RKtaHhGXkd5h6yV+WEBnq45qAEFt0BiYX2MHk3BoBfBVQFMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779761554; c=relaxed/simple;
	bh=38mxXtwMgxUsKE5w1BjBKM9vlzPrCrGCKv8NBr07KtU=;
	h=To:Subject:From:Message-Id:Date; b=WLni+1qSdVU6xtan8eL6FZ8V5xnQ/rQ60jYBRJexlCAVvIoNxFE+Kt232NnRqXWGs/v3sEmdYxdeqNomgxZLYe1gixqdnjFYfy4zuIZD66rQ528i1shEjz9/qodvBgV+BNw01Yq0HTRgba/VsoheMZwIaQtAs8ZvZ0Q2tpHPZks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFY27LS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFY27LS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C861EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779761553;
	bh=38mxXtwMgxUsKE5w1BjBKM9vlzPrCrGCKv8NBr07KtU=;
	h=To:Subject:From:Date:From;
	b=lFY27LS5RM6Usx33VChaTkhCh7TUNP++60D0aq41RlmL3FOp4m0ti+QQqvpVTxhee
	 MFxaVHSHQwg9VIjzwByyq/mykNBREwCIWjpJAajWLZofaRC/0PbOudfKTQPofzkaaw
	 gaz7CLS/fGf9UCzeRtK+ac8ccx4MaDgruCJBrtJrraVWB+7VbHK2SKzUc8uCdx9v4V
	 fMaAhZoRvIi/gc+MjRwMWrlAx3KCCbnmSQqayqIDYtDfVAkt4utnuq/VqnC2mVIMGp
	 gAsk2SkoFemdRCluU/44Ro94Ww2td4dmT4Os7V/5HTy8ramWHKJ33aw0PGckz8oHNL
	 02Fak07aACjeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7EFCD5BC9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976155368.26931.3914948980964340579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dba46084b30cd59b177977892220f1917ebfe9cdf0b3c1f4358eefad2e3b418
Date: Tue, 26 May 2026 02:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779761553
