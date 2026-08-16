Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4285B282F30
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786881034; cv=none; b=ZwpxIqpn3vUcxBr2VbQwPeP5bXEWoo8RSt/fiiLkE0enFuIJCuWSE7W3VpRSR34YAdoz/1DLfNIIT14E75mx3565O0/cWekOkV4vhPbdDegxlDF/mmvMJPxyAOpTyqEplzEWs+v8FmXal05k7b7nUFRPqCKGdjeCvM3dVxHqKJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786881034; c=relaxed/simple;
	bh=lEwNa9sXc2HNqDkj2wx2MGzlj/ijxzc6qOuhZeQL8zM=;
	h=To:Subject:From:Message-Id:Date; b=nsKKAmDFSshmk2BOk0jhHMsWdcz0XqwttsOzVFwtxn5D0WxNuMGRjsZ7XuLjRuODkDoh+1lcmH62gj0kZ4w0/RcGyc0q81I5dQuijP7g2ML0V+ylA/oRSCi2VCcIO++c+PVOHy+LFTLwwAMtRgrsupCN3R1W0MHZ8GjinjIJS5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0cuz9Ep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0cuz9Ep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DE7C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786881033;
	bh=lEwNa9sXc2HNqDkj2wx2MGzlj/ijxzc6qOuhZeQL8zM=;
	h=To:Subject:From:Date:From;
	b=e0cuz9EpyECsmuv0JXD1Gfr1LvOuaF3RpLJjKLwsYT0gRANN0vwQE3UiWZQuBLGJY
	 mty+NYhKPny9nhQmYH1lA7D2aoSHiQWkTpCaKxXZMYUEEyXyccLrUijHXPJaqeHKjw
	 sTE8USloZY/GCm0MSOhWksKqOHogxy9Bkci1ieG26E21pCGrx1N9oqKRemID5v1GOM
	 f+J1F85Ruqnsug5pPY2HnbKXdfHkwB3NMDhNVpCUg+birmEsmF1GFCOieyiiN4ULKa
	 IEIE3R9sbMHGvv7XJjdXRIiuf4lhB4FxX8BhgJmlkWVQuFBLVOCIROqduY9Btjdvfj
	 0A2xBnyCmg/FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC201C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688103369.9270.8983351457043318009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033df55ab45ec31362baa86c0c7499f1af4ea9d1480e293ea93f2e638e04a9db
Date: Sun, 16 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786881033
