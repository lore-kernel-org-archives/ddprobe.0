Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BF738D
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771400694; cv=none; b=BBb4l8G6DGFFHLjpMxVL5pNw1ZV2w50Xq9j2EuDSfbw8/IzM3rsI+lbiNemuhDyzoriaxxqOEaX6tLGoA/PAGAtRrdGfcuvFzFf5cdKwcSE1ImihvJYbU8ztUhx/IWaEtq6OgNTu7/CwresGBjSW2338ftLiMbcPzN+dnYSdMFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771400694; c=relaxed/simple;
	bh=Ih3W5aSAH96HG+xM/XnSZddVNRrBOgN0S458tv4oTbk=;
	h=To:Subject:From:Message-Id:Date; b=D95tRGjmqzsGiKtlvKur9DfBqaYOXWUSuPwFn9/ziAkxo5ybPixGBbBH6fYJb4QgFwtplRBePKyL2xY6vhV/0O7KFMY50fvt6/punwlT5CbIrk1TxYFT6KP5OHEr9AcmafQrZpk8EcW1r358idxghypuWeyXb/TE5/cu7RxPE3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9s+R6dd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9s+R6dd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD03C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771400693;
	bh=Ih3W5aSAH96HG+xM/XnSZddVNRrBOgN0S458tv4oTbk=;
	h=To:Subject:From:Date:From;
	b=h9s+R6dd8wXymXPQ1aee401tAwkn5oXpB3TALwIpxo7HRtlPor0/2CN7dnAaLYyJd
	 nFHI348ZOWhYygx3uSa1/S4LUFKreicxsFEeszyL/9qtTePLNbqSL6PtRQliKx7JBP
	 7nFjTZETnQtnmDc1YaalM4EY6WP34o0k3F9l9a259v+akfhRFyq7HNOAvq8sixiBMZ
	 Uqkn5iQmS0qRJcv85yLxl2ZdvofST8Tk1kyjDhqz536WcRWMyn3e5C2R4IaiADf0XH
	 0hzI/JhubdyhZjxzXoCxmRtBpHdwEsp7ddUXoIMi+jsedrPBwasU1d12ltzYdEF7l9
	 8H7LOwKqrixwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949ACE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140069359.27679.17740690567126802287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c63739d39cdf3ffb0f7a42757c9d2d20427c6e13d6082cb549bd7a918892d29
Date: Wed, 18 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771400693
