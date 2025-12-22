Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEEA2773E9
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766392434; cv=none; b=CYSed3N8VxjBG4OH24lfL2O3cEQ8IUZFgRXyXB7wgC0l2GDsTJaReBycfQS+Kmp8p1NCrs1GPJFPdYeZ9nyAHZ5mnz2GqVf/7IK8uob+RtBgk4PfOe7EkGCXKiNTX2arvAnaP5UBvWYwX1hyB3nSyI/zuA9sGPUQto8S6MFmiFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766392434; c=relaxed/simple;
	bh=Sz1/dn1XeZDz7iDeIT1UdY9AaxhHe6u4miqaKFDf/Nc=;
	h=To:Subject:From:Message-Id:Date; b=rBb9ozYF54RXIbkm0xyF3QkeM1k08AJ0zcIcOw7B8vmmebN+h7z70cfto+h33dwOmT/TwAzJH5sPHFA9zz8V/SH6mJuiJ6dU1E8vEZzRixYkPRbYi6ETB7bi4tZz4H//P8KDBsx9MOIMuRzqmwQ0cosnsk5rLZhLUZSgGV1e83c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4pTzcqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4pTzcqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0166C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766392433;
	bh=Sz1/dn1XeZDz7iDeIT1UdY9AaxhHe6u4miqaKFDf/Nc=;
	h=To:Subject:From:Date:From;
	b=A4pTzcqKrerks/k/pU7loQjqO1g0vHaCeL/bZn8ax/PHiGd0PUrGOQ8KkjW0nX1wu
	 PVvXRs8ysN9QEE44PNO5SkImy4bER4QfbTpYyV7Nwp4Uro/v4onekkF9FsYNqu+ziV
	 JiXKSZnX81JsHiZ7bH/1yvn6o+tIVvtXbUITrbj+fZR70kQo1Bn+35WXOp4X7c7GKW
	 Epz0Jz7s3Aj/gqC6fzhIxA7Zq8hjnCj3R4YzOA0RJ7vSV4a9bUy+OebhdOdTx2UZzw
	 k7jNoMZQ6Odq1bJzbh4M+X7AxOI/K3Q402K8ete2HHD5L65vNo//exVrl5YuUb1Dvu
	 rKGhkyfhFztDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91251E6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639243358.15667.16819939491401054338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9a0acbc093a8a1f40764f0da26e28469e823858fd7f4611accc78e7417a223
Date: Mon, 22 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766392433
