Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF67B3921DB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768313034; cv=none; b=id5Nz/mVfkEASI2vSdfTeUYpE46/xN7oMXxQy6a3vtKLGGKlbIlfYKjAgtBvtCxnHFL/phT+8iEK9EgaLyrmV5VN//kx7FrT+I9P5u+LWPIIHnnRVo4z9rYPDSIcTZzaWOzQ7tvVKrK/wEfSbV16HssrYAUKQDkKmCr3bXK1TF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768313034; c=relaxed/simple;
	bh=xXV0Wk7RXHlYb2/uHipUS1rKy51PZ9rBK8QWW15v1p8=;
	h=To:Subject:From:Message-Id:Date; b=dXfZM9BPC7DcNYM1Zahc8V41ZKf/W36Y4fqGU47idVyZNgmN4tJmUy+w2jZ1evOysAmYz9RuId90/LYGhzkENoh6wdQA2Eal2KrEjiOkuMHEs/iBSbjqoysDYnI1RkwF6FXyI+gI9TmKXLGMwd4NC1bqn8lQSQXTtOzBXhHZn2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOY6PIE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOY6PIE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A143EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768313033;
	bh=xXV0Wk7RXHlYb2/uHipUS1rKy51PZ9rBK8QWW15v1p8=;
	h=To:Subject:From:Date:From;
	b=BOY6PIE81P3In17Z0Vk4Ym2q8BG1VN+zs8y+K6EZd/4jQ2py+bEduTkkhHe2BOyrQ
	 bUqZ5gGO1Q1y49hnlX1BzRh1HMAAca5XwmRX1vCZJoLSyQ0DxcLlzRUa3SUsBet33W
	 wPA4v81oTBSgAHne6XcIUAQuwi5QMgzh0EVmI1ok9edt4hoNjMF5j84QybtEAxn+Yq
	 P7/q3iSePWib456f4XeGp3jaGkv255gmL/EiavjQ4r0j1XoyUUkWi/GorDwGMg5HCo
	 NdRCGpJZwIWS8HirfZ9ctDeXlpqdrbVuy9XfJbQAYOfV8dNenj8xhq/wwL7I0XejC1
	 Y6fBVYKn3Nykg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94011D2D0FD
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831303359.28213.6676907411206153793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f57319ee845eb79955e399e778b6402212813d6c4bf59dfdf558f5a959cf25
Date: Tue, 13 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768313033
