Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D538E7C0A0
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710838096; cv=none; b=lbUNZBPSqudYIH1PM9BrkE0nifyeOamAx0qc8/V/W8+rDqm2d9IjGmez08tA62BL7PnjSR0hmRD6y8ruMEB2zVsmOVm3d7JKdOQrOvv1/m4d867RnlXeAV9ZT85rzyCee3yCiOsrsGAyQBQn6tFsiNLzspFiXfoL2EhuH79uXoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710838096; c=relaxed/simple;
	bh=cTwR010TvWSBbEuIJiphMUINLLAAZbGlS+hLaso4opA=;
	h=To:Subject:From:Message-Id:Date; b=bQi12XZ8LSHAYfYOmNpWl9NEhv4z5GfCStDb5JpEBitniupiV6JG5VZ6bk7FVLn4oTwVTxJgNeJe33yVDuj8VvfDPwjV7ynpube3EqdJ9gi26/dooN04kEInlwlYFcBwzCT6O8kVYzAOR7NzPq4DgzhraypUBMwc2ExhNHoVjKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lD2OiXAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lD2OiXAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D9F6C433F1
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710838096;
	bh=cTwR010TvWSBbEuIJiphMUINLLAAZbGlS+hLaso4opA=;
	h=To:Subject:From:Date:From;
	b=lD2OiXAQjVN+M+tuhgK4RPOKxjewqy5mOt3FdkpW1DLzme42hMmw5c7BCDtCHGdO2
	 OZ8mIfnJU682OTgac1gQF9IQzGtEZOwpEglf0rYqDkidjXBXqaaXyJI+R1ztW5adGl
	 pzvIxYKd/8FVxszGhkxhHCLWAp8Vj3GTXaUDUOlWFwgBMgERtHtka/aET9aCI+sJ9k
	 dsqHg7GbM/S9YxlNW631l2fZtH1OtsSfYqimy3yLgdYCOX9t/SIoBJ8DeP36vUrtbg
	 I5klDlIrocq0O0w3kyDo0cUJsDCCWJjZktp/HZcMuNkDazmCMtJbBlhHCizJy13Fx4
	 TXJRFTobFeJgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC0DC54E5D
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171083809637.5948.6806962845202782194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7dc289a7e87692d946137dd970e1b7bafcf7fd30a2e3d41e8dcf0b462d9976
Date: Tue, 19 Mar 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710838096
