Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F43138DC57
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790365234; cv=none; b=k+KolfstjgMjDx2NjEwANkS2I4OJcs3WcQ2Q0QR9/8f99y2puw3Yl92sPwhehJcdbQVKItaS1ZLdj7a/iiamU3Msqll1Xh6PGTEdcmB3xhLhQ6+bHsD27JyG2akLtOtOhttM7QwwuiGHB+SmLdkGuheXrbqdwyZ+SwLhEwU2I8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790365234; c=relaxed/simple;
	bh=UV1+XiO7ga7IvzdKHKYAqjNs59T1D9MnirvNsDFXrVc=;
	h=To:Subject:From:Message-Id:Date; b=eHM5PwPTc0DJlHQcFQG+B/UzoHmR1h8z8cEQjNnP8+QaHPoUtCjtFw47MjAkDbmuhayTW2kJzGIXIC5teZgdBBTLy8wKdlmZOG6IhcS03ACdi/TMM0RojYRNgcZjaqqS9/9r3wRStueIDrganZAzIIrWYJwRKrhFuRjqVy1azaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxdGM8g6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxdGM8g6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F08C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790365233;
	bh=UV1+XiO7ga7IvzdKHKYAqjNs59T1D9MnirvNsDFXrVc=;
	h=To:Subject:From:Date:From;
	b=pxdGM8g69MsLcGCVzC+4zKsnAwWWdpikvauJdK4oLGybnkD3ZvvDA4tvLMsjq1xFd
	 zEbg6oIZ+slnvKYoKL176AhbAE/0TDM+gYHR0P9igtw92OrMSY5rETUUf2egBd0NX1
	 QSj6+J7qgYfP0GuEVJB7lw+26vOYgBmQ/YBVIGecunhf8WfuWPr1rhX0pQMGOma/OT
	 AcaByuytbRm97eN7t3oFT7pcEnjYzdSmso21aTO0iml7akb/zYKW4cjKnSc2ffASK8
	 mwOuaP3vWK1AjKc9bvBvE3Fc2Tv8aS3daZeWyHh2i540GOmDua/dhkhWdMAGXmYtZz
	 C/bRHoPiIqcsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9103C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036523374.31200.3380562307041944700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d90749a68c4892c7e5d6cb06c3910cecb8d8ee72270d015824c612b57cbed953
Date: Fri, 25 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790365233
