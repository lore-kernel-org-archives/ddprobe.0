Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3260C142E83
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760177994; cv=none; b=HV5gVCgzs/7dO/CLQXnFYniviosOp8GWS9hodQygUYAMs4CNgj2D5Z4+wUlEq8jd5ObyfGmHgCAYFzgyak+ytNxkN3rRtswp+/VmcPaee6uAKqq0pIKKjHzyX/imXG2C4RChc4QKBdOB2WlRC4J+67PRu7gtIRXfxs5NeBh1DrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760177994; c=relaxed/simple;
	bh=ZQAlnU+XpDrFxXnb9Mnj8gTMncMql7EwdAJZIsawhtw=;
	h=To:Subject:From:Message-Id:Date; b=PN6Acp9IR0Bmvp/As/39NkPy6XY9G6MjcJLpx+xXp+/5G4aSBGL1Hi08uf3sHZdscJyPl1Ks6G3BKl4BZA5RJw0V8bv3UGePMEzadp/BhQq5L4lq4TFkq/Etc0gJVRm5gyh2Oh5FyotOet20vB31D7gvktGrQGRI2UtYUIOhdkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKSDohXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKSDohXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2E0C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760177993;
	bh=ZQAlnU+XpDrFxXnb9Mnj8gTMncMql7EwdAJZIsawhtw=;
	h=To:Subject:From:Date:From;
	b=RKSDohXWfo7sCvWpZUue/JFfunqOgdABct7vOCXwGHjn0Gj/xWcwFswdgwIIiEJta
	 kfi7NuG4tXx+4J+BMoHyEwAWrWqkD5TfXTlyp1WqX6GcZF8qtMs+TYTucB3tDd7RGp
	 e4w1FSHbAp/z7ulYbug6LRjnT8dLZTtSlPsj71NLS/D0/PfMHbeVMsL+uGG4oULYTc
	 CZug00HiNQLtjq6ln0VbDabXRq6Qckcc63ZN/tvYTm3TL4q+KskMVOC9exShsllSoV
	 BUNi+eXmPueV1rLHVGPU2u9gwTz8SK2GMwyFd7bODyuiENsDxXuMTmLYQTonUJPKnr
	 xVxUl1qDJ+yDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93881CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017799358.13024.8743876940983418540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529d7bbea0ec19846cb6ec8d95fdf5623b3a9d02d3b9223f4fbf569feda2b39e
Date: Sat, 11 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760177993
