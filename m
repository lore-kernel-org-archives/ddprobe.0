Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8322DCBF4
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772836493; cv=none; b=pxuF6bTUdRTdeMVxD2A2ySUyU8vGMzeN5shRWc5gAVGDzRvn6mmviXchINhrQ9C+WwD3xEST12DFK7i6VByzjJII3YPhprQ17p5jxGQXUS6uvlw9Lz47F4IdiYxTFAR2uGL3XZ8m7EiEYNg7pZpMAKoeiqVYPwEjoeXhYrRHDo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772836493; c=relaxed/simple;
	bh=hh54FgiPZQrEpI1+8HIsOca0O8GesESFk8Lz31dLorI=;
	h=To:Subject:From:Message-Id:Date; b=ufqxs6dop4wKkMM8RcMpaV94mWt4+woHJy0ChgmEorsnUtf75qQCiPcycUr6pvbgZnkKfsu44+mu6x55OJMtdIQFo0krBtZX4NAyDymZe8tuHZF2Df9uiUMwgCyIL8H/tyYQnNyF/LvZcm9uFgqLqwwgAvSDG2JOkAkDMKWOrwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZsRZjqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZsRZjqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CB3C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772836493;
	bh=hh54FgiPZQrEpI1+8HIsOca0O8GesESFk8Lz31dLorI=;
	h=To:Subject:From:Date:From;
	b=UZsRZjqSZxAH5DwONvVP/IoPkzcKkBQ7ZOcycKnJ/zrSAy/rZ1rPn7X/aTY00zhXB
	 KA0T1X/5p8/QM+vADnxeKqA0SZhqtv07cgVUTKtqvjSXbka38POmDp4RMBG4YsrCCD
	 C9dBaAJ2GMQXyLJsmZAMaJr+ryOyAeodCSY3s+V0eCcKC1ppZpc+2t1bvracZmlKYp
	 ZN8qqry89JOlyeU6KBtc56NoLEm0Cgw/kMw0VGRME2E90yq3DsmW2/R/cefiB6kKBA
	 YvFpyShZAjyjmnk0pAAKizN75Dq5abnUgqOJIbLg5TwtlE+4c+qPMFE6mEObLxEs9x
	 AbSV37ADlNDLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C98FCB602
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283649358.15512.15004832185983935332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb9f8c9ebea47751e07cd4b38f32ccf652e96d87522f2431e9153cb8d661fde
Date: Fri, 06 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772836493
