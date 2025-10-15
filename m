Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C15929CE1
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760491794; cv=none; b=P5u4lRbuNTpMrm5HFB6xQHYiEBM5cRtvc5svJFXKCgdqKJe/aiIuOTZAWVUCI4OHio9nX5+o5ADKUVcv0nFxbA5Mg1YS60274ILrE5yQ8NAITpqnMtVenx4w2AZhleHWCTuuRPqC40jxt9atHxVqTGL8hnuroXeX15fhpYjfXSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760491794; c=relaxed/simple;
	bh=GMtx1cJXRAfhydRuwBd5vUlB7aanMycQORNvv61N1CU=;
	h=To:Subject:From:Message-Id:Date; b=vAdtesj85t8cBKrMdEtxcHDQfqWfz6MXw9dGofzqlb/sMvN2zssnS1a6hPXzf5e391rPT3cZKt/rr7R9GdHj19v1U7ISj0GZs31MxUlRO4x5KgjGfmBHteGKXE4rvViotb0akSTSsHZnxSwrOyl5z09FP5xURE6CGFENQo/MeSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUVSwE5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUVSwE5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D1AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760491793;
	bh=GMtx1cJXRAfhydRuwBd5vUlB7aanMycQORNvv61N1CU=;
	h=To:Subject:From:Date:From;
	b=eUVSwE5twxWSFf4CLxUGd38ZPQvBCK731Fd0xkRK0yGWslM+aptU4yIlItXtOKFJY
	 UFFBOjgQTega+5chsEcR11cOQ9BTmT7sG7MG82IUdPLoGQ8DcQUIonQqyx28jJBxb8
	 8UCAibrKhoQNslnjgYKe4MG423m3Q1u91i4na82CHmTDETHdPufHle4TewyqjDxx5z
	 3S0CLgjrpdlQTJz+S8k9QjlCEShH5+YwhJw/j+Y7/tKuGRxk0qVAs8HRmXmi/YKX8+
	 fB7Wi6fq1b9RiUeP0CedHtYnp5P59KqNl/v1CvsX3q+Q3QJsP3h+RVa4q1xuxt3BtZ
	 80gmAe32IP6aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F341CCD184
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049179357.30594.13278601569836805443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be2f97df84a906fae5acab2492a27dce3a5db7d5d4df8275f70b288128f06a7f
Date: Wed, 15 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760491793
