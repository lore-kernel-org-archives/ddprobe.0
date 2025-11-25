Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C153A523A
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764099173; cv=none; b=ZiXn9EjFJa3GfTNKdzYHUo7YiLM/tTVU0yvzqvYIbkwC+3eAXGk9s8nA5XlDQvdxFMkfp3yANo6ef33e8DJ73AVO64tsQRa7VUHGHDXh9ydLjVhCl4kTfMMkw0THghgWVCdJsddy0gU/P3zNrwoay+HYSfM1nU7IBukuyo51Urc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764099173; c=relaxed/simple;
	bh=nstCmbK9vABz0x9cO/Az3CNEH1VIkKef/IJRKFJM2Dw=;
	h=To:Subject:From:Message-Id:Date; b=buqPA4fywwUeDnUGzVvXgfSz+WmpS7LCoVXNX47+8w6GScDzoV07OeMK2Q4ybxJDRTLzq/2zxoTN/4XQTol5nMbMkOiS8NA9If0+HsaWuszMXK7+IJ+7Q/yg41rW37DLqVgmKAuus+5M7esmy8wjn2pzm4hAlGqSxnqgrVxwoik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUBleqYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUBleqYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE8FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764099173;
	bh=nstCmbK9vABz0x9cO/Az3CNEH1VIkKef/IJRKFJM2Dw=;
	h=To:Subject:From:Date:From;
	b=nUBleqYmzo9nnpZcepLq+ZIDnCFZGZdRXyd4aRFIhvz3uphA0ArHeINfzFaDBgces
	 3my8meBxWg98MGBTDyRA4MBv4q/4teQ7H4pmLqeGEr7kCeXyRaXEK/yy9PiAsYThhp
	 Zz9IWerpYufvqu9rmuPr+6D7Pz/a5nZEl2FG0w+KpEuObtgHIsqB02ZZgiRlugUmHJ
	 F3VCET7EXLpuW+RBNcv9KmyfikzHDb/t+4WmNZQ2l5rmjAEWmVCU54+SEGc4QfYT6I
	 40Q72YmcabXiH1Q6ncNoEgsE0PAUY85gZjvq/9wMJO8mZ+T4LoTjBCj9xXMBtf41pt
	 3W1seRF03+e+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F2BD0EE14
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409917358.1586.16433256902297635561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a1349fbd286873c00a249bef78b686eaab16f947512352d6c6cc0221d9352aa
Date: Tue, 25 Nov 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764099173
