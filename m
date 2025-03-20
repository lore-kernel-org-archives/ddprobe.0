Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E86421CFEC
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742512794; cv=none; b=DKq8lakM+aJukg/79szzq+4n9aDlArHwfYWqMuuI7XLYCFelrjsziMUCExWoXOnKi3N7bbzbnMurtGvtPYJ0qz6dRFjuIdaPqhgXsTdJnNQ4lyq6ZiEhLiVSh0v12yYBKENi6/8JXc/XdkhF7hfY/dbqOaDbFfEkQCcZb+Mn828=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742512794; c=relaxed/simple;
	bh=HlUK8JZih/J8wm59rnychPiyN1wTyqVeiVMljCzOizc=;
	h=To:Subject:From:Message-Id:Date; b=TpKuWnnui0/FTpuWxQaE+EZg8Sykj3FOysaLhMwshI41lIPyHh/oB/kSfWue19El3aAuNLtad9PdCzwuRb7na/W77wAXIc37XRxpI/BmR+VQg21CW10PQ4LaS2w1pDNxPwEeiGwE7hKF3LWB8Z1uAM5Fm7Zo7pip7OMl52SKF9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cttCGqD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cttCGqD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D93C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742512793;
	bh=HlUK8JZih/J8wm59rnychPiyN1wTyqVeiVMljCzOizc=;
	h=To:Subject:From:Date:From;
	b=cttCGqD+Mu4QZ6tO4sgarEgSceP0hR6NbTfUOueiHkhEl/oyUWROJUoKQvqVY4fBp
	 fZTrUrMOICZAuxMyhKdwJ5McYXaSBVXAQAeBDg9Y7GZxc+0RxjDpzVmfH/J63gnX71
	 QuuAnk7npU141wSMxrU2C26RjJeMYS0dFwlI0VH/psloa/DcNybsDej0jR/ZGdO9cg
	 vLEl5Fb3CoRXrNNyZp59BG7ff67k9UEqld3aTaTdTxY0emHWLQc04m0nWWwhrbK9pG
	 Twz+Odihi01YNCWY9kk/g+KdcA6dkwoTAKSL/ItQN9EiCMcb92fyX8bqomeXBhTmBY
	 T4RpgR3s7ZPXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B435AC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174251279369.27545.6200535725199514543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b98f5508c8ae0be42679c43092ed61e2d3469c0dd46d71cd53a9ec6a3eaa2e5
Date: Thu, 20 Mar 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742512793
