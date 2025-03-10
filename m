Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F1A79C4
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741567734; cv=none; b=uSM62i/daH5MabDbl2NQi2YOiT6BWtDaHiApfpqmzQxQEbF/5Ey+7Caq1G/SCgO9Sq04XjRQ8VJyAxGs2EkYl+jk+KYj55Tw6GAcmnY6L2RhL7fuFaNDzSQx8hjdIVIm+SFwGzfPkRWFRfqe5oe4VinPzhuvGOU8BrnDQvQXCfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741567734; c=relaxed/simple;
	bh=FVo47GmR6G9F+2XFfgb0BRLMvnjmDM8Oab96sZISp1c=;
	h=To:Subject:From:Message-Id:Date; b=n1GmUKLIaD922CssdopQE1M2+tWDUCUGP7uWDG4QqkwQMr96uPlhojQJxUbqFyEaYe+gnfFEfyNkLtRgOWnadPW0Wf/cuI7BHxS7DOKUIGT9Ujrb78paGx/ktsQmyoaA94CdCBQ1vrQbtijnodTAXerrV9foxycpSVFcjsvIC/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjHgzecQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjHgzecQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC6DC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741567733;
	bh=FVo47GmR6G9F+2XFfgb0BRLMvnjmDM8Oab96sZISp1c=;
	h=To:Subject:From:Date:From;
	b=tjHgzecQ60RmfaxIwcqEddYYP3zdAs8b2DUkvXTrR95dzIwnAjjiPW5wK3AFzkMls
	 jCMPrByaZiIULX9crfafHmbMMXaLFxfAlWTmU/kfWoNRURjdx1i9z57S+7s4vwEprQ
	 72FzEbQIUnXmhmipgfOQiatGsiUGzR9lxNiSdgg+amAYttvmlZ6TU9jII4Ljf973yC
	 kmGxvzyb8X9Nj39R6QJzh0MswjS1t6XTGPuO+7+0Ynp9d1XSuos3hqz4OVq7oNuNjD
	 NT8EZFInTtEETkERLUiGke1PvdWvViCwwyC4dJFf+zUDAUEMxmCgIctoc235fr/s20
	 u5TduU+Y3PMFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98410C28B28
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174156773358.12274.8697172568403882048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83fdd7ff012dbfb56e7b0a300c316a2a458ab5769ec5dd87b8aedc5a36157b23
Date: Mon, 10 Mar 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741567733
