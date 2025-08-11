Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042F78248B
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754923194; cv=none; b=eM7xb9wvPfmjzaQk13S8UGVlSfCxiFTTPOo3vfTcxUx8FVZTkVIWjg8/lDmm39NGfi9gClLNKExSG/gNEMjTNyZb1Y0wX+UUoqmZ65WBTmyJCMHI5ZH5lE5UeoTmmRgppWKm6rxacKh8zQo/4+BQYCzNd5WxyF1rH9oU9NQt9EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754923194; c=relaxed/simple;
	bh=UPhV9xlGz9jUx+LgiIQMSCtFNl8nHMqYPFUbfGHAxjM=;
	h=To:Subject:From:Message-Id:Date; b=rF7pDZo+sdYYb60ODfNI4cLpUx96GfVKKOrvkxbWTb/pMhtgrwEZ1VDYt2rxgyO7dmcQc1w2Yc0IWDg8efQm1U+ez6Ki6kLS6Kz/m2t33KlNi2c5wsmvuutfe61IMtJDHcKHw5l+aEsm5zeTI5jQ/uLDZtV7q8mtk/YSjVvWC44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THusDHsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THusDHsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE83C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754923193;
	bh=UPhV9xlGz9jUx+LgiIQMSCtFNl8nHMqYPFUbfGHAxjM=;
	h=To:Subject:From:Date:From;
	b=THusDHslWPXZLfKIhemm1+15YdiONHL0QS4nONPpmEFrqyPZS3E8k6cogPk+o0Zrm
	 TRETnmN01Z4WMXB4y56vLVycapJGNGSfcvPurp7RvhHADFvGgtnGAB3PlsroktAECk
	 1x3GdF0cIJT1QcZ7l82xS0DiS+HxjMitpOXUnwMwNskTdYZyDZfPpAuLFQ3hxOVR6K
	 O15HtRP+jp7pviTBL8DyIR/dLqXryQNb0LBJ/PSTauhKyOVP9cMnlXYdQARfaB8bek
	 3ApITa+8QJJ4cDOKUsXduS4C4ul+ZItcn6/jVZPFpp+w3Z03npDhnhN5ykaUBL/s/C
	 wlg1saNoKWZsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6FC87FDB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492319357.16426.17886658361473435250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3df36d570d5b6ff56de39a9c14d5ff2c0ad617224e78c5b720b378f3d6b127
Date: Mon, 11 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754923193
