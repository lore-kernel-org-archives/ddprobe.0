Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B0B21CA02
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761515394; cv=none; b=N632tFIVSkUfzT+KmpQIXey7XO0QoP2MBnSFQASJPFY62NNWeIgp4KFR326//pYB0qK8xBG3MnKhBTvhXK3bOKNUz6QDEng306/ZxB0q9eNX3+ZBZ6wcLPQSm+53dZW5nX9ylevz+Mb2QO5bR2x10iplCPED/47McMjhekhspP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761515394; c=relaxed/simple;
	bh=iq1OvlhCpbesM+FwBcug7Pj4pSPLIPwdH1iox/SvhOQ=;
	h=To:Subject:From:Message-Id:Date; b=c9ypdmHRJxAPuLeTHrvKBtxzIdwWtZ4XQjqwR/LlulS/u1oMOVIKrPSeyt8gaT7uS423p4FPf/dWGpJ9TdszhARzZAcLB31pPbNR+j6Yg7imQRbHAQ32BVVa+ArKiMTi3gljjceDjNMAulVUxTh2xZqhw83ZYkvYmaRxW+zBghc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTdC0I4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTdC0I4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6372C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761515393;
	bh=iq1OvlhCpbesM+FwBcug7Pj4pSPLIPwdH1iox/SvhOQ=;
	h=To:Subject:From:Date:From;
	b=HTdC0I4snW2LVyaLeAbdUyXOwcTrCs1kvVClQJthpSOa4E7TdueZGFeVPK/rKapUY
	 8/X5ts36yUDEjSwAu6WfaZRICM9BSQepny8/eLWC0jJDA+6ixsj7FWNP4A1mX9Ev5H
	 7UcjryI9dY/gz/IJkZIhM3dhPXepK1WnfaR2HnXLytWyBxAsM9P+p3G4rIkdGWOGzT
	 NdYmZJXu9w5HFZIn+GIBuSBiixxmvENnvR45kcEW7jESDaZO9e5jtLD7X91yrKUoUc
	 uyfYLmaqsSmNjn8lZjYxUlQjUMQ5i53p0EQIgb+9oKID6WsL8GhVb4QWXrl3Pr3KFQ
	 b2cv/7zKnVoIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F14CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151539357.28851.2660969992141990411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecabd3449cb75d52b145bc6fae45a4ade9836be4e9c0d1dfd1fdaf8b410ae937
Date: Sun, 26 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761515393
