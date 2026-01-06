Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7A32AD16
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767664434; cv=none; b=VImc0VrLxYLeU4tP8piVqoT1DPjnrJNaVOUaJeWnxlyJeQwLYFjPnuf/XGupPgVZBCuK15blsR1bC8BjEG2HWKqA/ydmEoKfpypItBHhCzBt02ftOmC07U682/pcmLLfqRBO4b3ejqwVuu7X8QG/37lAW6Fb4j/wMRC4bdQnFdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767664434; c=relaxed/simple;
	bh=vLc007TE+dSydcqgGznqHuXxRPUn02VMbnk9cscsRcg=;
	h=To:Subject:From:Message-Id:Date; b=JQd9t5EJk7cVg8yc/OUU54Pd9L2rS7f/Pyi6r21AGsOmRYyY/YqHJln7ihn3tly1JeoL8V2HWuT+0NF0iJcFRbtVnznYP3+8By3VuUhsXlRaa9JLtwS1Y7zE4/gGM2qgUPcgMTlPMD9FrAxmbOgugX5cm2kBFioTUzMqL75eyEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5iqq5eE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5iqq5eE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ED5C116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767664433;
	bh=vLc007TE+dSydcqgGznqHuXxRPUn02VMbnk9cscsRcg=;
	h=To:Subject:From:Date:From;
	b=W5iqq5eEUmwaXu81c+xepGHB/6uV4ihSNy4OHchMCGvTAcbPrxQTH6Qh0PbnBOwMM
	 XNXoaqL05r7oNx8Z9eXaOtnIjk48844P5j1L+lDja3QKG6KbF257PQ0CoJ151RKryx
	 B5dIKc36pHiF/PXo7LvhQPbFAfF6WiWfLWpgehZH2oPrbU+diNuQVgff/CkJ6EZzp8
	 It9+I1NzKnvCdECTvi0LFHlJciKd7Wca/M6ftGY49hZA0U5/LDFxj0afg19aA/69bl
	 soN1bazdpB5wdWnMl8XjPnPNDdmCKkzdma/00fk5bDs1qtZof+Jgrm3dSx9howDEmu
	 lY5k/SOmIksLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D62CD042C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766443357.12504.16290055425374930910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7015c9f3536c9344e9e6b26f04148086ae52f0da6dbcbb2aef6c412f8739d2f5
Date: Tue, 06 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767664433
