Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3134C35502B
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761049194; cv=none; b=aYmmLSKr2+G43lkSW3KbrYLzLSsjFwH1OP0xYpt8A7LnzL5fD5gOuOZOPyU+fMrtMVkVR/XG2Nua7yI6KgCpatDJiIZeUF+rrqADG1MMb7tX6oxkv6wQTzrUkxvFxxCDDb6yObE3gcXhfWhuDVeZd9ZCyjhtumfY89/+xFHh4Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761049194; c=relaxed/simple;
	bh=lsp+kCuX3/LJ5p0UU0BQf+SRJZK1nC5rn4xaRvdifQ8=;
	h=To:Subject:From:Message-Id:Date; b=tJSUJQHOD90TJXaLefMEW4YXF98Pw+7CcctDUwzkTpUe9K4yu91jogYcuTJ4Qe5qHzrUU+iVckDykrBTaVsVknHHIYXoapAwzgU7vihA3153ot5hRXUbRnMZHGChlQdhyceVEMKZ2V9cl1NBqGXItcz1aHiGeZKoghvPqe+oI3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEPrxezG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEPrxezG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AC4C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761049193;
	bh=lsp+kCuX3/LJ5p0UU0BQf+SRJZK1nC5rn4xaRvdifQ8=;
	h=To:Subject:From:Date:From;
	b=fEPrxezG30WmWNDQ3xp/WzPlNHacGN5A+Dti9wc59Vz6fRicXh/ukQSan8xFmd45D
	 UMAJDMUvHvUgnX5Vcziqd9p3/i33yGqTXuJaom/OpTA5ETrXxitbcz27kASB2Tn6DA
	 w7r6UWBEKRfjjgr79rZxHG7z0J18Hl/09HI7zOC7YZnvJeIuhC8VlwvdksN1jsvfrM
	 PVVcUP1KGdS6kt1tcZ4Vfh5PtUL39fdKlUpl+/xAbLqMMlRGUSoc7ghmaX9HqQAUYo
	 Sjw4/qrPURHmA1ZFv7cnsPXf+9TU5ydfFvbvv9aRTiDNX6Yxu17HZI6Jbiwx3AjI7t
	 YKdurDv0z664g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DB0CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104919359.31062.10065546152035701826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa25bcffa38a75b031f351c51037f6275d4a2941e5d5c22795897480b2d433f3
Date: Tue, 21 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761049193
