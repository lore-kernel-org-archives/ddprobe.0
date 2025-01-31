Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8345828EC
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 09:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738314954; cv=none; b=VM5TFWXghexkvX1z7X+5eyjkepNZlb5IooJcFeaPsfwczvN3AZ9swjbGIwiDBZUm0n9Ss+IVbcna3lHmJNKwcsp3EpDBtdS+shMvyOYsB8ZtgCT974lwQWB11kAjFN/oL3bGgQX0fdtCtTR5uqGFeMPawks2SdPqX4e2HwY4ObQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738314954; c=relaxed/simple;
	bh=EGgPi8j2v9GJbzRBvDxrFCL92CYgluDOTZt+9uEobTE=;
	h=To:Subject:From:Message-Id:Date; b=WYUnH5pmYv8nlpKN7SBedV+AAk8cu4Bx1FoJh1mElVmW2B8ct9n8HKYbn300MbT42/CT9sPkeRiMgQY9mHOm1Js/c2ar6QSUYsV8O9T5ka+MzEKDyjvXo2BaNFib+a1DdUtymJ7M/WMl4yVztSCyYlpJCUSyKtZsBg24HwYhrm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOUqJupw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOUqJupw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAED0C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738314953;
	bh=EGgPi8j2v9GJbzRBvDxrFCL92CYgluDOTZt+9uEobTE=;
	h=To:Subject:From:Date:From;
	b=bOUqJupw/Bj39vtlEw0nYMFKpKIEw+rAphVUkyjPBucaLukB8gnzy0p4YpVN/d3j5
	 0nBVp5FldaW15Vi+UsIvuxRb3aPC+dFoLHDCCst51z+rZB2z5VBl0YqnSOBAUNn7hE
	 t38mGMedWUKaAJ9kTlT02ARlLH0GCJdlkXQ4qQds1H1z6cQSPukUqa7yibktu2h1nZ
	 zMnvLjmpSFF7T8vVDC9PvgBgts4nUBDT+LrWY9YRXiixElAId3/zWZRvmGvA9X61Jk
	 1CVxtBAWLMF3StvBOp9JFG5cRrT0eDA04fba82aPYj+7o4p+7x+SzA3L4kp6/PRiEH
	 7DQs2P6t4YMrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD48C0218D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173831495368.15624.16698875742857107267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e778cfd8b16e460ef23858204fd6eb604ad83e206827a9cd4716a724e06e9362
Date: Fri, 31 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738314953
