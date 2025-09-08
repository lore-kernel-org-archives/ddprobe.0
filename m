Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5D42DE71C
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757334594; cv=none; b=X8daIbn5FyUNyAnphDxU00Cj4gwJrShVjsoI4XZrIJFfa3l8bQua3Iz7pWFJZ9x31XwKFCwaP6fczNnn9EobacS2YpSrOixXu/wljPUnjZE7TkYab06PY73KBSn2tZRmWCnKxVccUOjbgCEPF2Jk7QkZrt2Yd69VnTNaNsQTAWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757334594; c=relaxed/simple;
	bh=hy1eNxwLYu9hXH4YbWPFLPir0xHL8DlqBX0tjxWgx78=;
	h=To:Subject:From:Message-Id:Date; b=aFoAg5DLEOxQIMdzPHjP60pCM0ggCESZcPhP+NHU+j7w6DOuY9Tj9WO76BJqcz1otgN/ff2/hRFUtBDmM3qJZl+ZuNQWT99UrC4URLHAzyhfFprABj23u+L8YxBkbRTuyXx4RDrxGXc2bbrP4vIXjNvMBizXj2je+oiggfWVIoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFnTqKCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFnTqKCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47F2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757334593;
	bh=hy1eNxwLYu9hXH4YbWPFLPir0xHL8DlqBX0tjxWgx78=;
	h=To:Subject:From:Date:From;
	b=NFnTqKCl0Ti2BxCQDz2skZLyuOJ+1H1y+azh0pgW+3dlbyTEkcYviC57oZ6L9cWnK
	 xwySfp8Qrqg+NMPpWqQafLsllRUG32Ey6sjnOKOQCrGMG7wk5sGG5uEqGTiSnMR2dQ
	 1mj+R27pRHoAUauY9bwE27aw3IXDok85LshYMJ5EY3mbCRup5zxG4tz+x1uNxa2bia
	 tpUPzqT4DIONZq52eSrouilEvLRHM7YFhKckprRHjS2AiXyBjz6YKFq6bGpugOjhn0
	 zfzgkBOS0fc3hPxpEGLmzzDbHXeITL6WWeHNHtCVd4K1w5Jwx0ZtMXBq08BB/Lj91g
	 lyBhdSA6MiiIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BEDCAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733459358.7223.17598767183187076156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f866bdf821a45df502a2ab38cb3512c9a6c0e11d9cf60aa3f46afe95980ce152
Date: Mon, 08 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757334593
